uint64_t sub_10015A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Strings(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB050(a1, v8, &qword_100383F78, &qword_1002D6B18);
  v13 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1000057C4(v8, &qword_100383F78, &qword_1002D6B18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_10015E628(v8, v12, type metadata accessor for Strings);
    sub_1000049D0(&qword_100387D10, type metadata accessor for Strings);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_10015E6F8(v12, type metadata accessor for Strings);
  }

  result = sub_10015E6F8(v8, type metadata accessor for ConfigurationValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10015A688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388320, type metadata accessor for ConfigurationValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015A728(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_100387D28, type metadata accessor for ConfigurationValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015A794()
{
  sub_1000049D0(&qword_100387D28, type metadata accessor for ConfigurationValue);

  return Message.hash(into:)();
}

uint64_t sub_10015A838()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D608);
  sub_10009597C(v0, qword_10039D608);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D7190;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "exclude";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "and";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "or";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "dsid";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 103;
  *v15 = "version";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015AB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 100)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 100)
      {
        sub_10015AC18(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 'e':
          sub_10015B1E0(v5, a1, a2, a3);
          break;
        case 'f':
          sub_10015B7A8(v5, a1, a2, a3);
          break;
        case 'g':
          sub_10015BD70(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_10015AC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Conditions(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = &v44 - v10;
  v11 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Condition.OneOf_Condition(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Condition(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_1000AB050(a1 + v32, v14, &qword_100387C48, &qword_1002DD000);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000057C4(v14, &qword_100387C48, &qword_1002DD000);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    sub_10015E628(v14, v22, type metadata accessor for Condition.OneOf_Condition);
    sub_10015E628(v22, v20, type metadata accessor for Condition.OneOf_Condition);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10015E6F8(v20, type metadata accessor for Condition.OneOf_Condition);
      v35 = v53;
    }

    else
    {
      sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
      v36 = v20;
      v37 = v48;
      sub_10015E628(v36, v48, type metadata accessor for Conditions);
      sub_10015E628(v37, v28, type metadata accessor for Conditions);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  sub_1000049D0(&qword_100387CF8, type metadata accessor for Conditions);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
  }

  sub_1000AB050(v28, v38, &qword_100387C38, &qword_1002DCFE8);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
    return sub_1000057C4(v38, &qword_100387C38, &qword_1002DCFE8);
  }

  else
  {
    v41 = v49;
    sub_10015E628(v38, v49, type metadata accessor for Conditions);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
    v42 = v47;
    v43 = v45;
    sub_1000057C4(v47 + v45, &qword_100387C48, &qword_1002DD000);
    sub_10015E628(v41, v42 + v43, type metadata accessor for Conditions);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10015B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Conditions(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Condition.OneOf_Condition(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Condition(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_1000AB050(a1 + v32, v14, &qword_100387C48, &qword_1002DD000);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000057C4(v14, &qword_100387C48, &qword_1002DD000);
    v34 = v15;
  }

  else
  {
    sub_10015E628(v14, v22, type metadata accessor for Condition.OneOf_Condition);
    sub_10015E628(v22, v20, type metadata accessor for Condition.OneOf_Condition);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
      v35 = v20;
      v36 = v49;
      sub_10015E628(v35, v49, type metadata accessor for Conditions);
      sub_10015E628(v36, v28, type metadata accessor for Conditions);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_10015E6F8(v20, type metadata accessor for Condition.OneOf_Condition);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_1000049D0(&qword_100387CF8, type metadata accessor for Conditions);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
  }

  sub_1000AB050(v28, v38, &qword_100387C38, &qword_1002DCFE8);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
    return sub_1000057C4(v38, &qword_100387C38, &qword_1002DCFE8);
  }

  else
  {
    v41 = v48;
    sub_10015E628(v38, v48, type metadata accessor for Conditions);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_100387C38, &qword_1002DCFE8);
    v42 = v47;
    v43 = v45;
    sub_1000057C4(v47 + v45, &qword_100387C48, &qword_1002DD000);
    sub_10015E628(v41, v42 + v43, type metadata accessor for Conditions);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10015B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for ConditionDSID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Condition.OneOf_Condition(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100095820(&qword_100388350, &qword_1002DDD70);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Condition(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_1000AB050(a1 + v32, v14, &qword_100387C48, &qword_1002DD000);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000057C4(v14, &qword_100387C48, &qword_1002DD000);
    v34 = v15;
  }

  else
  {
    sub_10015E628(v14, v22, type metadata accessor for Condition.OneOf_Condition);
    sub_10015E628(v22, v20, type metadata accessor for Condition.OneOf_Condition);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000057C4(v28, &qword_100388350, &qword_1002DDD70);
      v35 = v20;
      v36 = v49;
      sub_10015E628(v35, v49, type metadata accessor for ConditionDSID);
      sub_10015E628(v36, v28, type metadata accessor for ConditionDSID);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_10015E6F8(v20, type metadata accessor for Condition.OneOf_Condition);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_1000049D0(&qword_100387D50, type metadata accessor for ConditionDSID);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000057C4(v28, &qword_100388350, &qword_1002DDD70);
  }

  sub_1000AB050(v28, v38, &qword_100388350, &qword_1002DDD70);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_1000057C4(v28, &qword_100388350, &qword_1002DDD70);
    return sub_1000057C4(v38, &qword_100388350, &qword_1002DDD70);
  }

  else
  {
    v41 = v48;
    sub_10015E628(v38, v48, type metadata accessor for ConditionDSID);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_100388350, &qword_1002DDD70);
    v42 = v47;
    v43 = v45;
    sub_1000057C4(v47 + v45, &qword_100387C48, &qword_1002DD000);
    sub_10015E628(v41, v42 + v43, type metadata accessor for ConditionDSID);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10015BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for ConditionVersion(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v44 - v10;
  v11 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Condition.OneOf_Condition(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_100095820(&qword_100388358, &qword_1002DDD78);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Condition(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_1000AB050(a1 + v32, v14, &qword_100387C48, &qword_1002DD000);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1000057C4(v14, &qword_100387C48, &qword_1002DD000);
    v34 = v15;
  }

  else
  {
    sub_10015E628(v14, v22, type metadata accessor for Condition.OneOf_Condition);
    sub_10015E628(v22, v20, type metadata accessor for Condition.OneOf_Condition);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1000057C4(v28, &qword_100388358, &qword_1002DDD78);
      v35 = v20;
      v36 = v49;
      sub_10015E628(v35, v49, type metadata accessor for ConditionVersion);
      sub_10015E628(v36, v28, type metadata accessor for ConditionVersion);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_10015E6F8(v20, type metadata accessor for Condition.OneOf_Condition);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_1000049D0(&qword_100387D68, type metadata accessor for ConditionVersion);
  v39 = v52;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v39)
  {
    return sub_1000057C4(v28, &qword_100388358, &qword_1002DDD78);
  }

  sub_1000AB050(v28, v38, &qword_100388358, &qword_1002DDD78);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_1000057C4(v28, &qword_100388358, &qword_1002DDD78);
    return sub_1000057C4(v38, &qword_100388358, &qword_1002DDD78);
  }

  else
  {
    v41 = v48;
    sub_10015E628(v38, v48, type metadata accessor for ConditionVersion);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_100388358, &qword_1002DDD78);
    v42 = v47;
    v43 = v45;
    sub_1000057C4(v47 + v45, &qword_100387C48, &qword_1002DD000);
    sub_10015E628(v41, v42 + v43, type metadata accessor for ConditionVersion);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_10015C338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  if (*v3 == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v14 = type metadata accessor for Condition(0);
  sub_1000AB050(&v3[*(v14 + 20)], v12, &qword_100387C48, &qword_1002DD000);
  v15 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) == 1)
  {
    goto LABEL_13;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v17 = v5;
    if (EnumCaseMultiPayload == 2)
    {
      sub_10015C9D0(v3, a1, a2, a3);
    }

    else
    {
      sub_10015CC14(v3, a1, a2, a3);
    }
  }

  else
  {
    v17 = v5;
    if (EnumCaseMultiPayload)
    {
      sub_10015C78C(v3, a1, a2, a3);
    }

    else
    {
      sub_10015C54C(v3, a1, a2, a3);
    }
  }

  result = sub_10015E6F8(v12, type metadata accessor for Condition.OneOf_Condition);
  if (!v17)
  {
LABEL_13:
    v18 = &v3[*(v14 + 24)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10015C54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Conditions(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Condition(0);
  sub_1000AB050(a1 + *(v13 + 20), v8, &qword_100387C48, &qword_1002DD000);
  v14 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000057C4(v8, &qword_100387C48, &qword_1002DD000);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_10015E628(v8, v12, type metadata accessor for Conditions);
    sub_1000049D0(&qword_100387CF8, type metadata accessor for Conditions);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_10015E6F8(v12, type metadata accessor for Conditions);
  }

  result = sub_10015E6F8(v8, type metadata accessor for Condition.OneOf_Condition);
  __break(1u);
  return result;
}

uint64_t sub_10015C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Conditions(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Condition(0);
  sub_1000AB050(a1 + *(v13 + 20), v8, &qword_100387C48, &qword_1002DD000);
  v14 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000057C4(v8, &qword_100387C48, &qword_1002DD000);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10015E628(v8, v12, type metadata accessor for Conditions);
    sub_1000049D0(&qword_100387CF8, type metadata accessor for Conditions);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_10015E6F8(v12, type metadata accessor for Conditions);
  }

  result = sub_10015E6F8(v8, type metadata accessor for Condition.OneOf_Condition);
  __break(1u);
  return result;
}

uint64_t sub_10015C9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ConditionDSID(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Condition(0);
  sub_1000AB050(a1 + *(v13 + 20), v8, &qword_100387C48, &qword_1002DD000);
  v14 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000057C4(v8, &qword_100387C48, &qword_1002DD000);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10015E628(v8, v12, type metadata accessor for ConditionDSID);
    sub_1000049D0(&qword_100387D50, type metadata accessor for ConditionDSID);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_10015E6F8(v12, type metadata accessor for ConditionDSID);
  }

  result = sub_10015E6F8(v8, type metadata accessor for Condition.OneOf_Condition);
  __break(1u);
  return result;
}

uint64_t sub_10015CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ConditionVersion(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Condition(0);
  sub_1000AB050(a1 + *(v13 + 20), v8, &qword_100387C48, &qword_1002DD000);
  v14 = type metadata accessor for Condition.OneOf_Condition(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1000057C4(v8, &qword_100387C48, &qword_1002DD000);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_10015E628(v8, v12, type metadata accessor for ConditionVersion);
    sub_1000049D0(&qword_100387D68, type metadata accessor for ConditionVersion);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return sub_10015E6F8(v12, type metadata accessor for ConditionVersion);
  }

  result = sub_10015E6F8(v8, type metadata accessor for Condition.OneOf_Condition);
  __break(1u);
  return result;
}

uint64_t sub_10015CEA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Condition.OneOf_Condition(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return UnknownStorage.init()();
}

uint64_t sub_10015CF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388318, type metadata accessor for Condition);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015CFF4(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_100387C68, type metadata accessor for Condition);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D060()
{
  sub_1000049D0(&qword_100387C68, type metadata accessor for Condition);

  return Message.hash(into:)();
}

uint64_t sub_10015D10C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D620);
  sub_10009597C(v0, qword_10039D620);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mod";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "limit";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015D31C()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
    }
  }

  return result;
}

uint64_t sub_10015D39C()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for ConditionDSID(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10015D488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_10015D4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388310, type metadata accessor for ConditionDSID);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015D57C(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_100387D50, type metadata accessor for ConditionDSID);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D5E8()
{
  sub_1000049D0(&qword_100387D50, type metadata accessor for ConditionDSID);

  return Message.hash(into:)();
}

uint64_t sub_10015D664(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10015D73C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100098130(v0, qword_10039D638);
  sub_10009597C(v0, qword_10039D638);
  sub_100095820(&qword_100382D58, qword_1002D5B50);
  v1 = (sub_100095820(&qword_100382D60, &qword_1002D9450) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seed";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "major";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "minor";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10015D9D4()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        }
      }

      else if (result == 1)
      {
        sub_1001603DC();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10015DAC8()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1001603DC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
      {
        if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
        {
          v3 = v0 + *(type metadata accessor for ConditionVersion(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

Swift::Int sub_10015DC2C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000049D0(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10015DCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_10015DD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000049D0(&qword_100388308, type metadata accessor for ConditionVersion);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10015DDB4(uint64_t a1)
{
  v2 = sub_1000049D0(&qword_100387D68, type metadata accessor for ConditionVersion);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10015DE20()
{
  sub_1000049D0(&qword_100387D68, type metadata accessor for ConditionVersion);

  return Message.hash(into:)();
}

uint64_t sub_10015DE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Condition.OneOf_Condition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v46 - v10;
  v54 = sub_100095820(&qword_100388348, &qword_1002DDD68);
  v12 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v14 = &v46 - v13;
  v55 = type metadata accessor for Condition(0);
  v15 = *(*(v55 - 8) + 64);
  v16 = __chkstk_darwin(v55);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v21 = &v46 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_21;
  }

  if (!v22 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v51 = v14;
  v52 = &v46 - v20;
  v47 = v11;
  v53 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v49 = *(v19 + 72);
  v50 = v18;
  v27 = v55;
  while (1)
  {
    sub_10015E690(v24, v21, type metadata accessor for Condition);
    sub_10015E690(v25, v18, type metadata accessor for Condition);
    if (*v21 != *v18)
    {
      v42 = v18;
      goto LABEL_20;
    }

    v28 = *(v27 + 20);
    v29 = *(v54 + 48);
    v30 = &v21[v28];
    v31 = v18;
    v32 = v51;
    sub_1000AB050(v30, v51, &qword_100387C48, &qword_1002DD000);
    sub_1000AB050(&v31[v28], v32 + v29, &qword_100387C48, &qword_1002DD000);
    v33 = *v26;
    v34 = v53;
    if ((*v26)(v32, 1, v53) == 1)
    {
      if (v33(v32 + v29, 1, v34) == 1)
      {
        sub_1000057C4(v32, &qword_100387C48, &qword_1002DD000);
        v21 = v52;
        v27 = v55;
        goto LABEL_11;
      }

      sub_10015E6F8(v50, type metadata accessor for Condition);
      v44 = v52;
      v43 = type metadata accessor for Condition;
LABEL_18:
      sub_10015E6F8(v44, v43);
      sub_1000057C4(v32, &qword_100388348, &qword_1002DDD68);
      goto LABEL_21;
    }

    v35 = v47;
    sub_1000AB050(v32, v47, &qword_100387C48, &qword_1002DD000);
    if (v33(v32 + v29, 1, v34) == 1)
    {
      sub_10015E6F8(v50, type metadata accessor for Condition);
      sub_10015E6F8(v52, type metadata accessor for Condition);
      v43 = type metadata accessor for Condition.OneOf_Condition;
      v44 = v35;
      goto LABEL_18;
    }

    v36 = v26;
    v37 = v48;
    sub_10015E628(v32 + v29, v48, type metadata accessor for Condition.OneOf_Condition);
    v38 = sub_10015F64C(v35, v37);
    v39 = v37;
    v26 = v36;
    sub_10015E6F8(v39, type metadata accessor for Condition.OneOf_Condition);
    sub_10015E6F8(v35, type metadata accessor for Condition.OneOf_Condition);
    sub_1000057C4(v32, &qword_100387C48, &qword_1002DD000);
    v27 = v55;
    v21 = v52;
    if ((v38 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v40 = *(v27 + 24);
    type metadata accessor for UnknownStorage();
    sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
    v18 = v50;
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10015E6F8(v18, type metadata accessor for Condition);
    sub_10015E6F8(v21, type metadata accessor for Condition);
    if (v41)
    {
      v25 += v49;
      v24 += v49;
      if (--v22)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  v42 = v50;
LABEL_20:
  sub_10015E6F8(v42, type metadata accessor for Condition);
  sub_10015E6F8(v21, type metadata accessor for Condition);
LABEL_21:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_10015E45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DewValue(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_10015E690(v14, v11, type metadata accessor for DewValue);
        sub_10015E690(v15, v8, type metadata accessor for DewValue);
        v17 = sub_10015EE1C(v11, v8);
        sub_10015E6F8(v8, type metadata accessor for DewValue);
        sub_10015E6F8(v11, type metadata accessor for DewValue);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10015E628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015E690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015E6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10015E758(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Condition.OneOf_Condition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095820(&qword_100387C48, &qword_1002DD000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  v13 = sub_100095820(&qword_100388348, &qword_1002DDD68);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for Condition(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_1000AB050(&v18[v20], v16, &qword_100387C48, &qword_1002DD000);
  sub_1000AB050(&v19[v20], &v16[v21], &qword_100387C48, &qword_1002DD000);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_1000057C4(v16, &qword_100387C48, &qword_1002DD000);
LABEL_11:
      v26 = *(v27[0] + 24);
      type metadata accessor for UnknownStorage();
      sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_1000AB050(v16, v12, &qword_100387C48, &qword_1002DD000);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_10015E6F8(v12, type metadata accessor for Condition.OneOf_Condition);
LABEL_7:
    sub_1000057C4(v16, &qword_100388348, &qword_1002DDD68);
    goto LABEL_8;
  }

  sub_10015E628(&v16[v21], v8, type metadata accessor for Condition.OneOf_Condition);
  v25 = sub_10015F64C(v12, v8);
  sub_10015E6F8(v8, type metadata accessor for Condition.OneOf_Condition);
  sub_10015E6F8(v12, type metadata accessor for Condition.OneOf_Condition);
  sub_1000057C4(v16, &qword_100387C48, &qword_1002DD000);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_10015EAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100095820(&qword_100388360, &qword_1002DDD80);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1000AB050(a1, &v24 - v16, &qword_100383F78, &qword_1002D6B18);
  sub_1000AB050(a2, &v17[v18], &qword_100383F78, &qword_1002D6B18);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1000057C4(v17, &qword_100383F78, &qword_1002D6B18);
LABEL_9:
      v22 = *(type metadata accessor for ConfigurationValue(0) + 20);
      type metadata accessor for UnknownStorage();
      sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1000AB050(v17, v12, &qword_100383F78, &qword_1002D6B18);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_10015E6F8(v12, type metadata accessor for ConfigurationValue.OneOf_Value);
LABEL_6:
    sub_1000057C4(v17, &qword_100388360, &qword_1002DDD80);
    goto LABEL_7;
  }

  sub_10015E628(&v17[v18], v8, type metadata accessor for ConfigurationValue.OneOf_Value);
  v21 = sub_10015FE3C(v12, v8);
  sub_10015E6F8(v8, type metadata accessor for ConfigurationValue.OneOf_Value);
  sub_10015E6F8(v12, type metadata accessor for ConfigurationValue.OneOf_Value);
  sub_1000057C4(v17, &qword_100383F78, &qword_1002D6B18);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10015EE1C(void *a1, void *a2)
{
  v4 = type metadata accessor for ConfigurationValue(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100387C40, &unk_1002DCFF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v53 = &v49 - v10;
  v54 = sub_100095820(&qword_100388370, &qword_1002DDD90);
  v11 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Conditions(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = (&v49 - v21);
  v23 = sub_100095820(&qword_100388378, &qword_1002DDD98);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v49 - v25;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2])
  {
    goto LABEL_16;
  }

  v51 = v13;
  v49 = v7;
  v27 = type metadata accessor for DewValue(0);
  v52 = a2;
  v50 = v27;
  v28 = *(v27 + 28);
  v29 = *(v23 + 48);
  sub_1000AB050(a1 + v28, v26, &qword_100387C38, &qword_1002DCFE8);
  sub_1000AB050(v52 + v28, &v26[v29], &qword_100387C38, &qword_1002DCFE8);
  v30 = *(v15 + 48);
  if (v30(v26, 1, v14) == 1)
  {
    if (v30(&v26[v29], 1, v14) == 1)
    {
      sub_1000057C4(v26, &qword_100387C38, &qword_1002DCFE8);
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  sub_1000AB050(v26, v22, &qword_100387C38, &qword_1002DCFE8);
  if (v30(&v26[v29], 1, v14) == 1)
  {
    sub_10015E6F8(v22, type metadata accessor for Conditions);
LABEL_13:
    v37 = &qword_100388378;
    v38 = &qword_1002DDD98;
LABEL_14:
    v39 = v26;
LABEL_15:
    sub_1000057C4(v39, v37, v38);
    goto LABEL_16;
  }

  sub_10015E628(&v26[v29], v18, type metadata accessor for Conditions);
  if ((sub_10015DE9C(*v22, *v18) & 1) == 0)
  {
    sub_10015E6F8(v18, type metadata accessor for Conditions);
    sub_10015E6F8(v22, type metadata accessor for Conditions);
    v37 = &qword_100387C38;
    v38 = &qword_1002DCFE8;
    goto LABEL_14;
  }

  v42 = *(v14 + 20);
  type metadata accessor for UnknownStorage();
  sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10015E6F8(v18, type metadata accessor for Conditions);
  sub_10015E6F8(v22, type metadata accessor for Conditions);
  sub_1000057C4(v26, &qword_100387C38, &qword_1002DCFE8);
  if ((v43 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v32 = v50;
  v31 = v51;
  v33 = *(v50 + 32);
  v34 = *(v54 + 48);
  sub_1000AB050(a1 + v33, v51, &qword_100387C40, &unk_1002DCFF0);
  sub_1000AB050(v52 + v33, v31 + v34, &qword_100387C40, &unk_1002DCFF0);
  v35 = v56;
  v36 = *(v55 + 48);
  if (v36(v31, 1, v56) == 1)
  {
    if (v36(v31 + v34, 1, v35) == 1)
    {
      sub_1000057C4(v31, &qword_100387C40, &unk_1002DCFF0);
LABEL_26:
      v48 = *(v32 + 24);
      type metadata accessor for UnknownStorage();
      sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v40 & 1;
    }

    goto LABEL_23;
  }

  v44 = v53;
  sub_1000AB050(v31, v53, &qword_100387C40, &unk_1002DCFF0);
  if (v36(v31 + v34, 1, v35) == 1)
  {
    sub_10015E6F8(v44, type metadata accessor for ConfigurationValue);
LABEL_23:
    v37 = &qword_100388370;
    v38 = &qword_1002DDD90;
    v39 = v31;
    goto LABEL_15;
  }

  v45 = v31 + v34;
  v46 = v49;
  sub_10015E628(v45, v49, type metadata accessor for ConfigurationValue);
  v47 = sub_10015EAD8(v44, v46);
  sub_10015E6F8(v46, type metadata accessor for ConfigurationValue);
  sub_10015E6F8(v44, type metadata accessor for ConfigurationValue);
  sub_1000057C4(v31, &qword_100387C40, &unk_1002DCFF0);
  if (v47)
  {
    goto LABEL_26;
  }

LABEL_16:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_10015F518(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v2 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 9) == *(a2 + 9) && a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24))
  {
    v4 = *(type metadata accessor for ConditionVersion(0) + 32);
    type metadata accessor for UnknownStorage();
    sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10015F64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionVersion(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ConditionDSID(0);
  v7 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v60 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for Conditions(0);
  v9 = *(*(v57 - 8) + 64);
  v10 = __chkstk_darwin(v57);
  v59 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v56 = (&v55 - v12);
  v13 = type metadata accessor for Condition.OneOf_Condition(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v20 = (&v55 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = (&v55 - v22);
  __chkstk_darwin(v21);
  v25 = (&v55 - v24);
  v26 = sub_100095820(&qword_100388380, &qword_1002DDDA0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v55 - v29;
  v31 = *(v28 + 56);
  sub_10015E690(a1, &v55 - v29, type metadata accessor for Condition.OneOf_Condition);
  sub_10015E690(a2, &v30[v31], type metadata accessor for Condition.OneOf_Condition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10015E690(v30, v25, type metadata accessor for Condition.OneOf_Condition);
      if (swift_getEnumCaseMultiPayload())
      {
        v33 = type metadata accessor for Conditions;
        v34 = v25;
LABEL_20:
        sub_10015E6F8(v34, v33);
        sub_1000057C4(v30, &qword_100388380, &qword_1002DDDA0);
LABEL_32:
        v47 = 0;
        return v47 & 1;
      }

      v48 = &v30[v31];
      v49 = v56;
      sub_10015E628(v48, v56, type metadata accessor for Conditions);
      if (sub_10015DE9C(*v25, *v49))
      {
        v50 = *(v57 + 20);
        type metadata accessor for UnknownStorage();
        sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
        v51 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10015E6F8(v49, type metadata accessor for Conditions);
        if (v51)
        {
          v39 = type metadata accessor for Conditions;
          v40 = v25;
          goto LABEL_24;
        }
      }

      else
      {
        sub_10015E6F8(v49, type metadata accessor for Conditions);
      }

      v52 = type metadata accessor for Conditions;
      v53 = v25;
LABEL_31:
      sub_10015E6F8(v53, v52);
      sub_10015E6F8(v30, type metadata accessor for Condition.OneOf_Condition);
      goto LABEL_32;
    }

    sub_10015E690(v30, v23, type metadata accessor for Condition.OneOf_Condition);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = type metadata accessor for Conditions;
      v34 = v23;
      goto LABEL_20;
    }

    v41 = &v30[v31];
    v42 = v59;
    sub_10015E628(v41, v59, type metadata accessor for Conditions);
    if (sub_10015DE9C(*v23, *v42))
    {
      v43 = *(v57 + 20);
      type metadata accessor for UnknownStorage();
      sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10015E6F8(v42, type metadata accessor for Conditions);
      if (v44)
      {
        v39 = type metadata accessor for Conditions;
        v40 = v23;
        goto LABEL_24;
      }
    }

    else
    {
      sub_10015E6F8(v42, type metadata accessor for Conditions);
    }

    v52 = type metadata accessor for Conditions;
    v53 = v23;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10015E690(v30, v20, type metadata accessor for Condition.OneOf_Condition);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v33 = type metadata accessor for ConditionDSID;
      v34 = v20;
      goto LABEL_20;
    }

    v35 = &v30[v31];
    v36 = v60;
    sub_10015E628(v35, v60, type metadata accessor for ConditionDSID);
    if (*v20 == *v36 && v20[1] == v36[1])
    {
      v37 = *(v55 + 24);
      type metadata accessor for UnknownStorage();
      sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10015E6F8(v36, type metadata accessor for ConditionDSID);
      if (v38)
      {
        v39 = type metadata accessor for ConditionDSID;
        v40 = v20;
LABEL_24:
        sub_10015E6F8(v40, v39);
        sub_10015E6F8(v30, type metadata accessor for Condition.OneOf_Condition);
        v47 = 1;
        return v47 & 1;
      }
    }

    else
    {
      sub_10015E6F8(v36, type metadata accessor for ConditionDSID);
    }

    v52 = type metadata accessor for ConditionDSID;
    v53 = v20;
    goto LABEL_31;
  }

  sub_10015E690(v30, v17, type metadata accessor for Condition.OneOf_Condition);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v33 = type metadata accessor for ConditionVersion;
    v34 = v17;
    goto LABEL_20;
  }

  v45 = &v30[v31];
  v46 = v58;
  sub_10015E628(v45, v58, type metadata accessor for ConditionVersion);
  v47 = sub_10015F518(v17, v46);
  sub_10015E6F8(v46, type metadata accessor for ConditionVersion);
  sub_10015E6F8(v17, type metadata accessor for ConditionVersion);
  sub_10015E6F8(v30, type metadata accessor for Condition.OneOf_Condition);
  return v47 & 1;
}

uint64_t sub_10015FE3C(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for Strings(0);
  v4 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v43 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = (&v41 - v11);
  v13 = __chkstk_darwin(v10);
  v15 = &v41 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = (&v41 - v17);
  __chkstk_darwin(v16);
  v20 = (&v41 - v19);
  v21 = sub_100095820(&qword_100388388, &qword_1002DDDA8);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v41 - v24;
  v26 = (&v41 + *(v23 + 56) - v24);
  sub_10015E690(a1, &v41 - v24, type metadata accessor for ConfigurationValue.OneOf_Value);
  sub_10015E690(a2, v26, type metadata accessor for ConfigurationValue.OneOf_Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10015E690(v25, v20, type metadata accessor for ConfigurationValue.OneOf_Value);
      if (!swift_getEnumCaseMultiPayload())
      {
        v28 = *v20 == *v26;
        goto LABEL_9;
      }

      goto LABEL_28;
    }

    sub_10015E690(v25, v18, type metadata accessor for ConfigurationValue.OneOf_Value);
    v35 = *v18;
    v34 = v18[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_28;
    }

    if (v35 == *v26 && v34 == v26[1])
    {
      v40 = v26[1];

      goto LABEL_34;
    }

    v37 = v26[1];
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_34;
    }

LABEL_32:
    sub_10015E6F8(v25, type metadata accessor for ConfigurationValue.OneOf_Value);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10015E690(v25, v15, type metadata accessor for ConfigurationValue.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = *v15 ^ *v26;
      sub_10015E6F8(v25, type metadata accessor for ConfigurationValue.OneOf_Value);
      v29 = v30 ^ 1;
      return v29 & 1;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v31 = v44;
    sub_10015E690(v25, v44, type metadata accessor for ConfigurationValue.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_10015E6F8(v31, type metadata accessor for Strings);
      goto LABEL_28;
    }

    v32 = v43;
    sub_10015E628(v26, v43, type metadata accessor for Strings);
    if (sub_10012CFCC(*v31, *v32))
    {
      v33 = *(v42 + 20);
      type metadata accessor for UnknownStorage();
      sub_1000049D0(&qword_1003825C8, &type metadata accessor for UnknownStorage);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        sub_10015E6F8(v32, type metadata accessor for Strings);
        sub_10015E6F8(v31, type metadata accessor for Strings);
LABEL_34:
        sub_10015E6F8(v25, type metadata accessor for ConfigurationValue.OneOf_Value);
        v29 = 1;
        return v29 & 1;
      }
    }

    sub_10015E6F8(v32, type metadata accessor for Strings);
    sub_10015E6F8(v31, type metadata accessor for Strings);
    goto LABEL_32;
  }

  sub_10015E690(v25, v12, type metadata accessor for ConfigurationValue.OneOf_Value);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_28:
    sub_1000057C4(v25, &qword_100388388, &qword_1002DDDA8);
LABEL_29:
    v29 = 0;
    return v29 & 1;
  }

  v28 = *v12 == *v26;
LABEL_9:
  v29 = v28;
  sub_10015E6F8(v25, type metadata accessor for ConfigurationValue.OneOf_Value);
  return v29 & 1;
}

unint64_t sub_1001603DC()
{
  result = qword_100387C98;
  if (!qword_100387C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387C98);
  }

  return result;
}

unint64_t sub_100160434()
{
  result = qword_100387CA8;
  if (!qword_100387CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387CA8);
  }

  return result;
}

unint64_t sub_10016048C()
{
  result = qword_100387CB0;
  if (!qword_100387CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387CB0);
  }

  return result;
}

unint64_t sub_1001604E4()
{
  result = qword_100387CB8;
  if (!qword_100387CB8)
  {
    sub_1000967DC(&qword_100387CC0, qword_1002DD050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387CB8);
  }

  return result;
}

unint64_t sub_10016054C()
{
  result = qword_100387CC8;
  if (!qword_100387CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100387CC8);
  }

  return result;
}

uint64_t sub_100160E50(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100160F10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10016100C()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001610B0()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100161150()
{
  v0 = ccrng();
  sub_100165DE8(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_100165DE8(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_1001611C0(uint64_t a1, unsigned int a2)
{
  v4 = sub_100166D44();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_100165DE8(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t sub_10016121C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v47 = a1;
  v48 = a3;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  __chkstk_darwin(v14);
  v49 = &v40 - v16;
  bzero(&v40 - v16, v16);
  v17 = v14[1] + 15;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  bzero(&v40 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v42 = &v40;
  v43 = a8;
  v44 = a6;
  v41 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < a6 + 8)
    {
      sub_10024BE50(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v43 >= v44 + 8)
  {
LABEL_15:
    v23 = v44 >> 3;
    if (v44 >> 3 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = 8;
    v26 = v24;
    do
    {
      v27 = *a5++;
      *(__s + v25) = v27;
      v25 += 16;
      --v26;
    }

    while (v26);
    v28 = 0;
    *&__s[0] = v48;
    v29 = 1;
    v45 = v23;
    v46 = v24;
    do
    {
      v47 = v29;
      v48 = v28;
      v30 = __s;
      v31 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_10039D660, v30, v30, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = v14[1];
          cccbc_clear_iv();
          sub_100166140(v14, v49, v20, 0x10uLL);
        }

        v33 = *v30;
        v30 += 2;
        *&__s[v31 % v23] = v33 ^ bswap64(v29++);
        ++v31;
        --v24;
      }

      while (v24);
      v28 = v48 + 1;
      v24 = v46;
      v29 = v47 + v45;
    }

    while (v48 != 5);
    v34 = v41;
    *v41 = *&__s[0];
    v35 = v34 + 1;
    v36 = __s + 1;
    do
    {
      v37 = *v36;
      v36 += 2;
      *v35++ = v37;
      --v24;
    }

    while (v24);
    v21 = 0;
    *v43 = (v44 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v21;
    }

LABEL_32:
    v38 = *v14;
    cc_clear();
    return v21;
  }

LABEL_6:
  sub_10024BE50(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10016151C(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_10016121C(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100165DE8(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_100161588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v44 = a3;
  v50 = a1;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  __chkstk_darwin(v14);
  v51 = &v42 - v16;
  bzero(&v42 - v16, v16);
  v17 = v14[1] + 15;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  bzero(&v42 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v49 = a6;
  v22 = a6 >> 3;
  if (v22 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v45 = &v42;
  v46 = a8;
  v43 = a7;
  if (!a4)
  {
    v23 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v23 || !a8 || *a8 < v49 - 8)
    {
      sub_10024BE50(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v46 >= v49 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v24 = v22 - 1;
    if (v22 != 1)
    {
      v25 = __s + 1;
      v26 = a5 + 1;
      v27 = v22 - 1;
      do
      {
        v28 = *v26++;
        *v25 = v28;
        v25 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = 6 * v22 - 6;
    v48 = 1 - v22;
    v30 = 5;
    v47 = &__s[v22 - 2];
    do
    {
      LODWORD(v50) = v30;
      if (v49 >= 0x10)
      {
        v31 = v47;
        v32 = v22 - 1;
        v33 = v29;
        do
        {
          *v31 = *&__s[v32 % v24] ^ bswap64(v33);
          if (a4)
          {
            if ((a4(0, &unk_10039D660, v31, v31, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v34 = v14[1];
            cccbc_clear_iv();
            sub_100166140(v14, v51, v20, 0x10uLL);
          }

          --v33;
          v31 -= 2;
          v35 = __OFSUB__(v32--, 1);
        }

        while (!((v32 < 0) ^ v35 | (v32 == 0)));
      }

      v30 = v50 - 1;
      v29 += v48;
    }

    while (v50);
    if (*&__s[0] == v44)
    {
      v36 = v43;
      if (v22 != 1)
      {
        v37 = __s + 1;
        v38 = v22 - 1;
        do
        {
          v39 = *v37;
          v37 += 2;
          *v36++ = v39;
          --v38;
        }

        while (v38);
      }

      v21 = 0;
      *v46 = 8 * v24;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v21;
    }

LABEL_34:
    v40 = *v14;
    cc_clear();
    return v21;
  }

LABEL_6:
  sub_10024BE50(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1001618D0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_100161588(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100165DE8(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_10016193C(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_100161950(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_100161964(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t sub_100161980(unsigned int a1, const void *a2)
{
  input = a1;
  v3 = sub_100007A3C();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x6Cu, &input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  sub_10024D964();
  return 3758097084;
}

char *sub_100161A18(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return sub_10024D9CC(result, a2, a3);
    }
  }

  return result;
}

char *sub_100161A98(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    bzero(v8, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v8);
    if (result)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 0x40000000;
      v6[2] = sub_100161BB0;
      v6[3] = &unk_100324B10;
      v7 = a2;
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = sub_10024C298;
      v4[3] = &unk_100324B30;
      v5 = a2;
      return sub_100161A18(v8, v6, v4);
    }
  }

  return result;
}

uint64_t sub_100161BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10024C23C(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || v4 == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), v4);
  }

  return 1;
}

uint64_t sub_100161C0C()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((byte_10039C588 & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      byte_10039C589 = 1;
    }

    byte_10039C588 = 1;
  }

  v4 = byte_10039C589;
  fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, byte_10039C589, "");
  return v3 | v4;
}

void sub_100161D90(const char *a1, uint64_t a2, uint64_t a3)
{
  bzero(__str, 0x400uLL);
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    v6 = (a2 + 16);
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 2));
      if (stat(__str, &v7))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        sub_10024C23C(__str);
        *v6;
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 6;
      --a3;
    }

    while (a3);
  }
}

uint64_t sub_100161ED8()
{
  puts("shared allow list:");
  v0 = &byte_1003236D0;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_100323D90;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void sub_100161F9C(const char *a1, char a2)
{
  if (a1)
  {
    bzero(&v13, 0x878uLL);
    bzero(v12, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v12))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = sub_10024CE44;
      v11[3] = &unk_100324B90;
      v11[4] = v4;
      sub_100161A18(v12, &stru_100324B70, v11);
      if (!statfs(v12, &v13))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", off_100388390[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }
}

uint64_t sub_100162224(unsigned int a1, uint64_t a2)
{
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  v2 = sub_100007A3C();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  sub_10024DA88();
  return 3758097084;
}

uint64_t sub_1001622C0()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_10024DAF0();
  return 3758097084;
}

uint64_t sub_100162318(unsigned int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x86u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_10024DB58();
    return 3758097084;
  }
}

uint64_t sub_1001623B0()
{
  if (qword_10039C590 != -1)
  {
    sub_100007A28();
  }

  dispatch_sync(qword_10039C598, &stru_100324C10);
  return dword_10039C584;
}

void sub_1001623F8(id a1)
{
  if (!dword_10039C584)
  {
    dword_10039C584 = sub_100007C10("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t sub_100162438(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100167D20(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  return v11;
}

uint64_t sub_10016256C(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100167D20(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  return v9;
}

uint64_t sub_100162630(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_10016265C(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t sub_1001626AC(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_100162750(uint64_t *a1)
{
  v2 = a1[10];
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  v3 = *a1;
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_1001627D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_100162800(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return sub_10024E198(a1, 1, &v4);
  }

  *a2 = 0;
  result = sub_10024E198(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_10016285C()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100255C34();
  return 3758097084;
}

uint64_t sub_1001628B4(int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x24u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100255C9C();
    return 3758097084;
  }
}

uint64_t sub_10016294C(int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x33u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100255D04();
    return 3758097084;
  }
}

uint64_t sub_1001629E4(int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x35u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100255D6C();
    return 3758097084;
  }
}

uint64_t sub_100162AA0()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100255DD4();
  return 3758097084;
}

uint64_t sub_100162B04(int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 4u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100255E3C();
    return 3758097084;
  }
}

uint64_t sub_100162B9C(int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x37u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100255EA4();
    return 3758097084;
  }
}

uint64_t sub_100162C34(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  v22 = sub_100007A3C();
  if (v22)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(v22, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13)
    {
      if (!result)
      {
        *a13 = output;
      }
    }
  }

  else
  {
    sub_100255F0C();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100162E54(int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0xDu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100255F74();
    return 3758097084;
  }
}

uint64_t sub_100162EEC(int a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = sub_100007A3C();
  if (v8)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v8, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100255FDC();
    return 3758097084;
  }
}

uint64_t sub_100162FB4(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  v10 = sub_100007A3C();
  if (v10)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    return IOConnectCallMethod(v10, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100256044();
    return 3758097084;
  }
}

uint64_t sub_1001630E4(_OWORD *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  memset(&v12[16], 0, 112);
  *v12 = 0u;
  v6 = a1[1];
  *&v12[4] = *a1;
  *&v12[20] = v6;
  v7 = a1[3];
  *&v12[36] = a1[2];
  v13 = 0;
  *&v12[52] = v7;
  v10 = *a5;
  __s = 1;
  v8 = sub_100257924(&__s, 0, 0, a2, a3, a4, &v10);
  *a5 = v10;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  return sub_100165DCC(v8);
}

void sub_1001631D8(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = sub_100257F2C();
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = sub_1002581A8();
      v10 = &kCFBooleanTrue;
      if (!v9)
      {
        v10 = &kCFBooleanFalse;
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(kCFAllocatorDefault, v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t sub_100163338(int a1, unsigned int a2, uint64_t a3)
{
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  v3 = sub_100007A3C();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1002560AC();
  return 3758097084;
}

uint64_t sub_1001633CC(int a1, unsigned int a2)
{
  input[0] = a2;
  input[1] = a1;
  v2 = sub_100007A3C();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256114();
  return 3758097084;
}

uint64_t sub_10016345C(int a1, unsigned int a2)
{
  v4 = sub_100007A3C();
  if (v4)
  {
    input[0] = a2;
    input[1] = a1;
    return IOConnectCallMethod(v4, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_10025617C();
    return 3758097084;
  }
}

uint64_t sub_1001634FC(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x91u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1002561E4();
  return 3758097084;
}

uint64_t sub_100163588(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x65u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_10025624C();
  return 3758097084;
}

uint64_t sub_10016361C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v22 = 0;
  v21 = 0;
  v11 = sub_100007A3C();
  if (v11)
  {
    v17 = v11;
    sub_100167D20(&v22, &v21, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v22;
    input[2] = v21;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v22;
  }

  else
  {
    sub_1002562B4();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  return v18;
}

uint64_t sub_100163748(int a1, unsigned int a2, _DWORD *a3)
{
  v6 = sub_100007A3C();
  if (v6)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(v6, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3)
    {
      if (!result)
      {
        *a3 = output;
      }
    }
  }

  else
  {
    sub_10025631C();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100163810(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return sub_100251854(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_10016388C(mach_port_t a1, uintptr_t a2)
{
  v4 = sub_100007A3C();
  if (v4)
  {

    return IOConnectSetNotificationPort(v4, 0, a1, a2);
  }

  else
  {
    sub_100256384();
    return 3758097084;
  }
}

uint64_t sub_100163904(int a1)
{
  v2 = sub_100007A3C();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x16u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1002563EC();
    return 3758097084;
  }
}

uint64_t sub_10016399C(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA2u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256454();
  return 3758097084;
}

uint64_t sub_100163A34(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100007A3C();
  if (v5)
  {
    return IOConnectCallMethod(v5, 0x3Au, &input, 1u, a2, a3, 0, 0, 0, 0);
  }

  sub_1002564BC();
  return 3758097084;
}

uint64_t sub_100163AD0(int a1, int a2)
{
  input = a1;
  v3 = sub_100007A3C();
  if (v3)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    return IOConnectCallMethod(v3, v4, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100256524();
    return 3758097084;
  }
}

uint64_t sub_100163B74(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Du, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_10025658C();
  return 3758097084;
}

uint64_t sub_100163C00(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100007A3C();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1002565F4();
  return 3758097084;
}

uint64_t sub_100163C94(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100007A3C();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_10025665C();
  return 3758097084;
}

uint64_t sub_100163D2C(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return sub_100163C94(a2, a3, a4);
  }

  else
  {
    return sub_100163C00(a2, a3, a4);
  }
}

uint64_t sub_100163D50()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1002566C4();
  return 3758097084;
}

uint64_t sub_100163DA8(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  v12 = sub_100007A3C();
  if (v12)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v12, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    sub_10025672C();
    return 3758097084;
  }
}

uint64_t sub_100163E70(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x3Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256794();
  return 3758097084;
}

uint64_t sub_100163EFC(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x47u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1002567FC();
  return 3758097084;
}

uint64_t sub_100163F88(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x49u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256864();
  return 3758097084;
}

uint64_t sub_10016401C(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v5 = sub_100007A3C();
  if (v5)
  {
    return IOConnectCallMethod(v5, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_1002568CC();
  return 3758097084;
}

uint64_t sub_1001640C0(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100007A3C();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256934();
  return 3758097084;
}

uint64_t sub_100164150(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100007A3C();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_10025699C();
  return 3758097084;
}

uint64_t sub_1001641E4(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return sub_100164150(a2, a3, a4);
  }

  else
  {
    return sub_1001640C0(a2, a3, a4);
  }
}

uint64_t sub_100164208(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  v4 = sub_100007A3C();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256A04();
  return 3758097084;
}

uint64_t sub_1001642D4(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100007A3C();
  if (v5)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    return IOConnectCallMethod(v5, 0x58u, &input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    sub_100256A6C();
    return 3758097084;
  }
}

uint64_t sub_100164374(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Bu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256AD4();
  return 3758097084;
}

uint64_t sub_100164400(unsigned int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Eu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256B3C();
  return 3758097084;
}

uint64_t sub_10016448C(BOOL *a1)
{
  output = 0;
  outputCnt = 1;
  v2 = sub_100007A3C();
  if (v2)
  {
    result = IOConnectCallMethod(v2, 0x6Bu, 0, 0, 0, 0, &output, &outputCnt, 0, 0);
    if (a1)
    {
      if (!result)
      {
        *a1 = output != 0;
      }
    }
  }

  else
  {
    sub_100256BA4();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100164540()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100256C0C();
  return 3758097084;
}

uint64_t sub_100164598(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA0u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256C74();
  return 3758097084;
}

uint64_t sub_10016481C(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  sub_10024CA34();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t sub_100164898()
{
  sub_10024CA34();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t sub_1001648F8()
{
  sub_10024CA34();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t sub_100164998(unsigned int a1)
{
  input[0] = 0;
  input[1] = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256CDC();
  return 3758097084;
}

uint64_t sub_100164A24(int a1)
{
  input[0] = 1;
  input[1] = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256D44();
  return 3758097084;
}

uint64_t sub_100164AB4()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100256DAC();
  return 3758097084;
}

uint64_t sub_100164B0C()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100256E14();
  return 3758097084;
}

uint64_t sub_100164B64(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x6Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256E7C();
  return 3758097084;
}

uint64_t sub_100164BF0(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x9Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100256EE4();
  return 3758097084;
}

uint64_t sub_100164CA0()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100256F4C();
  return 3758097084;
}

uint64_t sub_100164CF8(const void *a1, size_t a2)
{
  v4 = sub_100007A3C();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  sub_100256FB4();
  return 3758097084;
}

uint64_t sub_100164D60()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_10025701C();
  return 3758097084;
}

uint64_t sub_100164DB8(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v3 = sub_100007A3C();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_100257084();
  return 3758097084;
}

uint64_t sub_100164E48(int a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1002570EC();
  return 3758097084;
}

uint64_t sub_100164ED4()
{
  v0 = sub_100007A3C();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100257154();
  return 3758097084;
}

uint64_t sub_100164F2C(uint64_t a1)
{
  input = a1;
  v1 = sub_100007A3C();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x97u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1002571BC();
  return 3758097084;
}

uint64_t sub_100164FD4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_100165054(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_100165080(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_1001650A0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_1001650FC(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void sub_10016514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

uint64_t sub_10016516C(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_100165194(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_1001651B8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t sub_100165298(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t sub_10016538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *sub_1001653D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(a1, &__src, __n);
}

void sub_1001653EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  bzero(va, 0x1000uLL);
}

const char *sub_100165450(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&byte_10039C5A0, 0x20uLL, __format, va);
  }

  byte_10039C5A0 = 0;
  return __format;
}

uint64_t sub_1001654A4()
{
  ccsha256_di();
  ccdigest();
  return 0;
}

unint64_t sub_100165518(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t sub_100165564(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t sub_1001655A4()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t sub_1001655F8()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *sub_10016565C(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    sub_10025757C();
    return 0;
  }

  return v5;
}

uint64_t sub_1001656D8(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t sub_1001656F4(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t sub_100165760(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t sub_1001657F0(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t sub_10016583C(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t sub_10016596C(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void sub_10016598C(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL sub_100165A10(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL sub_100165A54(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *sub_100165A80(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t sub_100165AC8(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t sub_100165B18(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = &__stdoutp;
  if (a3 >= 0x41)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 844, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 854, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *sub_100165D08(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_10039C5C0;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_10039C5C0[2 * v2] = 0;
  return byte_10039C5C0;
}

char *sub_100165D9C(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100165DCC(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_1002DEDE0[(result + 38)];
  }

  return result;
}

uint64_t sub_100165DE8(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1134, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t sub_100165E60(__int128 *a1, __int128 *a2)
{
  memset(v15, 0, sizeof(v15));
  sub_100166DFC(v15, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  sub_100165DE8(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v9 = 0u;
  v10 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v15, 0x20uLL, 0, 0x20uLL);
  return 0;
}

uint64_t sub_100165F64(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v8 = 0u;
  v7 = 0u;
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = a3[1];
  v11 = *a3;
  __s = 0x1000000;
  v12 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  return 0;
}

uint64_t sub_100166024(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _cchkdf(a1, 32, a3, 0, 0, v4, v3, 32);
}

uint64_t sub_100166078()
{

  return sub_100165F64(v0, v1 + 8, (v1 + 40));
}

uint64_t sub_100166148(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = &a2[3 * **a2];
  ccn_write_uint_padded();
  return 1;
}

uint64_t sub_100166180(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = sub_100166284(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

BOOL sub_1001662F0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100166284(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t sub_100166358(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_1001663D8(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = sub_100166474(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *sub_100166474(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && sub_100166284(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_100166500(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  v8 = sub_100166474(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = v8[1] + v8[2];
      v15[0] = v8[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (sub_1002581F8(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1001665E0(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_100166500(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_100257F2C();
  }

  return v5;
}

uint64_t sub_100166640(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_100166500(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_1002581A8();
  }

  return v5;
}

uint64_t sub_1001666A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!sub_1001663D8(a5, v7) && !sub_100258578())
    {
      return 1;
    }
  }

  else
  {
    sub_10025AA84();
  }

  sub_10025AAEC();
  return 0;
}

uint64_t sub_1001667A0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  return ccder_sizeof();
}

uint64_t sub_1001667B8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  v2 = ccder_sizeof();
  return ccder_sizeof() + v2;
}

uint64_t sub_100166800(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = sub_100258F44(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t sub_1001668AC(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}

uint64_t sub_100166934()
{
  ccder_sizeof_implicit_raw_octet_string();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_100166A04(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_100166A40()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t sub_100166A94()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_100166AB4()
{

  return ccder_blob_encode_tl();
}

uint64_t sub_100166B14(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return sub_1002583A8(va2, va, va1);
}

uint64_t sub_100166B34(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

void *sub_100166B84()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_100166B9C(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t sub_100166BEC()
{

  return ccder_blob_decode_range();
}

uint64_t sub_100166C0C()
{

  return sub_100257D78();
}

uint64_t sub_100166D44()
{
  sub_100165DE8(&off_100323628 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(sub_100161150 != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_100161150();
}

uint64_t sub_100166DFC(uint64_t a1, unsigned int a2)
{
  sub_100165DE8(&off_100323628 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(sub_1001611C0 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_1001611C0(a1, a2);
}

uint64_t sub_100166ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100165DE8(&off_100323628 != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100166FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100165DE8(&off_100323628 != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10016710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100165DE8(&off_100323628 != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100167234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_100165DE8(&off_100323628 != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_100167364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_100165DE8(&off_100323628 != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_100167494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100165DE8(&off_100323628 != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5);
}

uint64_t sub_10016758C()
{
  sub_100165DE8(&off_100323628 != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0]();
}

uint64_t sub_100167644(uint64_t a1, uint64_t a2)
{
  sub_100165DE8(&off_100323628 != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2);
}

uint64_t sub_100167714(uint64_t a1)
{
  sub_100165DE8(&off_100323628 != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_1001677DC(uint64_t a1)
{
  sub_100165DE8(&off_100323628 != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_1001678A4(uint64_t a1)
{
  sub_100165DE8(&off_100323628 != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10016796C(uint64_t a1)
{
  sub_100165DE8(&off_100323628 != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_100167A34(uint64_t a1)
{
  sub_100165DE8(&off_100323628 != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_100167AFC(uint64_t a1)
{
  sub_100165DE8(&off_100323628 != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_100167BC4(uint64_t a1)
{
  sub_100165DE8(&off_100323628 != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100165DE8(0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

char *sub_100167C98(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *sub_100167D20(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = sub_100167C98(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

double sub_10016D138(void *a1)
{
  sub_10016D578(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

float sub_10016D174(void *a1)
{
  sub_10016D578(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_10016D1B4(uint64_t *a1)
{
  v2 = 0;
  v3 = 0;
  while (v2 <= 0x3F)
  {
    sub_10016D578(a1, 1);
    v4 = *a1;
    v5 = a1[2];
    a1[2] = v5 + 1;
    LOBYTE(v4) = *(v4 + v5);
    v3 |= (v4 & 0x7F) << v2;
    v2 += 7;
    if ((v4 & 0x80) == 0)
    {
      return v3;
    }
  }

  sub_10016D3EC(-105, @"Invalid VarInt64");
  return 0;
}

uint64_t sub_10016D254(void *a1)
{
  sub_10016D578(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

uint64_t sub_10016D290(void *a1)
{
  sub_10016D578(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_10016D334(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(a1 + 8) || v2 == *(a1 + 24))
  {
    v3 = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    v3 = sub_10016D1B4(a1);
    *(a1 + 32) = v3;
    if (!sub_1001A18CC(v3))
    {
      sub_10016D3EC(-103, @"Invalid wireformat in tag.");
      v3 = *(a1 + 32);
    }

    if (!sub_1001A18C4(v3))
    {
      sub_10016D3EC(-103, @"A zero field number on the wire is invalid.");
      return *(a1 + 32);
    }
  }

  return v3;
}

id sub_10016D3EC(uint64_t a1, void *a2)
{
  if ([a2 length])
  {
    v8 = @"Reason";
    v9 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v6 = @"TransparencyGPBCodedInputStreamUnderlyingErrorKey";
  v7 = [NSError errorWithDomain:@"TransparencyGPBCodedInputStreamErrorDomain" code:a1 userInfo:v4];
  return [+[NSException exceptionWithName:reason:userInfo:](NSException raise:@"TransparencyGPBCodedInputStreamException"];
}

const __CFString *sub_10016D4E4(uint64_t *a1)
{
  v2 = sub_10016D1B4(a1);
  if (!v2)
  {
    return &stru_10032E8E8;
  }

  sub_10016D578(a1, v2);
  result = [[NSString alloc] initWithBytes:*a1 + a1[2] length:v2 encoding:4];
  a1[2] += v2;
  if (!result)
  {
    sub_10016D3EC(-104, 0);
    return 0;
  }

  return result;
}

void *sub_10016D578(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[2] + a2;
  if (v3 > result[1])
  {
    result = sub_10016D3EC(-100, 0);
  }

  v4 = v2[3];
  if (v3 > v4)
  {
    v2[2] = v4;

    return sub_10016D3EC(-101, 0);
  }

  return result;
}

id sub_10016D5E8(uint64_t *a1)
{
  v2 = sub_10016D1B4(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_10016D578(a1, v3);
  result = [[NSData alloc] initWithBytes:*a1 + a1[2] length:v3];
  a1[2] += v3;
  return result;
}

id sub_10016D654(uint64_t *a1)
{
  v2 = sub_10016D1B4(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_10016D578(a1, v3);
  result = [[NSData alloc] initWithBytesNoCopy:*a1 + a1[2] length:v3 freeWhenDone:0];
  a1[2] += v3;
  return result;
}

unint64_t sub_10016D6C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16) + a2;
  if (v4 > v3)
  {
    sub_10016D3EC(-102, 0);
  }

  *(a1 + 24) = v4;
  return v3;
}

_DWORD *sub_10016D724(_DWORD *result, int a2)
{
  if (result[8] != a2)
  {
    return sub_10016D3EC(-103, @"Unexpected tag read");
  }

  return result;
}

uint64_t *sub_10016E190(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_100171190(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_100171190(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_100171190(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_100171190(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = BYTE3(a2);
  v12 = v3[2];
  if (v12 == v3[1])
  {
    result = sub_100171190(v3);
    v12 = v3[2];
  }

  v13 = *v3;
  v3[2] = v12 + 1;
  *(v13 + v12) = BYTE4(a2);
  v14 = v3[2];
  if (v14 == v3[1])
  {
    result = sub_100171190(v3);
    v14 = v3[2];
  }

  v15 = *v3;
  v3[2] = v14 + 1;
  *(v15 + v14) = BYTE5(a2);
  v16 = v3[2];
  if (v16 == v3[1])
  {
    result = sub_100171190(v3);
    v16 = v3[2];
  }

  v17 = *v3;
  v3[2] = v16 + 1;
  *(v17 + v16) = BYTE6(a2);
  v18 = v3[2];
  if (v18 == v3[1])
  {
    result = sub_100171190(v3);
    v18 = v3[2];
  }

  v19 = *v3;
  v3[2] = v18 + 1;
  *(v19 + v18) = HIBYTE(a2);
  return result;
}

uint64_t *sub_10016E378(uint64_t *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_100171190(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_100171190(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_100171190(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_100171190(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = HIBYTE(a2);
  return result;
}

uint64_t *sub_10016E4B0(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_100171190(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_100171190(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_10016E610(uint64_t *result, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return sub_10016E4B0(result, a2);
  }

  else
  {
    return sub_10016E938(result, a2);
  }
}

uint64_t *sub_10016E938(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_100171190(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_100171190(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_10016ED00(uint64_t *a1, int a2, unsigned int a3)
{
  v5 = sub_1001A18B4(a2, 0);
  sub_10016E938(a1, v5);

  return sub_10016E938(a1, a3);
}

uint64_t sub_10016F4A0(uint64_t a1, unint64_t a2)
{
  result = sub_100171458(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10016F6A4(uint64_t a1, unint64_t a2)
{
  result = sub_100171458(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10016F8A4(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t sub_10016F8FC(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_10016FB04(uint64_t result, unsigned int a2)
{
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (a2 >> 28)
  {
    v5 = 5;
  }

  if (a2 >= 0x200000)
  {
    v4 = v5;
  }

  if (a2 >= 0x4000)
  {
    v3 = v4;
  }

  if (a2 >= 0x80)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t sub_10016FB50(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100170104(uint64_t result, int a2)
{
  v2 = (2 * a2) ^ (a2 >> 31);
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v2 >> 28)
  {
    v5 = 5;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if (v2 >= 0x4000)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v6;
  return result;
}

uint64_t sub_100170158(int a1)
{
  v1 = (2 * a1) ^ (a1 >> 31);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (v1 >> 28)
  {
    v4 = 5;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10017035C(uint64_t a1, uint64_t a2)
{
  result = sub_100171458((2 * a2) ^ (a2 >> 63));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100170B00(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void *sub_100171190(void *result)
{
  v1 = result;
  if (!result[3])
  {
    result = [NSException raise:@"OutOfSpace" format:&stru_10032E8E8];
  }

  if (v1[2])
  {
    result = [v1[3] write:*v1 maxLength:?];
    if (result != v1[2])
    {
      result = [NSException raise:@"WriteFailed" format:&stru_10032E8E8];
    }

    v1[2] = 0;
  }

  return result;
}

uint64_t sub_100171458(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  if (a1 < 0x4000)
  {
    return 2;
  }

  if (a1 < 0x200000)
  {
    return 3;
  }

  if (!(a1 >> 28))
  {
    return 4;
  }

  if (!(a1 >> 35))
  {
    return 5;
  }

  if (!(a1 >> 42))
  {
    return 6;
  }

  if (!(a1 >> 49))
  {
    return 7;
  }

  v2 = 9;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = 10;
  }

  if (HIBYTE(a1))
  {
    return v2;
  }

  else
  {
    return 8;
  }
}

char *sub_1001714E8(void *a1)
{
  v1 = [a1 lengthOfBytesUsingEncoding:4];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

char *sub_100171540(void *a1)
{
  v1 = [a1 serializedSize];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

char *sub_100171590(void *a1)
{
  v1 = [a1 length];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

uint64_t sub_1001715E0(int a1)
{
  v1 = sub_1001A18B4(a1, 0);
  v2 = 10;
  v3 = 11;
  v4 = 12;
  if (v1 >> 28)
  {
    v4 = 13;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 9;
  }
}

uint64_t sub_100171630(int a1)
{
  v1 = sub_1001A18B4(a1, 0);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (v1 >> 28)
  {
    v4 = 5;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100171680(int a1)
{
  v1 = sub_1001A18B4(a1, 0);
  v2 = 6;
  v3 = 7;
  v4 = 8;
  if (v1 >> 28)
  {
    v4 = 9;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1001716D0(int a1, unint64_t a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return sub_100171458(a2) + v7;
}

uint64_t sub_100171738(int a1, unsigned int a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = 10;
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (a2 >> 28)
  {
    v12 = 5;
  }

  if (a2 >= 0x200000)
  {
    v11 = v12;
  }

  if (a2 >= 0x4000)
  {
    v10 = v11;
  }

  if (a2 >= 0x80)
  {
    v9 = v10;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t sub_1001717D8(int a1)
{
  v1 = sub_1001A18B4(a1, 0);
  v2 = 3;
  v3 = 4;
  v4 = 5;
  if (v1 >> 28)
  {
    v4 = 6;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

char *sub_100171828(int a1, void *a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 lengthOfBytesUsingEncoding:4];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *sub_1001718CC(int a1, void *a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 4;
  v5 = 6;
  v6 = 10;
  if (!(v3 >> 28))
  {
    v6 = 8;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 2;
  }

  return [a2 serializedSize] + v7;
}

char *sub_100171938(int a1, void *a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 serializedSize];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *sub_1001719D8(int a1, void *a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 length];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

uint64_t sub_100171A78(int a1, unsigned int a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = 1;
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (a2 >> 28)
  {
    v11 = 5;
  }

  if (a2 >= 0x200000)
  {
    v10 = v11;
  }

  if (a2 >= 0x4000)
  {
    v9 = v10;
  }

  if (a2 >= 0x80)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t sub_100171B0C(int a1, int a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (v8 >> 28)
  {
    v11 = 5;
  }

  if (v8 >= 0x200000)
  {
    v10 = v11;
  }

  if (v8 >= 0x4000)
  {
    v9 = v10;
  }

  if (v8 >= 0x80)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  return v12 + v4;
}

uint64_t sub_100171BA8(int a1, uint64_t a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return sub_100171458((2 * a2) ^ (a2 >> 63)) + v7;
}

char *sub_100171C14(unsigned int a1, void *a2)
{
  v4 = sub_1001A18B4(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(v4 >> 28))
  {
    v7 = 8;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if (v4 >= 0x4000)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_100171A78(2, a1) + v8;
  return &sub_100171938(3, a2)[v9];
}

char *sub_100171CA4(unsigned int a1, void *a2)
{
  v4 = sub_1001A18B4(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(v4 >> 28))
  {
    v7 = 8;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if (v4 >= 0x4000)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_100171A78(2, a1) + v8;
  return &sub_1001719D8(3, a2)[v9];
}

uint64_t sub_100171D34(int a1, int a2)
{
  v3 = sub_1001A18B4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  return v4 << (a2 == 16);
}

SEL sub_100172EC8(char *__s, char *str, const char *a3, int a4)
{
  if (!__s && !a3 && (a4 & 1) == 0)
  {

    return sel_getUid(str);
  }

  if (__s)
  {
    v9 = strlen(__s);
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(str);
  v11 = v10;
  if (a3)
  {
    v10 = strlen(a3);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v18 = &v18;
  v13 = v11 + v9 + v12;
  v14 = v13 + 2;
  if (a4)
  {
    v15 = v13 + 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  __chkstk_darwin(v10);
  v17 = &v18 - v16;
  bzero(&v18 - v16, v15);
  if (!__s)
  {
    memcpy(v17, str, v11);
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  memcpy(v17, __s, v9);
  memcpy(&v17[v9], str, v11);
  v17[v9] = __toupper(v17[v9]);
  if (a3)
  {
LABEL_18:
    memcpy(&v17[v9 + v11], a3, v12);
  }

LABEL_19:
  if (a4)
  {
    v17[v14 - 2] = 58;
  }

  v17[v15 - 1] = 0;
  return sel_getUid(v17);
}

uint64_t sub_100173318(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 28);
  if ((v2 & 0xF00) != 0)
  {
    v3 = 15;
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = *(v1 + 30);
    v4 = (v2 >> 2) & 1;
  }

  v5 = sub_1001A18DC(v3, v4);
  v6 = *(v1 + 16);

  return sub_1001A18B4(v6, v5);
}

uint64_t sub_100173374(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_1001A18DC(*(v1 + 30), (*(v1 + 28) & 4) == 0);
  v3 = *(v1 + 16);

  return sub_1001A18B4(v3, v2);
}

uint64_t sub_100174370(void *a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 30);
  v5 = [a1 keyEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = [a1 objectForKeyedSubscript:v7];
      v10 = sub_100171828(1, v7);
      v11 = &v10[sub_100174454(v9, v4)];
      v8 += &v11[sub_10016FB50(v11)];
      v7 = [v5 nextObject];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = sub_100171D34(*(*(a2 + 8) + 16), 15);
  return v8 + [a1 count] * v12;
}

char *sub_100174454(void *a1, int a2)
{
  switch(a2)
  {
    case 13:
      return sub_1001719D8(2, a1);
    case 14:
      return sub_100171828(2, a1);
    case 15:
      return sub_100171938(2, a1);
  }

  return 0;
}

id sub_10017449C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(v5 + 30);
  v7 = sub_1001A18B4(*(v5 + 16), 2);
  v8 = [a2 keyEnumerator];
  result = [v8 nextObject];
  if (result)
  {
    v10 = result;
    do
    {
      v11 = [a2 objectForKeyedSubscript:v10];
      [a1 writeInt32NoTag:v7];
      v12 = sub_100171828(1, v10);
      [a1 writeInt32NoTag:{sub_100174454(v11, v6) + v12}];
      [a1 writeString:1 value:v10];
      sub_100174588(a1, v11, v6);
      result = [v8 nextObject];
      v10 = result;
    }

    while (result);
  }

  return result;
}

void *sub_100174588(void *a1, const char *a2, int a3)
{
  switch(a3)
  {
    case 13:
      return [a1 writeBytes:2 value:a2];
    case 14:
      return [a1 writeString:2 value:a2];
    case 15:
      return [a1 writeMessage:2 value:a2];
  }

  return a1;
}

BOOL sub_1001745C8(void *a1)
{
  v1 = [a1 objectEnumerator];
  do
  {
    v2 = [v1 nextObject];
    v3 = v2;
  }

  while (v2 && ([v2 isInitialized] & 1) != 0);
  return v3 == 0;
}

void sub_100174610(void *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = [a4 mapKeyDataType];
  v10 = *(a4[1] + 30);
  v24 = 0;
  v25 = 0;
  if (v10 == 17)
  {
    v24 = [a4 defaultValue];
  }

  v11 = sub_1001A18DC(v9, 0);
  v12 = sub_1001A18B4(1, v11);
  v13 = sub_1001A18DC(v10, 0);
  v14 = sub_1001A18B4(2, v13);
  while (1)
  {
    while (1)
    {
      v15 = sub_10016D334((a2 + 1));
      if (v15 == v12)
      {
        v16 = &v25;
        v17 = a2;
        v18 = v9;
        goto LABEL_8;
      }

      v19 = v15;
      if (v15 != v14)
      {
        break;
      }

      v16 = &v24;
      v17 = a2;
      v18 = v10;
LABEL_8:
      sub_10017488C(v17, v16, v18, a3, a4);
    }

    if (!v15)
    {
      break;
    }

    if (([a2 skipField:v15] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = v25;
  if (v9 == 14 && !v25)
  {
    v20 = &stru_10032E8E8;
    v25 = v20;
  }

  v21 = v24;
  if ((v10 - 13) > 3u || v24)
  {
    goto LABEL_25;
  }

  switch(v10)
  {
    case 13:
      v22 = sub_10019DD30();
      goto LABEL_23;
    case 15:
      v22 = objc_alloc_init([a4 msgClass]);
LABEL_23:
      v21 = v22;
      v24 = v22;
      goto LABEL_25;
    case 14:
      v22 = &stru_10032E8E8;
      goto LABEL_23;
  }

  v21 = 0;
LABEL_25:
  if (v9 == 14 && (v10 - 13) <= 3u)
  {
    [a1 setObject:v21 forKey:v20];
    goto LABEL_34;
  }

  if (v10 == 17 && (*(a4[1] + 28) & 0x1000) != 0 && ![a4 isValidEnumValue:v21])
  {
    [a5 addUnknownMapEntry:*(a4[1] + 16) value:{objc_msgSend(a1, "serializedDataForUnknownValue:forKey:keyDataType:", v21, &v25, v9)}];
  }

  else
  {
    [a1 setTransparencyGPBGenericValue:&v24 forTransparencyGPBGenericValueKey:&v25];
  }

LABEL_32:
  if ((v9 - 13) > 3u)
  {
    goto LABEL_35;
  }

  v20 = v25;
LABEL_34:

LABEL_35:
  if ((v10 - 13) <= 3u)
  {
  }
}

void sub_10017488C(uint64_t *a1, id *a2, int a3, uint64_t a4, void *a5)
{
  switch(a3)
  {
    case 0:
      *a2 = sub_10016D314(a1 + 1);
      return;
    case 1:
    case 2:
      v8 = sub_10016D290(a1 + 1);
      goto LABEL_15;
    case 3:
      *a2 = sub_10016D174(a1 + 1);
      return;
    case 4:
    case 5:
      v7 = sub_10016D254(a1 + 1);
      goto LABEL_13;
    case 6:
      *a2 = sub_10016D138(a1 + 1);
      return;
    case 7:
    case 11:
    case 17:
      v8 = sub_10016D23C(a1 + 1);
      goto LABEL_15;
    case 8:
    case 12:
      v7 = sub_10016D1B0(a1 + 1);
      goto LABEL_13;
    case 9:
      v8 = sub_10016D2CC(a1 + 1);
LABEL_15:
      *a2 = v8;
      return;
    case 10:
      v7 = sub_10016D2F0(a1 + 1);
      goto LABEL_13;
    case 13:

      v7 = sub_10016D5E8(a1 + 1);
      goto LABEL_13;
    case 14:

      v7 = sub_10016D4E4(a1 + 1);
LABEL_13:
      *a2 = v7;
      break;
    case 15:
      v10 = objc_alloc_init([a5 msgClass]);
      [a1 readMessage:v10 extensionRegistry:a4];

      *a2 = v10;
      break;
    default:
      return;
  }
}

uint64_t sub_100174F08(unsigned int a1, int a2, int a3)
{
  if (a3 == 1)
  {
    return sub_100171680(a2);
  }

  if (a3 == 11)
  {
    return sub_100171A78(a2, a1);
  }

  return 0;
}

uint64_t sub_100175188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100175800(unsigned int a1, int a2, int a3)
{
  switch(a3)
  {
    case 2:
      return sub_100171680(a2);
    case 9:
      return sub_100171B0C(a2, a1);
    case 7:
      return sub_100171738(a2, a1);
  }

  return 0;
}

id sub_1001759A0(id result, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 2:
      return [result writeSFixed32:a3 value:a2];
    case 9:
      return [result writeSInt32:a3 value:a2];
    case 7:
      return [result writeInt32:a3 value:a2];
  }

  return result;
}

uint64_t sub_100175AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100176118(unint64_t a1, int a2, int a3)
{
  if (a3 == 4)
  {
    return sub_1001715E0(a2);
  }

  if (a3 == 12)
  {
    return sub_1001716D0(a2, a1);
  }

  return 0;
}

uint64_t sub_100176398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100176A08(unint64_t a1, int a2, int a3)
{
  switch(a3)
  {
    case 5:
      return sub_1001715E0(a2);
    case 10:
      return sub_100171BA8(a2, a1);
    case 8:
      return sub_1001716D0(a2, a1);
  }

  return 0;
}

id sub_100176BA8(id result, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 5:
      return [result writeSFixed64:a3 value:a2];
    case 10:
      return [result writeSInt64:a3 value:a2];
    case 8:
      return [result writeInt64:a3 value:a2];
  }

  return result;
}

uint64_t sub_100176CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017751C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100177D7C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1001785FC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100178F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100179BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_10017A450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017ACCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017B570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017BDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017C638(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017CE78(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017D6D8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017E024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017EC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_10017F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10017FD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100180630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100180ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100181740(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100181FA0(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100182820(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1001831AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100183DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_100184660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100184EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100185778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100185FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100186848(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100187088(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1001878E8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100188234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100188E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_100189698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100189E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_10018A690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_10018AE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_10018B640(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  return (*(v3 + 16))(v3, a2, v4);
}

uint64_t sub_10018BDBC(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_10018C590(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_10018CE44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithInt:?];
  v5 = *(v3 + 16);

  return v5(v3, a2, v4);
}

id sub_100191810(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (*(v5 + 45))
  {
    if ((*(v5 + 45) & 2) != 0)
    {
      [a3 writeTag:*(v5 + 40) format:2];
      v10 = *(v5 + 44);
      if (v10 > 6)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v12 = 0;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(a2);
              }

              v12 += sub_10019261C(*(v5 + 44), *(*(&v24 + 1) + 8 * i));
            }

            v14 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v11 = qword_1002DEF18[v10];
        v12 = [a2 count] * v11;
      }

      [a3 writeRawVarintSizeTAs32:v12];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
      if (result)
      {
        v17 = result;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(a2);
            }

            switch(*(v5 + 44))
            {
              case 0:
                [a3 writeBoolNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "BOOLValue")}];
                break;
              case 1:
                [a3 writeFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 2:
                [a3 writeSFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 3:
                [*(*(&v20 + 1) + 8 * v19) floatValue];
                [a3 writeFloatNoTag:?];
                break;
              case 4:
                [a3 writeFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 5:
                [a3 writeSFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 6:
                [*(*(&v20 + 1) + 8 * v19) doubleValue];
                [a3 writeDoubleNoTag:?];
                break;
              case 7:
                [a3 writeInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 8:
                [a3 writeInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 9:
                [a3 writeSInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 0xA:
                [a3 writeSInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 0xB:
                [a3 writeUInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 0xC:
                [a3 writeUInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 0xD:
                [a3 writeBytesNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xE:
                [a3 writeStringNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xF:
                [a3 writeMessageNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x10:
                [a3 writeGroupNoTag:*(v5 + 40) value:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x11:
                [a3 writeEnumNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              default:
                break;
            }

            v19 = v19 + 1;
          }

          while (v17 != v19);
          result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
          v17 = result;
        }

        while (result);
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v29;
        do
        {
          v9 = 0;
          do
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(a2);
            }

            sub_100191C7C(*(*(&v28 + 1) + 8 * v9), v5, a3);
            v9 = v9 + 1;
          }

          while (v7 != v9);
          result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
          v7 = result;
        }

        while (result);
      }
    }
  }

  else
  {

    return sub_100191C7C(a2, v5, a3);
  }

  return result;
}

id sub_100191C7C(id result, uint64_t a2, void *a3)
{
  switch(*(a2 + 44))
  {
    case 0:
      v4 = *(a2 + 40);
      v5 = [result BOOLValue];

      result = [a3 writeBool:v4 value:v5];
      break;
    case 1:
      v22 = *(a2 + 40);
      v23 = [result unsignedIntValue];

      result = [a3 writeFixed32:v22 value:v23];
      break;
    case 2:
      v16 = *(a2 + 40);
      v17 = [result intValue];

      result = [a3 writeSFixed32:v16 value:v17];
      break;
    case 3:
      v19 = *(a2 + 40);
      [result floatValue];

      result = [a3 writeFloat:v19 value:?];
      break;
    case 4:
      v10 = *(a2 + 40);
      v11 = [result unsignedLongLongValue];

      result = [a3 writeFixed64:v10 value:v11];
      break;
    case 5:
      v26 = *(a2 + 40);
      v27 = [result longLongValue];

      result = [a3 writeSFixed64:v26 value:v27];
      break;
    case 6:
      v29 = *(a2 + 40);
      [result doubleValue];

      result = [a3 writeDouble:v29 value:?];
      break;
    case 7:
      v20 = *(a2 + 40);
      v21 = [result intValue];

      result = [a3 writeInt32:v20 value:v21];
      break;
    case 8:
      v32 = *(a2 + 40);
      v33 = [result longLongValue];

      result = [a3 writeInt64:v32 value:v33];
      break;
    case 9:
      v14 = *(a2 + 40);
      v15 = [result intValue];

      result = [a3 writeSInt32:v14 value:v15];
      break;
    case 0xA:
      v30 = *(a2 + 40);
      v31 = [result longLongValue];

      result = [a3 writeSInt64:v30 value:v31];
      break;
    case 0xB:
      v8 = *(a2 + 40);
      v9 = [result unsignedIntValue];

      result = [a3 writeUInt32:v8 value:v9];
      break;
    case 0xC:
      v12 = *(a2 + 40);
      v13 = [result unsignedLongLongValue];

      result = [a3 writeUInt64:v12 value:v13];
      break;
    case 0xD:
      v28 = *(a2 + 40);

      result = [a3 writeBytes:v28 value:result];
      break;
    case 0xE:
      v7 = *(a2 + 40);

      result = [a3 writeString:v7 value:result];
      break;
    case 0xF:
      v18 = *(a2 + 40);
      if ((*(a2 + 45) & 4) != 0)
      {

        result = [a3 writeMessageSetExtension:v18 value:result];
      }

      else
      {

        result = [a3 writeMessage:v18 value:result];
      }

      break;
    case 0x10:
      v6 = *(a2 + 40);

      result = [a3 writeGroup:v6 value:result];
      break;
    case 0x11:
      v24 = *(a2 + 40);
      v25 = [result intValue];

      result = [a3 writeEnum:v24 value:v25];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100192050(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 45))
  {
    if ((*(v3 + 45) & 2) != 0)
    {
      v11 = *(v3 + 44);
      if (v11 > 6)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v14 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v13 = 0;
          v16 = *v20;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(a2);
              }

              v13 += sub_10019261C(*(v3 + 44), *(*(&v19 + 1) + 8 * i));
            }

            v15 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v15);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v12 = qword_1002DEF18[v11];
        v13 = [a2 count] * v12;
      }

      v18 = sub_100171630(*(v3 + 40));
      return v18 + v13 + sub_10016FB50(v13);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v20;
        do
        {
          for (j = 0; j != v7; j = j + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(a2);
            }

            v8 += sub_100192298(v3, *(*(&v19 + 1) + 8 * j));
          }

          v7 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }

      else
      {
        return 0;
      }
    }

    return v8;
  }

  else
  {
    v4 = *(a1 + 8);

    return sub_100192298(v4, a2);
  }
}

uint64_t sub_100192298(uint64_t result, void *a2)
{
  switch(*(result + 44))
  {
    case 0:
      v2 = *(result + 40);
      [a2 BOOLValue];

      return sub_1001717D8(v2);
    case 1:
      v22 = *(result + 40);
      [a2 unsignedIntValue];
      v15 = v22;

      return sub_100171680(v15);
    case 2:
      v14 = *(result + 40);
      [a2 intValue];
      v15 = v14;

      return sub_100171680(v15);
    case 3:
      v18 = *(result + 40);
      [a2 floatValue];
      v15 = v18;

      return sub_100171680(v15);
    case 4:
      v7 = *(result + 40);
      [a2 unsignedLongLongValue];
      v8 = v7;

      return sub_1001715E0(v8);
    case 5:
      v24 = *(result + 40);
      [a2 longLongValue];
      v8 = v24;

      return sub_1001715E0(v8);
    case 6:
      v26 = *(result + 40);
      [a2 doubleValue];
      v8 = v26;

      return sub_1001715E0(v8);
    case 7:
      v19 = *(result + 40);
      v20 = [a2 intValue];
      v21 = v19;

      goto LABEL_35;
    case 8:
      v29 = *(result + 40);
      v10 = [a2 longLongValue];
      v11 = v29;

      goto LABEL_19;
    case 9:
      v12 = *(result + 40);
      v13 = [a2 intValue];

      return sub_100171B0C(v12, v13);
    case 0xA:
      v27 = *(result + 40);
      v28 = [a2 longLongValue];

      return sub_100171BA8(v27, v28);
    case 0xB:
      v5 = *(result + 40);
      v6 = [a2 unsignedIntValue];

      return sub_100171A78(v5, v6);
    case 0xC:
      v9 = *(result + 40);
      v10 = [a2 unsignedLongLongValue];
      v11 = v9;

LABEL_19:
      result = sub_1001716D0(v11, v10);
      break;
    case 0xD:
      v25 = *(result + 40);

      result = sub_1001719D8(v25, a2);
      break;
    case 0xE:
      v4 = *(result + 40);

      result = sub_100171828(v4, a2);
      break;
    case 0xF:
      v16 = *(result + 45);
      v17 = *(result + 40);
      if ((v16 & 4) != 0)
      {

        result = sub_100171C14(v17, a2);
      }

      else
      {

        result = sub_100171938(v17, a2);
      }

      break;
    case 0x10:
      v3 = *(result + 40);

      result = sub_1001718CC(v3, a2);
      break;
    case 0x11:
      v23 = *(result + 40);
      v20 = [a2 intValue];
      v21 = v23;

LABEL_35:
      result = sub_100171738(v21, v20);
      break;
    default:
      return result;
  }

  return result;
}

id sub_10019261C(id result, void *a2)
{
  switch(result)
  {
    case 0:
      [a2 BOOLValue];

      return variable initialization expression of KTEligibilityDB.schemaVersion();
    case 1:
      [a2 unsignedIntValue];

      return sub_10016F2DC();
    case 2:
      [a2 intValue];

      return sub_10016F2DC();
    case 3:
      [a2 floatValue];

      return sub_10016F2DC();
    case 4:
      [a2 unsignedLongLongValue];

      return sub_10016F100();
    case 5:
      [a2 longLongValue];

      return sub_10016F100();
    case 6:
      [a2 doubleValue];

      return sub_10016F100();
    case 7:
      v5 = [a2 intValue];

      goto LABEL_34;
    case 8:
      v3 = [a2 longLongValue];

      goto LABEL_19;
    case 9:
      v4 = [a2 intValue];

      return sub_100170158(v4);
    case 10:
      v6 = [a2 longLongValue];

      return sub_10017039C(v6);
    case 11:
      v2 = [a2 unsignedIntValue];

      return sub_10016FB50(v2);
    case 12:
      v3 = [a2 unsignedLongLongValue];

LABEL_19:
      result = sub_10016F4DC(v3);
      break;
    case 13:

      result = sub_100171590(a2);
      break;
    case 14:

      result = sub_1001714E8(a2);
      break;
    case 15:

      result = sub_100171540(a2);
      break;
    case 16:

      result = [a2 serializedSize];
      break;
    case 17:
      v5 = [a2 intValue];

LABEL_34:
      result = sub_10016F8FC(v5);
      break;
    default:
      return result;
  }

  return result;
}

void sub_100192AC4(void *key, const __CFDictionary *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {

    CFDictionaryApplyFunction(a2, sub_100192B7C, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    CFDictionarySetValue(theDict, key, MutableCopy);

    CFRelease(MutableCopy);
  }
}

void *sub_100192C00(objc_class *a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(a1);
  v5[4] = a2;
  v5[5] = a3;
  return v5;
}

id sub_100192C54(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = a1[5];
    if (v3)
    {
      return sub_10019E97C(result, v3, a1);
    }

    else
    {
      return [result setExtension:a1[6] value:?];
    }
  }

  return result;
}

id sub_100192C7C(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 fieldType] == 1 && sub_10019E33C(a1, v9) == a2)
        {
          if (*(v9[1] + 30) - 13 >= 4)
          {
            v10 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
          }

          else
          {
            v10 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
          }

          *(a2 + *v10) = 0;
          return sub_100192C54(a1);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_100192DE8(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 fieldType] == 2 && sub_10019E33C(a1, v9) == a2)
        {
          if ([v9 mapKeyDataType] == 14 && *(v9[1] + 30) - 13 < 4)
          {
            v10 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
          }

          else
          {
            v10 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
          }

          *(a2 + *v10) = 0;
          return sub_100192C54(a1);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100192F68(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      *(a1 + 32) = 0;

      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }
  }
}

NSError *sub_100193274(void *a1)
{
  if (![objc_msgSend(a1 "name")] || (result = objc_msgSend(objc_msgSend(a1, "userInfo"), "objectForKeyedSubscript:", @"TransparencyGPBCodedInputStreamUnderlyingErrorKey")) == 0)
  {
    v3 = [a1 reason];
    if ([v3 length])
    {
      v5 = @"Reason";
      v6 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    }

    else
    {
      v4 = 0;
    }

    return [NSError errorWithDomain:@"TransparencyGPBMessageErrorDomain" code:-100 userInfo:v4];
  }

  return result;
}

void sub_100193888(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copyWithZone:*(a1 + 40)];
  [*(a1 + 32) setObject:v5 forKey:a2];
}

NSMutableDictionary *sub_10019396C(void *a1, uint64_t a2)
{
  if (![a1 count])
  {
    return 0;
  }

  v4 = -[NSMutableDictionary initWithCapacity:](+[NSMutableDictionary allocWithZone:](NSMutableDictionary, "allocWithZone:", a2), "initWithCapacity:", [a1 count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v21 = *v29;
    v22 = v4;
    do
    {
      v8 = 0;
      v23 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [a1 objectForKey:v9];
        v11 = *(v9[1] + 44) - 15;
        if ([v9 isRepeated])
        {
          if (v11 > 1)
          {
            v18 = [v10 mutableCopyWithZone:a2];
            goto LABEL_20;
          }

          v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v10);
                }

                v17 = [*(*(&v24 + 1) + 8 * i) copyWithZone:a2];
                [v12 addObject:v17];
              }

              v14 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v14);
          }

          v4 = v22;
          [(NSMutableDictionary *)v22 setObject:v12 forKey:v9];

          v7 = v21;
          v6 = v23;
        }

        else
        {
          if (v11 <= 1)
          {
            v18 = [v10 copyWithZone:a2];
LABEL_20:
            v19 = v18;
            [(NSMutableDictionary *)v4 setObject:v18 forKey:v9];

            goto LABEL_22;
          }

          [(NSMutableDictionary *)v4 setObject:v10 forKey:v9];
        }

LABEL_22:
        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  return v4;
}

void *sub_100193F68(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (*(v4 + 30) - 15 >= 2)
  {
    if (sub_10019E86C(a1, *(v4 + 20), *(v4 + 16)))
    {
      return *(*(a1 + 64) + *(a2[1] + 24));
    }

    else
    {
      return [a2 defaultValue];
    }
  }

  else
  {
    v5 = (*(a1 + 64) + *(v4 + 24));
    v6 = atomic_load(v5);
    if (!v6)
    {
      v6 = objc_alloc_init([a2 msgClass]);
      v6[4] = a1;
      v7 = a2;
      v8 = 0;
      v6[5] = v7;
      atomic_compare_exchange_strong(v5, &v8, v6);
      if (v8)
      {
        sub_100192F68(v6);

        return v8;
      }
    }
  }

  return v6;
}

void sub_100194350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100194370(void *result, void *a2, void *a3, _BYTE *a4)
{
  if (*(a2[1] + 44) - 15 <= 1)
  {
    v6 = result;
    if ([a2 isRepeated])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (!result)
      {
        return result;
      }

      v7 = result;
      v8 = *v11;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a3);
        }

        result = [*(*(&v10 + 1) + 8 * v9) isInitialized];
        if (!result)
        {
          break;
        }

        if (v7 == ++v9)
        {
          result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v7 = result;
          if (result)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      result = [a3 isInitialized];
      if (result)
      {
        return result;
      }
    }

    *(*(v6[4] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10019563C(uint64_t a1, void *a2)
{
  [a2 containingMessageClass];
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"Extension %@ used on wrong class (%@ instead of %@)", [a2 singletonName], objc_opt_class(), objc_msgSend(a2, "containingMessageClass"));
  }

  return result;
}

void sub_100196008(void *a1, int a2, uint64_t *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v9 = sub_10016D23C(a3 + 1);
    v10 = sub_10016D6C4((a3 + 1), v9);
    while (sub_10016D718((a3 + 1)))
    {
      v11 = sub_10019A1C8(a1, a5, a3, a4, 0);
      if (v11)
      {
        v12 = v11;
        [a5 addExtension:a1 value:v11];
      }
    }

    sub_10016D710((a3 + 1), v10);
  }

  else
  {
    v13 = a1[1];
    if (*(v13 + 45))
    {
      v15 = sub_10019A1C8(a1, a5, a3, a4, 0);
      if (!v15)
      {
        return;
      }

      v17 = v15;
      [a5 addExtension:a1 value:v15];
    }

    else
    {
      if (*(v13 + 44) - 15 > 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = [a5 getExistingExtension:a1];
      }

      v16 = sub_10019A1C8(a1, a5, a3, a4, v14);
      if (!v16)
      {
        return;
      }

      v17 = v16;
      [a5 setExtension:a1 value:v16];
    }
  }
}

uint64_t sub_1001961CC(void *a1)
{
  result = a1[1];
  if (!result)
  {
    a1[1] = objc_alloc_init(TransparencyGPBUnknownFieldSet);
    sub_100192C54(a1);
    return a1[1];
  }

  return result;
}

uint64_t sub_1001968F4(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a2[1] + 30);
  v7 = sub_10019751C(a1, a2);
  v8 = sub_10016D23C((a3 + 8));
  v9 = sub_10016D6C4(a3 + 8, v8);
  while (sub_10016D718(a3 + 8))
  {
    switch(v6)
    {
      case 0:
        v10 = sub_10016D314((a3 + 8));
        goto LABEL_17;
      case 1:
      case 2:
        v10 = sub_10016D290((a3 + 8));
        goto LABEL_17;
      case 3:
        *&v11 = sub_10016D174((a3 + 8));
        [v7 addValue:v11];
        continue;
      case 4:
      case 5:
        v10 = sub_10016D254((a3 + 8));
        goto LABEL_17;
      case 6:
        [v7 addValue:sub_10016D138((a3 + 8))];
        continue;
      case 7:
      case 11:
        v10 = sub_10016D23C((a3 + 8));
        goto LABEL_17;
      case 8:
      case 12:
        v10 = sub_10016D1B0(a3 + 8);
        goto LABEL_17;
      case 9:
        v10 = sub_10016D2CC((a3 + 8));
        goto LABEL_17;
      case 10:
        v10 = sub_10016D2F0((a3 + 8));
LABEL_17:
        [v7 addValue:v10];
        break;
      case 17:
        v12 = sub_10016D23C((a3 + 8));
        if ((*(a2[1] + 28) & 0x1000) != 0 && ![a2 isValidEnumValue:v12])
        {
          [sub_1001961CC(a1) mergeVarintField:*(a2[1] + 16) value:v12];
        }

        else
        {
          [v7 addRawValue:v12];
        }

        break;
      default:
        continue;
    }
  }

  return sub_10016D710(a3 + 8, v9);
}

void sub_100196AEC(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_10019751C(a1, a2);
  switch(*(a2[1] + 30))
  {
    case 0:
      sub_10016D314(a3 + 1);
      goto LABEL_14;
    case 1:
    case 2:
      sub_10016D290(a3 + 1);
      goto LABEL_14;
    case 3:
      *&v9 = sub_10016D174(a3 + 1);
      v13 = v8;

      goto LABEL_12;
    case 4:
    case 5:
      sub_10016D254(a3 + 1);
      goto LABEL_32;
    case 6:
      v9 = sub_10016D138(a3 + 1);
      v13 = v8;

      goto LABEL_12;
    case 7:
    case 0xB:
      sub_10016D23C(a3 + 1);
      goto LABEL_14;
    case 8:
    case 0xC:
      sub_10016D1B0(a3 + 1);
      goto LABEL_32;
    case 9:
      sub_10016D2CC(a3 + 1);
LABEL_14:
      v13 = v8;

      goto LABEL_12;
    case 0xA:
      sub_10016D2F0(a3 + 1);
LABEL_32:
      v13 = v8;

LABEL_12:
      [v13 addValue:v9];
      return;
    case 0xD:
      v10 = sub_10016D5E8(a3 + 1);
      goto LABEL_23;
    case 0xE:
      v10 = sub_10016D4E4(a3 + 1);
LABEL_23:
      v12 = v10;
      v17 = v10;
      v11 = v8;
      goto LABEL_24;
    case 0xF:
      v17 = objc_alloc_init([a2 msgClass]);
      [a3 readMessage:v17 extensionRegistry:a4];
      goto LABEL_9;
    case 0x10:
      v17 = objc_alloc_init([a2 msgClass]);
      [a3 readGroup:*(a2[1] + 16) message:v17 extensionRegistry:a4];
LABEL_9:
      v11 = v8;
      v12 = v17;
LABEL_24:
      [v11 addObject:v12];

      break;
    case 0x11:
      v14 = sub_10016D23C(a3 + 1);
      if ((*(a2[1] + 28) & 0x1000) != 0 && ![a2 isValidEnumValue:v14])
      {
        v15 = sub_1001961CC(a1);
        v16 = *(a2[1] + 16);

        [v15 mergeVarintField:v16 value:v14];
      }

      else
      {

        [v8 addRawValue:v14];
      }

      break;
    default:
      return;
  }
}

void *sub_100196E30(uint64_t a1, void *a2)
{
  v4 = sub_10019E33C(a1, a2);
  if (!v4)
  {
    v4 = sub_10019A62C(a2, 0);
    sub_10019E9C0(a1, a2, v4);
  }

  return v4;
}

void *sub_10019751C(uint64_t a1, void *a2)
{
  v4 = sub_10019E33C(a1, a2);
  if (!v4)
  {
    v4 = sub_10019AADC(a2, 0);
    sub_10019E9C0(a1, a2, v4);
  }

  return v4;
}

uint64_t sub_10019893C(uint64_t a1)
{
  result = variable initialization expression of KTEligibilityDB.schemaVersion();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198978(uint64_t a1)
{
  result = sub_10016F2DC();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1001989B4(uint64_t a1)
{
  result = sub_10016F2DC();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1001989F0(uint64_t a1)
{
  result = sub_10016F2DC();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198A28(uint64_t a1)
{
  result = sub_10016F100();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198A64(uint64_t a1)
{
  result = sub_10016F100();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198AA0(uint64_t a1)
{
  result = sub_10016F100();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198AD8(uint64_t a1, unsigned int a2)
{
  result = sub_10016F8FC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198B14(uint64_t a1, unint64_t a2)
{
  result = sub_10016F4DC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198B50(uint64_t a1, int a2)
{
  result = sub_100170158(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198B8C(uint64_t a1, uint64_t a2)
{
  result = sub_10017039C(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198BC8(uint64_t a1, unsigned int a2)
{
  result = sub_10016FB50(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198C04(uint64_t a1, unint64_t a2)
{
  result = sub_10016F4DC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_100198C40(uint64_t a1, unsigned int a2)
{
  result = sub_10016F8FC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_100199E00(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    if (*(v6 + 48))
    {
      v7 = *(v6 + 48);
    }

    else
    {
      v7 = 0;
    }

    [NSException raise:NSInvalidArgumentException format:@"%@: %@ can only be set to NO (to clear field).", v5, NSStringFromSelector(v7)];
  }

  v8 = *(a1 + 32);

  sub_10019E5E0(a2, v8);
}

TransparencyGPBAutocreatedArray *sub_100199EE8(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  result = atomic_load(v3);
  if (!result)
  {
    result = sub_10019AADC(v2, a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, result);
    if (v5)
    {
      if (*(v2[1] + 30) - 13 >= 4)
      {
        v6 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
      }

      *(&result->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return result;
}

TransparencyGPBAutocreatedDictionary *sub_100199F84(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  v4 = atomic_load(v3);
  if (!v4)
  {
    v4 = sub_10019A62C(*(a1 + 32), a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, v4);
    if (v5)
    {
      if ([v2 mapKeyDataType] == 14 && *(v2[1] + 30) - 13 < 4)
      {
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
      }

      *(&v4->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return v4;
}

id sub_10019A054(uint64_t a1, uint64_t a2)
{
  v2 = sub_10019E33C(a2, *(a1 + 32));

  return [v2 count];
}

const __CFString *sub_10019A1C8(void *a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  switch(*(v5 + 44))
  {
    case 0:
      v21 = [NSNumber alloc];
      v22 = sub_10016D314(a3 + 1);

      return [v21 initWithBool:v22];
    case 1:
      v11 = [NSNumber alloc];
      v12 = sub_10016D290(a3 + 1);
      goto LABEL_27;
    case 2:
      v15 = [NSNumber alloc];
      v16 = sub_10016D290(a3 + 1);
      goto LABEL_19;
    case 3:
      v17 = [NSNumber alloc];
      sub_10016D174(a3 + 1);

      return [v17 initWithFloat:v18];
    case 4:
      v13 = [NSNumber alloc];
      v14 = sub_10016D254(a3 + 1);
      goto LABEL_10;
    case 5:
      v26 = [NSNumber alloc];
      v27 = sub_10016D254(a3 + 1);
      goto LABEL_42;
    case 6:
      v28 = [NSNumber alloc];
      sub_10016D138(a3 + 1);

      return [v28 initWithDouble:v29];
    case 7:
      v15 = [NSNumber alloc];
      v16 = sub_10016D23C(a3 + 1);
      goto LABEL_19;
    case 8:
      v26 = [NSNumber alloc];
      v27 = sub_10016D1B0(a3 + 1);
      goto LABEL_42;
    case 9:
      v15 = [NSNumber alloc];
      v16 = sub_10016D2CC(a3 + 1);
LABEL_19:
      v19 = v16;
      v20 = v15;
      goto LABEL_20;
    case 0xA:
      v26 = [NSNumber alloc];
      v27 = sub_10016D2F0(a3 + 1);
LABEL_42:

      return [v26 initWithLongLong:v27];
    case 0xB:
      v11 = [NSNumber alloc];
      v12 = sub_10016D23C(a3 + 1);
LABEL_27:

      return [v11 initWithUnsignedInt:v12];
    case 0xC:
      v13 = [NSNumber alloc];
      v14 = sub_10016D1B0(a3 + 1);
LABEL_10:

      return [v13 initWithUnsignedLongLong:v14];
    case 0xD:

      return sub_10016D5E8(a3 + 1);
    case 0xE:

      return sub_10016D4E4(a3 + 1);
    case 0xF:
    case 0x10:
      if (a5)
      {
        v9 = a5;
      }

      else
      {
        v9 = objc_alloc_init([objc_msgSend(objc_msgSend(a1 "msgClass")]);
      }

      v30 = v9;
      if (*(v5 + 44) == 16)
      {
        [a3 readGroup:*(v5 + 40) message:v9 extensionRegistry:a4];
      }

      else if ((*(v5 + 45) & 4) != 0)
      {
        [v9 mergeFromCodedInputStream:a3 extensionRegistry:a4];
      }

      else
      {
        [a3 readMessage:v9 extensionRegistry:a4];
      }

      return v30;
    case 0x11:
      v24 = sub_10016D23C(a3 + 1);
      v25 = [a1 enumDescriptor];
      if ([v25 isClosed] && !(objc_msgSend(v25, "enumVerifier"))(v24))
      {
        [sub_1001961CC(a2) mergeVarintField:*(a1[1] + 40) value:v24];
        return 0;
      }

      else
      {
        v20 = [NSNumber alloc];
        v19 = v24;
LABEL_20:

        return [v20 initWithInt:v19];
      }

    default:
      return 0;
  }
}

TransparencyGPBAutocreatedDictionary *sub_10019A62C(void *a1, objc_class *a2)
{
  v4 = [a1 mapKeyDataType];
  result = 0;
  v6 = a1[1];
  v7 = *(v6 + 30);
  switch(v4)
  {
    case 0u:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBBoolBoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBBoolUInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBBoolInt32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBBoolFloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBBoolUInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBBoolInt64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBBoolDoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBBoolObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBBoolEnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 1u:
    case 0xBu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBUInt32BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBUInt32UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBUInt32Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBUInt32FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBUInt32UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBUInt32Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBUInt32DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBUInt32ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBUInt32EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 2u:
    case 7u:
    case 9u:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBInt32BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBInt32UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBInt32Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBInt32FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBInt32UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBInt32Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBInt32DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBInt32ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBInt32EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 3u:
    case 6u:
    case 0xDu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
      return result;
    case 4u:
    case 0xCu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBUInt64BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBUInt64UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBUInt64Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBUInt64FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBUInt64UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBUInt64Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBUInt64DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBUInt64ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBUInt64EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 5u:
    case 8u:
    case 0xAu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBInt64BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBInt64UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBInt64Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBInt64FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBInt64UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBInt64Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBInt64DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBInt64ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBInt64EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 0xEu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBStringBoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBStringUInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBStringInt32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBStringFloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBStringUInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBStringInt64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBStringDoubleDictionary;
LABEL_67:
          result = objc_alloc_init(v8);
          goto LABEL_68;
        case 0xD:
        case 0xE:
        case 0xF:
          if (a2)
          {
            result = objc_alloc_init(TransparencyGPBAutocreatedDictionary);
            goto LABEL_71;
          }

          result = objc_alloc_init(NSMutableDictionary);
          break;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBStringEnumDictionary;
LABEL_65:
          result = [[v9 alloc] initWithValidationFunction:{objc_msgSend(objc_msgSend(a1, "enumDescriptor"), "enumVerifier")}];
          goto LABEL_68;
        default:
          goto LABEL_68;
      }

      break;
    default:
LABEL_68:
      if (a2)
      {
        if (v4 == 14 && (v7 - 13) <= 3)
        {
LABEL_71:
          v10 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
        }

        else
        {
          v10 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
        }

        *(&result->super.super.super.isa + *v10) = a2;
      }

      break;
  }

  return result;
}

TransparencyGPBAutocreatedArray *sub_10019AADC(void *a1, objc_class *a2)
{
  v3 = *(a1[1] + 30);
  switch(*(a1[1] + 30))
  {
    case 0:
      v5 = TransparencyGPBBoolArray;
      goto LABEL_14;
    case 1:
    case 0xB:
      v5 = TransparencyGPBUInt32Array;
      goto LABEL_14;
    case 2:
    case 7:
    case 9:
      v5 = TransparencyGPBInt32Array;
      goto LABEL_14;
    case 3:
      v5 = TransparencyGPBFloatArray;
      goto LABEL_14;
    case 4:
    case 0xC:
      v5 = TransparencyGPBUInt64Array;
      goto LABEL_14;
    case 5:
    case 8:
    case 0xA:
      v5 = TransparencyGPBInt64Array;
      goto LABEL_14;
    case 6:
      v5 = TransparencyGPBDoubleArray;
LABEL_14:
      result = objc_alloc_init(v5);
      goto LABEL_15;
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      if (a2)
      {
        result = objc_alloc_init(TransparencyGPBAutocreatedArray);
LABEL_17:
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
LABEL_19:
        *(&result->super.super.super.isa + *v6) = a2;
      }

      else
      {

        return objc_alloc_init(NSMutableArray);
      }

      return result;
    case 0x11:
      result = -[TransparencyGPBEnumArray initWithValidationFunction:]([TransparencyGPBEnumArray alloc], "initWithValidationFunction:", [objc_msgSend(a1 "enumDescriptor")]);
      goto LABEL_15;
    default:
      result = 0;
LABEL_15:
      if (!a2)
      {
        return result;
      }

      if ((v3 - 13) <= 3)
      {
        goto LABEL_17;
      }

      v6 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
      goto LABEL_19;
  }
}

uint64_t sub_10019AE28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return sub_10019E9C0(a2, v4, v5);
}

uint64_t sub_10019AE70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return sub_10019E9C0(a2, v4, v5);
}

uint64_t sub_10019AFDC(_BYTE *a1)
{
  LOBYTE(v1) = *a1;
  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v2 = (1025 * (v2 + v1)) ^ ((1025 * (v2 + v1)) >> 6);
      v1 = a1[v3++];
    }

    while (v1);
    v4 = 9 * v2;
  }

  else
  {
    v4 = 0;
  }

  return 32769 * (v4 ^ (v4 >> 11));
}

uint64_t sub_10019B094(objc_class *a1, const char *a2)
{
  result = sub_10019B174(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sub_10019F5F4("getClassValue", 0);
    Name = class_getName(a1);
    MetaClass = objc_getMetaClass(Name);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019B2C8;
    block[3] = &unk_100325950;
    block[4] = v5;
    v9 = imp_implementationWithBlock(block);
    return class_addMethod(MetaClass, a2, v9, v6) || sub_1001A08CC(MetaClass, a2);
  }

  return result;
}

const void *sub_10019B174(objc_class *a1, SEL sel)
{
  Name = sel_getName(sel);
  v4 = *Name;
  if (v4 != 95)
  {
    v6 = Name;
    v7 = 1;
    if (!*Name)
    {
LABEL_6:
      v8 = class_getName(a1);
      v9 = strlen(v8);
      __chkstk_darwin(v9);
      v11 = &v14 - v10;
      bzero(&v14 - v10, v12 + 1);
      memcpy(v11, v8, v9);
      v11[v9] = 95;
      memcpy(&v11[v9 + 1], v6, v7 - 1);
      v11[v9 + v7] = 0;
      os_unfair_lock_lock(&unk_10039C620);
      Value = CFDictionaryGetValue(qword_10039C610, v11);
      os_unfair_lock_unlock(&unk_10039C620);
      return Value;
    }

    while (v4 != 58)
    {
      v4 = Name[v7++];
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

unint64_t sub_10019B3A0()
{
  if (!atomic_load(&qword_10039C630))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBNullValue" valueNames:"NullValue" values:&unk_1002DEF5C count:1 enumVerifier:sub_10019B420 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C630, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C630);
}

id sub_10019B528(uint64_t a1)
{
  v2 = [+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id sub_10019B574(void *a1, int a2)
{
  v4 = [+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

void sub_10019B5C8(uint64_t a1)
{
  v2 = [objc_msgSend(+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  sub_10019E724(a1, v2);
}

unint64_t sub_10019B6F8()
{
  if (!atomic_load(&qword_10039C658))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBSyntax" valueNames:"SyntaxProto2" values:&unk_1002DEF7C count:2 enumVerifier:sub_10019B778 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C658, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C658);
}

unint64_t sub_10019B784()
{
  if (!atomic_load(&qword_10039C660))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBField_Kind" valueNames:"TypeUnknown" values:&unk_1002DF058 count:19 enumVerifier:sub_10019B804 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C660, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C660);
}

unint64_t sub_10019B810()
{
  if (!atomic_load(&qword_10039C668))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBField_Cardinality" valueNames:"CardinalityUnknown" values:&unk_1002DF0F4 count:4 enumVerifier:sub_10019B890 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C668, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C668);
}

id sub_10019B90C(uint64_t a1)
{
  v2 = [+[TransparencyGPBType descriptor](TransparencyGPBType "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id sub_10019B958(void *a1, int a2)
{
  v4 = [+[TransparencyGPBType descriptor](TransparencyGPBType "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id sub_10019BA30(uint64_t a1)
{
  v2 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id sub_10019BA7C(void *a1, int a2)
{
  v4 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id sub_10019BAD0(uint64_t a1)
{
  v2 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id sub_10019BB1C(void *a1, int a2)
{
  v4 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id sub_10019BBE0(uint64_t a1)
{
  v2 = [+[TransparencyGPBEnum descriptor](TransparencyGPBEnum "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id sub_10019BC2C(void *a1, int a2)
{
  v4 = [+[TransparencyGPBEnum descriptor](TransparencyGPBEnum "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

uint64_t sub_10019C540(uint64_t a1, unint64_t a2)
{
  result = sub_1001716D0(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10019C57C(uint64_t a1)
{
  result = sub_100171680(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10019C5B8(uint64_t a1)
{
  result = sub_1001715E0(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_10019D020(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 copy];
  [a3 addField:v4];
}

int sub_10019D358(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

int sub_10019D4CC(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

id sub_10019D5A4(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSize];
  *a3 += result;
  return result;
}

id sub_10019D644(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSizeAsMessageSetExtension];
  *a3 += result;
  return result;
}

void sub_10019D85C(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 number];
  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Zero is not a valid field number."];
  }

  v6 = [a3 mutableFieldForNumber:v5 create:0];
  if (v6)
  {

    [v6 mergeFromField:a2];
  }

  else
  {
    v7 = [a2 copy];
    [a3 addField:v7];
  }
}

uint64_t sub_10019DD30()
{
  if (qword_10039C698 != -1)
  {
    sub_1001A11FC();
  }

  return qword_10039C6A0;
}

id sub_10019DD90(id result)
{
  if (!result)
  {
    return result;
  }

  v1 = [NSMutableArray arrayWithObject:result];
  result = [(NSMutableArray *)v1 count];
  if (!result)
  {
    return result;
  }

  v31 = v43;
  v32 = v45;
  v33 = v41;
  v29 = v39;
  v30 = v47;
  v28 = v49;
  do
  {
    v2 = [(NSMutableArray *)v1 lastObject:v28];
    [(NSMutableArray *)v1 removeLastObject];
    [v2 setUnknownFields:0];
    v3 = [objc_opt_class() descriptor];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v4 = v3[1];
    v5 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (!v5)
    {
      goto LABEL_50;
    }

    v6 = v5;
    v7 = *v51;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        if (*(v9[1] + 30) - 15 <= 1)
        {
          v10 = [*(*(&v50 + 1) + 8 * i) fieldType];
          if (v10 == 2)
          {
            v16 = v2[8];
            if (v16)
            {
              v17 = *(v16 + *(v9[1] + 24));
            }

            else
            {
              v17 = 0;
            }

            v18 = [v9 mapKeyDataType];
            if (v18 > 7)
            {
              if (v18 <= 10)
              {
                if (v18 != 9)
                {
LABEL_43:
                  v40[0] = _NSConcreteStackBlock;
                  v40[1] = 3221225472;
                  v41[0] = sub_10019E394;
                  v41[1] = &unk_100325AE8;
                  v41[2] = v1;
                  v19 = v40;
                  goto LABEL_47;
                }

LABEL_38:
                v44[0] = _NSConcreteStackBlock;
                v44[1] = 3221225472;
                v45[0] = sub_10019E384;
                v45[1] = &unk_100325A98;
                v45[2] = v1;
                v19 = v44;
LABEL_47:
                [v17 enumerateKeysAndObjectsUsingBlock:v19];
                continue;
              }

              if (v18 == 11)
              {
LABEL_44:
                v46[0] = _NSConcreteStackBlock;
                v46[1] = 3221225472;
                v47[0] = sub_10019E37C;
                v47[1] = &unk_100325A70;
                v47[2] = v1;
                v19 = v46;
                goto LABEL_47;
              }

              if (v18 != 12)
              {
                if (v18 != 14)
                {
                  continue;
                }

                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v39[0] = sub_10019E39C;
                v39[1] = &unk_100325B10;
                v39[2] = v1;
                v19 = v38;
                goto LABEL_47;
              }

LABEL_45:
              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v43[0] = sub_10019E38C;
              v43[1] = &unk_100325AC0;
              v43[2] = v1;
              v19 = v42;
              goto LABEL_47;
            }

            if (v18 > 3)
            {
              if (v18 != 4)
              {
                if (v18 == 5)
                {
                  goto LABEL_43;
                }

                if (v18 != 7)
                {
                  continue;
                }

                goto LABEL_38;
              }

              goto LABEL_45;
            }

            switch(v18)
            {
              case 0:
                v48[0] = _NSConcreteStackBlock;
                v48[1] = 3221225472;
                v49[0] = sub_10019E374;
                v49[1] = &unk_100325A48;
                v49[2] = v1;
                v19 = v48;
                goto LABEL_47;
              case 1:
                goto LABEL_44;
              case 2:
                goto LABEL_38;
            }
          }

          else if (v10 == 1)
          {
            v14 = v2[8];
            if (v14)
            {
              v15 = *(v14 + *(v9[1] + 24));
            }

            else
            {
              v15 = 0;
            }

            if ([v15 count])
            {
              [(NSMutableArray *)v1 addObjectsFromArray:v15];
            }
          }

          else
          {
            if (v10)
            {
              continue;
            }

            v11 = v9[1];
            v12 = v11[5];
            if ((v12 & 0x80000000) != 0)
            {
              v13 = v2[8];
              if (*(v13 + 4 * -v12) != v11[4])
              {
                continue;
              }

LABEL_34:
              [(NSMutableArray *)v1 addObject:*(v13 + v11[6])];
              continue;
            }

            v13 = v2[8];
            if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFC)) >> v12))
            {
              goto LABEL_34;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v6);
LABEL_50:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = [v2 extensionsCurrentlySet];
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v34 + 1) + 8 * j);
          if ([v25 dataType] - 15 <= 1)
          {
            v26 = [v25 isRepeated];
            v27 = [v2 getExtension:v25];
            if (v26)
            {
              [(NSMutableArray *)v1 addObjectsFromArray:v27];
            }

            else
            {
              [(NSMutableArray *)v1 addObject:v27];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v54 count:16];
      }

      while (v22);
    }

    result = [(NSMutableArray *)v1 count];
  }

  while (result);
  return result;
}