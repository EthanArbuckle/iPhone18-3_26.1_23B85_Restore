void sub_10004D298()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10004CB28();
}

void sub_10004D2B8()
{
  sub_100003B78();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v84 = v7;
  v9 = v8;
  v10 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v11 = sub_100001D80(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000286C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  v20 = type metadata accessor for EventValue();
  v21 = sub_100001EDC(v20);
  v83 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10000286C();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  sub_10000B758();
  v81 = *(v9 + 16);
  v82 = v29;
  if ((sub_10004ADC8(v30, v31, v81, v32, v33, v4, v2) & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_10004D6A4(v6, v19);
  if (sub_100002694(v19, 1, v20) == 1)
  {
    sub_100005000(v19, &unk_10008F2F0, &qword_10006FFF0);
LABEL_21:
    sub_100003CE4();
    return;
  }

  v78 = v27;
  v79 = v9;
  v80 = v0;
  sub_1000166B4(v19, v82);
  v35 = *(v84 + 56);
  v34 = v84 + 56;
  v36 = *(v84 + 32);
  sub_100009754();
  v39 = v38 & v37;
  v41 = (v40 + 63) >> 6;
  v42 = v81;

  v43 = 0;
  while (1)
  {
    v44 = v43;
    if (!v39)
    {
      break;
    }

LABEL_9:
    v39 &= v39 - 1;
    v45 = *(v84 + 48);
    sub_100007C44();
    v48 = *v46;
    v47 = v46[1];
    v49 = *(v42 + 16);

    if (v49 && (sub_100003BC0(), (v50 & 1) != 0))
    {
      sub_1000124C8();
      sub_10001C2A0(v52 + v53 * v51, v16);
      v54 = sub_100007020();
      sub_1000026BC(v54, v55, v56, v20);

      sub_100005000(v16, &unk_10008F2F0, &qword_10006FFF0);
    }

    else
    {
      sub_1000026BC(v16, 1, 1, v20);
      sub_100005000(v16, &unk_10008F2F0, &qword_10006FFF0);
      sub_10001C2A0(v82, v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = sub_100003BC0();
      v57 = *(v42 + 16);
      v76 = v58;
      sub_1000119E4();
      v74 = v59;
      if (v60)
      {
        goto LABEL_23;
      }

      sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74))
      {
        v61 = sub_100003BC0();
        if ((v76 & 1) != (v62 & 1))
        {
          goto LABEL_25;
        }

        v77 = v61;
        if (v76)
        {
          goto LABEL_19;
        }

LABEL_16:
        sub_100008F64();
        sub_100007AF0(v63);
        v66 = (v64 + 16 * v65);
        *v66 = v48;
        v66[1] = v47;
        sub_1000124C8();
        sub_1000166B4(v70, v67 + v68 * v69);
        sub_100017608();
        if (v60)
        {
          goto LABEL_24;
        }

        *(v42 + 16) = v71;
      }

      else
      {
        if ((v76 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_19:

        sub_1000124C8();
        sub_100020548(v78, v72 + v73 * v77);
      }
    }
  }

  while (1)
  {
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v43 >= v41)
    {
      sub_10001C5EC(v82);

      *(v79 + 16) = v42;
      goto LABEL_21;
    }

    v39 = *(v34 + 8 * v43);
    ++v44;
    if (v39)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10004D6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for EventValue();
  v6 = v5;
  if (v4)
  {
    sub_10001C2A0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000026BC(a2, v7, 1, v6);
}

void sub_10004D748()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10004D2B8();
}

void sub_10004D768()
{
  sub_100003B78();
  sub_1000050B0();
  v76 = v5;
  v7 = v6;
  v8 = type metadata accessor for EventValue();
  v9 = sub_100001EDC(v8);
  v75 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100004780();
  v73 = v13;
  sub_1000029A4();
  __chkstk_darwin(v14);
  sub_100003E0C();
  __chkstk_darwin(v15);
  v17 = (&v61 - v16);
  v18 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v18);
  v20 = *(v19 + 64);
  sub_100003EC8();
  v22 = __chkstk_darwin(v21);
  v24 = (&v61 - v23);
  v74 = v7;
  if ((sub_100004ED4(v22, v25, v26, v27, v28) & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_10004D6A4(v1, v24);
  if (sub_100002694(v24, 1, v8) == 1)
  {
    sub_100005000(v24, &unk_10008F2F0, &qword_10006FFF0);
LABEL_30:
    sub_100003CE4();
    return;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_10001C5EC(v24);
    goto LABEL_30;
  }

  v29 = v24[1];
  v67 = *v24;
  v68 = v3;
  v69 = v29;
  v31 = *(v76 + 56);
  v30 = v76 + 56;
  v32 = *(v76 + 32);
  sub_100009754();
  sub_1000105FC();

  v33 = 0;
  v34 = v7;
  v66 = v4;
LABEL_7:
  v70 = v34;
  while (v2)
  {
    v35 = v2;
LABEL_14:
    v2 = (v35 - 1) & v35;
    if (*(v34 + 16))
    {
      v72 = (v35 - 1) & v35;
      sub_100003FA8();
      v37 = *(v76 + 48);
      sub_100007C44();
      v39 = *v38;
      v40 = v38[1];

      v71 = v39;
      v41 = sub_100003BC0();
      if (v42)
      {
        v43 = *(v34 + 56);
        v44 = *(v75 + 72);
        sub_10001C2A0(v43 + v44 * v41, v17);
        if (!sub_10004E1F4())
        {
          v64 = v44;
          v45 = v17[1];
          v77 = *v17;
          v78 = v45;
          v46._countAndFlagsBits = v67;
          v46._object = v69;
          String.append(_:)(v46);
          v47 = v78;
          v48 = v66;
          *v66 = v77;
          *(v48 + 8) = v47;
          swift_storeEnumTagMultiPayload();
          sub_1000166B4(v48, v73);
          v34 = v70;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = sub_100003BC0();
          v49 = *(v34 + 16);
          LODWORD(v70) = v50;
          sub_1000119E4();
          v62 = v51;
          if (v52)
          {
            goto LABEL_32;
          }

          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v62))
          {
            v53 = sub_100003BC0();
            v55 = v70;
            if ((v70 & 1) != (v54 & 1))
            {
              goto LABEL_34;
            }

            v65 = v53;
          }

          else
          {
            v55 = v70;
          }

          if (v55)
          {

            sub_100020548(v73, *(v34 + 56) + v65 * v64);
          }

          else
          {
            sub_100008F64();
            sub_100007AF0(v56);
            v59 = (v57 + 16 * v58);
            *v59 = v71;
            v59[1] = v40;
            sub_1000166B4(v73, *(v34 + 56) + v58 * v64);
            sub_100017608();
            if (v52)
            {
              goto LABEL_33;
            }

            *(v34 + 16) = v60;
          }

          v2 = v72;
          goto LABEL_7;
        }

        sub_10001C5EC(v17);
        v2 = v72;
        v34 = v70;
      }

      else
      {

        v2 = v72;
      }
    }
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v0)
    {

      *(v74 + 16) = v34;
      goto LABEL_30;
    }

    v35 = *(v30 + 8 * v36);
    ++v33;
    if (v35)
    {
      v33 = v36;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004DB80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10004D768();
}

void sub_10004DBA0()
{
  sub_100003B78();
  sub_1000050B0();
  v80 = v5;
  v7 = v6;
  v8 = type metadata accessor for EventValue();
  v9 = sub_100001EDC(v8);
  v75 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100004780();
  v73 = v13;
  sub_1000029A4();
  __chkstk_darwin(v14);
  sub_100003E0C();
  __chkstk_darwin(v15);
  v17 = &v62[-v16];
  v18 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v18);
  v20 = *(v19 + 64);
  sub_100003EC8();
  v22 = __chkstk_darwin(v21);
  v24 = &v62[-v23];
  v74 = v7;
  if ((sub_100004ED4(v22, v25, v26, v27, v28) & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_10004D6A4(v1, v24);
  if (sub_100002694(v24, 1, v8) == 1)
  {
    sub_100005000(v24, &unk_10008F2F0, &qword_10006FFF0);
LABEL_29:
    sub_100003CE4();
    return;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_10001C5EC(v24);
    goto LABEL_29;
  }

  v30 = *v24;
  v29 = v24[1];
  v66 = v4;
  v67 = v30;
  v68 = v3;
  v69 = v29;
  v31 = *(v80 + 56);
  v32 = *(v80 + 32);
  sub_100009754();
  sub_1000105FC();

  v33 = 0;
  v34 = v7;
LABEL_7:
  v70 = v34;
  while (v2)
  {
    v35 = v2;
LABEL_14:
    v2 = (v35 - 1) & v35;
    if (*(v34 + 16))
    {
      v72 = (v35 - 1) & v35;
      sub_100003FA8();
      v37 = *(v80 + 48);
      sub_100007C44();
      v39 = *v38;
      v40 = v38[1];

      v71 = v39;
      v41 = sub_100003BC0();
      if (v42)
      {
        v43 = *(v75 + 72);
        sub_10001C2A0(*(v34 + 56) + v43 * v41, v17);
        if (!sub_10004E1F4())
        {
          v64 = v43;
          v44 = v17[1];
          v78 = *v17;
          v79 = v44;
          v76 = v67;
          v77 = v69;

          v76 = String.init<A>(_:)();
          v77 = v45;
          String.append<A>(contentsOf:)();

          v46 = v77;
          v47 = v66;
          *v66 = v76;
          *(v47 + 8) = v46;
          sub_10000BF10();
          swift_storeEnumTagMultiPayload();
          sub_1000166B4(v47, v73);
          v48 = v70;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v48;
          v65 = sub_100003BC0();
          v49 = *(v48 + 16);
          sub_1000119E4();
          v70 = v51;
          if (v52)
          {
            goto LABEL_31;
          }

          v53 = v50;
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v70))
          {
            v54 = sub_100003BC0();
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_33;
            }

            v65 = v54;
          }

          if (v53)
          {

            v34 = v78;
            sub_100020548(v73, *(v78 + 56) + v65 * v64);
          }

          else
          {
            v56 = v78;
            v57 = v65;
            sub_100008F64();
            sub_100007AF0(v58);
            v60 = (v59 + 16 * v57);
            *v60 = v71;
            v60[1] = v40;
            sub_1000166B4(v73, *(v56 + 56) + v57 * v64);
            sub_100017608();
            if (v52)
            {
              goto LABEL_32;
            }

            v34 = v56;
            *(v56 + 16) = v61;
          }

          v2 = v72;
          goto LABEL_7;
        }

        sub_10001C5EC(v17);
        v2 = v72;
        v34 = v70;
      }

      else
      {

        v2 = v72;
      }
    }
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v0)
    {

      *(v74 + 16) = v34;
      goto LABEL_29;
    }

    v35 = *(v80 + 56 + 8 * v36);
    ++v33;
    if (v35)
    {
      v33 = v36;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10004DFEC@<X0>(uint64_t (*a1)(void)@<X6>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void sub_10004E01C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10004DBA0();
}

uint64_t sub_10004E03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E0AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004E0F4()
{
  result = qword_10008E4F0;
  if (!qword_10008E4F0)
  {
    sub_100025D78(&qword_10008E4E8, &qword_10006D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4F0);
  }

  return result;
}

uint64_t sub_10004E158(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004E198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004E1F4()
{

  return swift_getEnumCaseMultiPayload();
}

__n128 sub_10004E20C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004E220(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004E260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10004E2BC(unint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100050424(a1);
    return a2;
  }

  else
  {

    return sub_10005051C(a1, a2);
  }
}

uint64_t sub_10004E348(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v27;
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
        v19 = sub_10004E5B8(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          sub_10004EBD8(v20 + 1);
        }

        sub_10004EE54(v21, v19);

        *v3 = v19;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v25 = v2;
    v10 = *(v6 + 40);
    type metadata accessor for Client();
    sub_100002044(&qword_10008E898);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = *(v6 + 32);
    sub_1000029D4();
    v14 = ~v13;
    while (1)
    {
      v15 = v12 & v14;
      if (((*(v6 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
      {
        v22 = *v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *v25;

        sub_10004F04C(v24, v15, isUniquelyReferenced_nonNull_native);
        *v25 = v28;
        *a1 = a2;
        return 1;
      }

      v16 = *(*(v6 + 48) + 8 * v15);
      sub_100009938();
      sub_100015CBC(&unk_1000902A0);

      v17 = Identifiable<>.id.getter();
      v18 = Identifiable<>.id.getter();

      if (v17 == v18)
      {
        break;
      }

      v12 = v15 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

uint64_t sub_10004E5B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000228D4(&unk_100090290, &qword_10006FBC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for Client();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_10004EBD8(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_100015CBC(&qword_10008E898);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
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

uint64_t sub_10004E7B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0);
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
      sub_100019D90(0, (v30 + 63) >> 6, v3 + 56);
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

void sub_10004EA14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100004794(a1, a2, a3);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v3 = v6;
    return;
  }

  v7 = 0;
  v9 = (v4 + 56);
  v8 = *(v4 + 56);
  v10 = 1 << *(v4 + 32);
  v29 = v3;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = v5 + 56;
  if ((v11 & v8) == 0)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    if (v10 >= 64)
    {
      sub_100019D90(0, (v10 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v3 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = v6[5];
    v19 = static Hasher._hash(seed:_:)();
    sub_1000090CC(v19);
    if (((-1 << v21) & ~*(v13 + 8 * v20)) == 0)
    {
      break;
    }

    sub_10000CDBC();
LABEL_21:
    sub_100009B9C();
    *(v13 + v26) |= v27;
    *(v6[6] + 8 * v28) = v17;
    ++v6[2];
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  sub_100007030();
  while (++v22 != v24 || (v23 & 1) == 0)
  {
    v25 = v22 == v24;
    if (v22 == v24)
    {
      v22 = 0;
    }

    v23 |= v25;
    if (*(v13 + 8 * v22) != -1)
    {
      sub_100003E1C();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_10004EBD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000228D4(&unk_100090290, &qword_10006FBC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v29 = v3;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_100019D90(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    type metadata accessor for Client();
    sub_100015CBC(&qword_10008E898);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    v3 = v29;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10004EE54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for Client();
  sub_100015CBC(&qword_10008E898);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_10004EF28(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10004EA14(v8 + 1, a4, a5);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10004F81C(v8 + 1, a4, a5);
LABEL_10:
      v14 = *v5;
      v15 = *(*v5 + 40);
      result = static Hasher._hash(seed:_:)();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v14 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v14 + 48) + 8 * a2) == v7)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_10004F368(a4, a5);
  }

LABEL_7:
  v10 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + 8 * a2) = v7;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v13;
  }

  return result;
}

uint64_t sub_10004F04C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10004EBD8(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_10004F9A8(v6 + 1);
LABEL_8:
      v18 = v3;
      v8 = *v3;
      v9 = *(*v3 + 40);
      type metadata accessor for Client();
      sub_100015CBC(&qword_10008E898);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          break;
        }

        v11 = *(*(v8 + 48) + 8 * a2);
        sub_100015CBC(&unk_1000902A0);

        v12 = Identifiable<>.id.getter();
        v13 = Identifiable<>.id.getter();

        if (v12 == v13)
        {
          goto LABEL_16;
        }

        result = a2 + 1;
      }

      v3 = v18;
      goto LABEL_13;
    }

    result = sub_10004F498();
  }

LABEL_13:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }

  return result;
}

void *sub_10004F210()
{
  v1 = v0;
  sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10004F368(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000228D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10004F498()
{
  v1 = v0;
  sub_1000228D4(&unk_100090290, &qword_10006FBC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10004F5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
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
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_10004F81C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100004794(a1, a2, a3);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = v6[5];
        v18 = static Hasher._hash(seed:_:)();
        sub_1000090CC(v18);
        if (((-1 << v20) & ~*(v12 + 8 * v19)) == 0)
        {
          break;
        }

        sub_10000CDBC();
LABEL_21:
        sub_100009B9C();
        *(v12 + v25) |= v26;
        *(v6[6] + 8 * v27) = v16;
        ++v6[2];
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_100007030();
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        if (*(v12 + 8 * v21) != -1)
        {
          sub_100003E1C();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_23;
        }

        v15 = *(v4 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v3 = v6;
  }
}

uint64_t sub_10004F9A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000228D4(&unk_100090290, &qword_10006FBC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v29 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        type metadata accessor for Client();
        sub_100015CBC(&qword_10008E898);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v29 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10004FC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FC6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = static Hasher._hash(seed:_:)();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004F368(&qword_10008F8B0, &qword_10006FBB8);
    v12 = v14;
  }

  v9 = *(*(v12 + 48) + 8 * v8);
  sub_100050064(v8);
  *v2 = v14;
  return v9;
}

uint64_t sub_10004FD68(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v7 = *(v5 + 32);
  sub_1000029D4();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((*(v5 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v10)) & 1) == 0)
    {
      return 0;
    }

    v12 = (*(v5 + 48) + 16 * v11);
    v13 = *v12 == a1 && v12[1] == a2;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = v11 + 1;
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v21 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004F210();
    v16 = v21;
  }

  v17 = (*(v16 + 48) + 16 * v11);
  v18 = *v17;
  v19 = v17[1];
  sub_1000501DC(v11);
  *v2 = v21;
  return v18;
}

uint64_t sub_10004FE8C()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10004E5B8(v3, v2);
  v16 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for Client();
  sub_100015CBC(&qword_10008E898);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    v9 = *(*(v4 + 48) + 8 * v8);
    sub_100015CBC(&unk_1000902A0);

    v10 = Identifiable<>.id.getter();
    v11 = Identifiable<>.id.getter();

    if (v10 == v11)
    {

      v12 = *(*(v4 + 48) + 8 * v8);
      sub_100015814(v8);
      v13 = Identifiable<>.id.getter();
      if (v13 == Identifiable<>.id.getter())
      {
        *v15 = v16;
        return v12;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100050064(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_15:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000501DC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_100050394(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10001980C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100050424(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_10004FC6C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10005051C(unint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v39 = 0;
  v4 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v43 = ~v8;
  v44 = a1 + 56;
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
  v12 = a2 + 7;
  v13 = 1;
  v45 = a1;
  if ((v9 & v5) == 0)
  {
LABEL_7:
    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v14);
      ++v15;
      if (v10)
      {
        goto LABEL_11;
      }
    }

LABEL_35:
    sub_100008104();
    return v3;
  }

LABEL_6:
  v14 = v4;
LABEL_11:
  v16 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
  v17 = v3[5];
  v18 = static Hasher._hash(seed:_:)();
  v19 = -1 << *(v3 + 32);
  v20 = ~v19;
  while (1)
  {
    v4 = v18 & v20;
    v6 = (v18 & v20) >> 6;
    v7 = 1 << (v18 & v20);
    if ((v7 & v12[v6]) == 0)
    {
      v4 = v14;
      v6 = v44;
      a1 = v45;
      v7 = -1;
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (*(v3[6] + 8 * v4) == v2)
    {
      break;
    }

    v18 = v4 + 1;
  }

  v47 = v43;
  v48 = v14;
  v49 = v10;
  v46[0] = v45;
  v46[1] = v44;
  v13 = (63 - v19) >> 6;
  v2 = 8 * v13;

  if (v13 > 0x80)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v40 = v13;
    v41 = &v39;
    __chkstk_darwin(v21);
    v13 = &v39 - v22;
    memcpy(&v39 - v22, v3 + 7, v2);
    v23 = v3[2];
    *(v13 + 8 * v6) &= ~v7;
    v24 = v23 - 1;
    v4 = 1;
    v7 = v44;
    v6 = v45;
LABEL_19:
    v42 = v24;
LABEL_20:
    while (v10)
    {
LABEL_25:
      v26 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v26)));
      v27 = v3[5];
      v28 = static Hasher._hash(seed:_:)();
      v29 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v30 = v28 & v29;
        v31 = (v28 & v29) >> 6;
        v32 = 1 << (v28 & v29);
        if ((v32 & v12[v31]) == 0)
        {
          break;
        }

        v28 = v30 + 1;
        if (*(v3[6] + 8 * v30) == v2)
        {
          v33 = *(v13 + 8 * v31);
          *(v13 + 8 * v31) = v33 & ~v32;
          if ((v33 & v32) == 0)
          {
            goto LABEL_20;
          }

          v24 = v42 - 1;
          if (__OFSUB__(v42, 1))
          {
            __break(1u);
          }

          if (v42 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_35;
          }

          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v11)
      {
        v3 = sub_100019A9C(v13, v40, v42, v3);
        goto LABEL_35;
      }

      v10 = *(v7 + 8 * v25);
      ++v14;
      if (v10)
      {
        v14 = v25;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v39;
  v37 = sub_100050A84(v35, v13, v3 + 7, v13, v3, v4, v46);
  if (!v36)
  {
    v38 = v37;

    v43 = v47;
    v3 = v38;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_100050908(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
LABEL_2:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_7:
    v15 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v16 = *(a3 + 40);
    result = static Hasher._hash(seed:_:)();
    v17 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v18 = result & v17;
      v19 = (result & v17) >> 6;
      v20 = 1 << (result & v17);
      if ((v20 & *(v11 + 8 * v19)) == 0)
      {
        break;
      }

      result = v18 + 1;
      if (*(*(a3 + 48) + 8 * v18) == v15)
      {
        v21 = v8[v19];
        v8[v19] = v21 & ~v20;
        if ((v21 & v20) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v10--, 1))
        {
          goto LABEL_16;
        }

        if (v10)
        {
          goto LABEL_2;
        }

        return &_swiftEmptySetSingleton;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v12;
      a5[4] = 0;

      return sub_100019A9C(v8, a2, v10, a3);
    }

    v13 = *(a5[1] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100050A84(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100050908(a1, a2, a5, a6, a7);

  return v12;
}

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.Availability(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_100050C10()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100050CD4();
    if (v1 <= 0x3F)
    {
      sub_100050D38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100050CD4()
{
  if (!qword_10008F930)
  {
    sub_100025D78(&qword_10008E238, &qword_10006CC98);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10008F930);
    }
  }
}

void sub_100050D38()
{
  if (!qword_10008F938)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10008F938);
    }
  }
}

uint64_t sub_100050D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_100020E88);
}

uint64_t sub_100050DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 24);

    return sub_100002694(v9, a2, v8);
  }
}

uint64_t sub_100050E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionConfiguration.BackendHTTP(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100020E84);
}

uint64_t sub_100050ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 24);

    return sub_1000026BC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100050F58(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

unint64_t sub_100051004()
{
  result = qword_10008FA20;
  if (!qword_10008FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FA20);
  }

  return result;
}

uint64_t sub_100051058(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_100015F14(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100051118(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 57) = a3;
  *(v4 + 104) = a1;
  return _swift_task_switch(sub_100051140, v3, 0);
}

uint64_t sub_100051140()
{
  sub_100004680();
  v0[16] = *(v0[15] + 112);
  sub_1000579CC(&unk_10006FD28);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v2 = sub_1000027EC(v1);

  return v3(v2);
}

uint64_t sub_1000511D8()
{
  sub_100004680();
  sub_100003B0C();
  sub_100009A8C();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 120);
  v6 = *v0;
  sub_1000043E4();
  *v7 = v6;
  *(v9 + 58) = v8;

  v10 = sub_100009A40();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000512D0()
{
  sub_100004680();
  if (*(v0 + 58) == 3)
  {
    v1 = *(v0 + 112);
LABEL_7:
    *(v0 + 88) = type metadata accessor for CachedSession(0);
    *(v0 + 96) = &off_100088608;
    sub_100025FDC((v0 + 64));
    sub_100002068();
    sub_100057810(v1, v3, v4);
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 144) = v5;
    *v5 = v6;
    v7 = sub_100007C50(v5);

    return sub_10001AC0C(v7, v0 + 64);
  }

  v1 = *(v0 + 112);
  if (*(v1 + 72) == 1 || *(v0 + 57) != 0)
  {
    goto LABEL_7;
  }

  v9 = *(v0 + 104);
  *v9 = _swiftEmptyArrayStorage;
  *(v9 + 8) = _swiftEmptyArrayStorage;
  *(v9 + 16) = 1;
  *(v9 + 24) = 1701736302;
  *(v9 + 32) = 0xE400000000000000;
  *(v9 + 40) = 2;
  sub_100001D4C();

  return v10();
}

uint64_t sub_100051414()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    v9 = *(v3 + 120);
    v10 = sub_100016754();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    sub_100005284((v3 + 64));
    v13 = *(v3 + 56);
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v16 = *(v3 + 32);
    v17 = *(v3 + 104);
    *v17 = *(v3 + 16);
    *(v17 + 16) = v16;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    *(v17 + 40) = v13;
    sub_100001D4C();

    return v18();
  }
}

uint64_t sub_100051554()
{
  sub_100004680();
  sub_100005284((v0 + 64));
  sub_100001D4C();
  v2 = *(v0 + 152);

  return v1();
}

void sub_1000515B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v5 = &unk_10008F2F0;
  v6 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v7 = sub_100001D80(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v43 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v16 = a3 + 56;
  v40 = _swiftEmptyArrayStorage;
  v41 = a1;
  v44 = v15;
  v39 = a3 + 56;
LABEL_2:
  for (i = (v16 + 32 * v14); ; i += 4)
  {
    if (v15 == v14)
    {
      sub_100018228(v40, &type metadata for Int64, &protocol witness table for Int64, sub_10004E32C);
      return;
    }

    if (v14 >= v15)
    {
      break;
    }

    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_24;
    }

    v19 = *i;
    if (*(*i + 16))
    {
      v20 = v13;
      v21 = *(i - 1);

      v22 = sub_100003BC0();
      if (v23)
      {
        v24 = v22;
        v25 = v5;
        v26 = *(v19 + 56);
        v27 = type metadata accessor for EventValue();
        sub_100003C44(v27);
        v29 = v26 + *(v28 + 72) * v24;
        v13 = v20;
        sub_100057810(v29, v20, type metadata accessor for EventValue);

        sub_1000026BC(v20, 0, 1, v27);
        sub_10004E03C(v20, v43);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v15 = v44;
          v33 = *v43;
          v5 = v25;
LABEL_17:
          sub_100005000(v13, v5, &qword_10006FFF0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100023234(0, v40[2] + 1, 1, v40);
            v40 = v37;
          }

          v35 = v40[2];
          v34 = v40[3];
          if (v35 >= v34 >> 1)
          {
            sub_100023234(v34 > 1, v35 + 1, 1, v40);
            v40 = v38;
          }

          v16 = v39;
          v36 = v40;
          v40[2] = v35 + 1;
          v36[v35 + 4] = v33;
          v14 = v18;
          goto LABEL_2;
        }

        v5 = v25;
        v15 = v44;
        if (EnumCaseMultiPayload == 2)
        {
          v33 = *v43;
          if (*v43 < 0)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }

        sub_10005786C(v43, type metadata accessor for EventValue);
      }

      else
      {

        v32 = type metadata accessor for EventValue();
        sub_1000026BC(v13, 1, 1, v32);
        v15 = v44;
      }
    }

    else
    {
      v31 = type metadata accessor for EventValue();
      sub_1000026BC(v13, 1, 1, v31);
    }

    sub_100005000(v13, v5, &qword_10006FFF0);
    ++v14;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_100051914(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = sub_100016754();
  return _swift_task_switch(v3, v4, v5);
}

void sub_100051940()
{
  v1 = qword_100095AE8;
  v0[18] = qword_100095AE8;
  if (v1)
  {
    sub_100002624();
    sub_100012328(&unk_10006FD10);
    swift_task_alloc();
    sub_100008D5C();
    v0[19] = v2;
    *v2 = v3;
    v2[1] = sub_1000519F8;
    v4 = v0[16];

    v5(v0 + 2, v4, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000519F8()
{
  sub_100002624();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[20] = v0;

  if (v0)
  {
    v9 = v3[17];
    v10 = sub_100016754();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v3[18];

    sub_1000579CC(&unk_10006FD18);
    v20 = v14;
    swift_task_alloc();
    sub_100008D5C();
    v3[21] = v15;
    *v15 = v16;
    v15[1] = sub_100051B68;
    v17 = v3[16];
    v18 = v3[17];

    return v20(v3 + 2, v17);
  }
}

uint64_t sub_100051B68()
{
  sub_100004EC0();
  sub_100004F30();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;

  v9 = *(v3 + 16);
  if (v0)
  {
    *(v3 + 96) = v9;
    sub_100005000(v3 + 96, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 104) = *(v3 + 24);
    sub_100005000(v3 + 104, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 64) = *(v3 + 40);
    sub_10000D9BC(v3 + 64);
    v10 = *(v7 + 8);
    sub_100002794();

    return v11(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v3 + 112) = v9;
    sub_100005000(v3 + 112, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 120) = *(v3 + 24);
    sub_100005000(v3 + 120, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 80) = *(v3 + 40);
    sub_10000D9BC(v3 + 80);
    v20 = *(v7 + 8);
    sub_100002794();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_100051D48()
{
  sub_100004680();
  v1 = *(v0 + 144);

  v2 = *(v0 + 160);
  sub_100001D4C();

  return v3();
}

uint64_t sub_100051DA4()
{
  sub_100004680();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v6 = sub_100009A40();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100051E64()
{
  sub_100002624();
  v1 = **(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 120);
    v6 = *(*(v0 + 136) + 80);
    sub_1000051F0();
    sub_100057810(v7 + v8, v9, v10);
    v12 = v5[13];
    v11 = v5[14];
    *(v0 + 64) = v5[12];
    *(v0 + 80) = v12;
    *(v0 + 96) = v11;
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 176) = v13;
    *v13 = v14;
    v13[1] = sub_100052060;
    v15 = *(v0 + 128);
    v16 = v0 + 64;
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
LABEL_11:
      v31 = *(v0 + 144);
      v30 = *(v0 + 152);

      sub_100004EF4();

      return v32(v2, v3);
    }

    sub_100022FE0();
    *(v0 + 208) = 0;
    *(v0 + 216) = v17;
    if (!*(v0 + 168))
    {
      v29 = v17;
      type metadata accessor for BackendGroup();
      v2 = sub_100057A08();
      swift_defaultActor_initialize();
      *(v2 + 112) = v29;
      v3 = &off_100087418;
      goto LABEL_11;
    }

    v18 = *(v0 + 160);
    v19 = *(v0 + 144);
    v20 = *(v0 + 120);
    v21 = *(*(v0 + 136) + 80);
    sub_1000051F0();
    sub_100057810(v22 + v23, v24, v25);
    sub_1000579DC(v20[14], v20[13], v20[12]);
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 224) = v26;
    *v26 = v27;
    v16 = sub_100007C50(v26);
  }

  return sub_100005E6C(v16);
}

uint64_t sub_100052060()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v8 = *(v7 + 176);
  v9 = *v2;
  sub_1000043E4();
  *v10 = v9;
  v5[23] = v1;

  if (v1)
  {
    v11 = v5[19];
    v12 = v5[16];
    sub_1000047C0();
    sub_10005786C(v13, v14);
    sub_1000119F4();
  }

  else
  {
    v15 = v5[16];
    v5[24] = v0;
    v5[25] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100052180()
{
  sub_100002624();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  v4 = v0[16];
  v5 = *(v0[15] + 240);
  sub_100012808();
  v10 = sub_100056F8C(v6, v3, v7, v2, v8, v9);
  v12 = v11;

  sub_1000047C0();
  sub_10005786C(v3, v13);
  v15 = v0[18];
  v14 = v0[19];

  sub_100004EF4();

  return v16(v10, v12);
}

uint64_t sub_100052230()
{
  sub_100004680();
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];

  sub_100001D4C();

  return v4();
}

uint64_t sub_100052294()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *v2;
  sub_1000043E4();
  *v10 = v9;
  v5[29] = v1;

  if (v1)
  {
    v11 = v5[27];
    v12 = v5[16];

    sub_1000119F4();
  }

  else
  {
    v13 = v5[16];
    v5[30] = v0;
    v5[31] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000523B0()
{
  sub_100004EC0();
  sub_100004F30();
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];
  v4 = v0[18];
  v5 = v0[16];
  v6 = *(v0[15] + 240);
  sub_100012808();
  v12 = sub_100056F8C(v7, v8, v9, v2, v10, v11);
  v14 = v13;

  v15 = *(v3 + 16);
  v16 = v0[27];
  if (v15 >= *(v3 + 24) >> 1)
  {
    sub_100003EEC();
    v16 = v46;
  }

  v17 = v0[18];
  sub_1000047C0();
  sub_10005786C(v18, v19);
  *(v16 + 16) = v15 + 1;
  v20 = v16 + 16 * v15;
  *(v20 + 32) = v12;
  *(v20 + 40) = v14;
  v21 = v0[26] + 1;
  v0[26] = v21;
  v0[27] = v16;
  if (v21 == v0[21])
  {
    type metadata accessor for BackendGroup();
    v22 = sub_100057A08();
    swift_defaultActor_initialize();
    *(v22 + 112) = v16;
    v24 = v0[18];
    v23 = v0[19];

    sub_100004EF4();
    sub_100002794();

    return v28(v25, v26, v27, v28, v29, v30, v31, v32);
  }

  else
  {
    v35 = v0[17];
    v34 = v0[18];
    v36 = v0[15];
    v37 = v0[20] + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v38 = *(v35 + 72);
    sub_1000051F0();
    sub_100057810(v39, v40, v41);
    sub_1000579DC(v36[14], v36[13], v36[12]);
    swift_task_alloc();
    sub_100008D5C();
    v0[28] = v42;
    *v42 = v43;
    sub_100007C50(v42);
    sub_100002794();

    return sub_100005E6C(v44);
  }
}

uint64_t sub_100052560()
{
  sub_100004680();
  v1 = v0[18];
  sub_1000047C0();
  sub_10005786C(v2, v3);
  v4 = v0[29];
  v6 = v0[18];
  v5 = v0[19];

  sub_100001D4C();

  return v7();
}

uint64_t sub_1000525D0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v3[17] = v4;
  v5 = *(v4 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = *(*(type metadata accessor for CachedSession(0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000526D4, v2, 0);
}

uint64_t sub_1000526D4()
{
  sub_100004EC0();
  sub_100004F30();
  v1 = *(v0 + 112);
  v2 = *v1;
  *(v0 + 176) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 184) = v3;
  if (v3 == 1)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    sub_100002068();
    sub_100057810(v7, v8, v9);
    v10 = *(v6 + 80);
    sub_1000051F0();
    sub_100057810(v2 + v11, v5, v12);
    v14 = v7[1];
    v13 = v7[2];
    *(v0 + 64) = *v7;
    *(v0 + 80) = v14;
    *(v0 + 96) = v13;
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 192) = v15;
    *v15 = v16;
    v15[1] = sub_100052908;
    v17 = *(v0 + 128);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    sub_100022FE0();
    *(v0 + 224) = 0;
    *(v0 + 232) = v18;
    if (!*(v0 + 184))
    {
      v36 = v18;
      type metadata accessor for BackendGroup();
      v37 = sub_100057A08();
      swift_defaultActor_initialize();
      *(v37 + 112) = v36;
LABEL_11:
      v39 = *(v0 + 160);
      v38 = *(v0 + 168);
      v41 = *(v0 + 144);
      v40 = *(v0 + 152);

      sub_100004EF4();
      sub_100002794();

      return v45(v42, v43, v44, v45, v46, v47, v48, v49);
    }

    v19 = *(v0 + 176);
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);
    v22 = *(v0 + 120);
    v23 = *(*(v0 + 136) + 80);
    sub_1000051F0();
    sub_100057810(v24 + v25, v26, v27);
    sub_100002068();
    v28 = sub_100004EA4();
    sub_100057810(v28, v29, v30);
    sub_1000579DC(v22[2], v22[1], *v22);
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 240) = v31;
    *v31 = v32;
    sub_100007C50(v31);
  }

  sub_100002794();

  return sub_100005E6C(v33);
}

uint64_t sub_100052908()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v2;
  sub_1000043E4();
  *v10 = v9;
  v5[25] = v1;

  if (v1)
  {
    v11 = v5[19];
    v12 = v5[16];
    sub_1000047C0();
    sub_10005786C(v13, v14);
    sub_1000119F4();
  }

  else
  {
    v15 = v5[16];
    v5[26] = v0;
    v5[27] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100052A28()
{
  sub_100004EC0();
  sub_100004F30();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = *(v0[15] + 72);
  sub_100012808();
  sub_100057368(v3, v4, v7, v2, v8, v9);

  sub_1000047C0();
  sub_10005786C(v4, v10);
  sub_100009950();
  sub_10005786C(v3, v11);
  v13 = v0[20];
  v12 = v0[21];
  v15 = v0[18];
  v14 = v0[19];

  sub_100004EF4();
  sub_100002794();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_100052B00()
{
  sub_100002624();
  v1 = v0[21];
  sub_100009950();
  sub_10005786C(v2, v3);
  v4 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];

  sub_100001D4C();

  return v9();
}

uint64_t sub_100052B8C()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v8 = *(v7 + 240);
  v9 = *v2;
  sub_1000043E4();
  *v10 = v9;
  v5[31] = v1;

  if (v1)
  {
    v11 = v5[29];
    v12 = v5[16];

    sub_1000119F4();
  }

  else
  {
    v13 = v5[16];
    v5[32] = v0;
    v5[33] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100052CA8()
{
  sub_100004F30();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v7 = *(v0[15] + 72);
  sub_100012808();
  v12 = sub_100057368(v4, v8, v9, v2, v10, v11);
  v14 = v13;

  sub_100009950();
  sub_10005786C(v4, v15);
  v16 = *(v3 + 16);
  v17 = v0[29];
  if (v16 >= *(v3 + 24) >> 1)
  {
    sub_100003EEC();
    v17 = v45;
  }

  v18 = v0[18];
  sub_1000047C0();
  sub_10005786C(v19, v20);
  *(v17 + 16) = v16 + 1;
  v21 = v17 + 16 * v16;
  *(v21 + 32) = v12;
  *(v21 + 40) = v14;
  v22 = v0[28] + 1;
  v0[28] = v22;
  v0[29] = v17;
  if (v22 == v0[23])
  {
    type metadata accessor for BackendGroup();
    v23 = sub_100057A08();
    swift_defaultActor_initialize();
    *(v23 + 112) = v17;
    v25 = v0[20];
    v24 = v0[21];
    v27 = v0[18];
    v26 = v0[19];

    sub_100004EF4();

    return v28(v23, &off_100087418);
  }

  else
  {
    v30 = v0[20];
    v32 = v0[17];
    v31 = v0[18];
    v33 = v0[15];
    v34 = v0[22] + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v35 = *(v32 + 72);
    sub_1000051F0();
    sub_100057810(v36, v37, v38);
    sub_100002068();
    v39 = sub_100004EA4();
    sub_100057810(v39, v40, v41);
    sub_1000579DC(v33[2], v33[1], *v33);
    swift_task_alloc();
    sub_100008D5C();
    v0[30] = v42;
    *v42 = v43;
    v44 = sub_100007C50(v42);

    return sub_100005E6C(v44);
  }
}

uint64_t sub_100052E9C()
{
  sub_100002624();
  v1 = v0[20];
  v2 = v0[18];
  sub_100009950();
  sub_10005786C(v3, v4);
  sub_1000047C0();
  sub_10005786C(v2, v5);
  v6 = v0[31];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];

  sub_100001D4C();

  return v11();
}

uint64_t sub_100052F38()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006E8F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 3600;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = String.init(cString:)();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  *(v20 + v21) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 48);
  v23 = &v4[v1];
  *v23 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  *(v23 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_NETWORK_UPLOAD_SIZE)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_NETWORK_UPLOAD_SIZE;
  *(v24 + v25) = 5242880;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = (v4 + 10 * v1);
  v27 = *(v0 + 48);
  *v26 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v26 + v27) = XPC_ACTIVITY_INTERVAL_5_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = (v4 + 11 * v1);
  v29 = (v28 + *(v0 + 48));
  *v28 = XPC_ACTIVITY_GROUP_NAME;
  *v29 = 0xD00000000000001DLL;
  v29[1] = 0x8000000100071DE0;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
    v30 = (v4 + 12 * v1);
    v31 = *(v0 + 48);
    *v30 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
    sub_100038DC4();
    result = Dictionary.init(dictionaryLiteral:)();
    qword_100095AB8 = result;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100053348()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095AC0);
  sub_1000050E4(v0, qword_100095AC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000533BC()
{
  sub_100004680();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for CachedSession(0);
  sub_100001D80(v3);
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = sub_100009A40();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100053448()
{
  sub_100002618();
  v23 = v0;
  if (qword_10008DDB8 != -1)
  {
    sub_100003FB4();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[8] = sub_1000050E4(v3, qword_100095AC0);
  sub_100002068();
  v4 = sub_100004EA4();
  sub_100057810(v4, v5, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = sub_1000054D0(v8);
  v10 = v0[7];
  if (v9)
  {
    v11 = sub_100004D20();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    v13 = *(v10 + 48);
    v14 = *(v10 + 56);

    sub_100009950();
    sub_10005786C(v10, v15);
    v16 = sub_1000053A0(v13, v14, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "sending events for session: %{public}s", v11, 0xCu);
    sub_100005284(v12);
    sub_100003D78();
    sub_100001D1C();
  }

  else
  {

    sub_100009950();
    sub_10005786C(v10, v17);
  }

  v18 = qword_100095AF0;
  v0[9] = qword_100095AF0;
  if (v18)
  {
    sub_100012328(dword_10006FD00);
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_100053630;
    v20 = v0[4];

    v21(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100053630()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 80);
  *v4 = *v1;
  v3[11] = v7;
  v3[12] = v8;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = sub_1000542CC;
  }

  else
  {
    v11 = v3[9];
    v12 = v3[5];

    v10 = sub_10005374C;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_10005374C()
{
  sub_100004F30();
  if (v0[11])
  {
    v1 = v0[4];
    v2 = qword_100095AD8;
    v0[14] = qword_100095AD8;
    if (v2)
    {
      v3 = *(v1 + 48);
      v4 = *(v1 + 56);

      v5 = swift_task_alloc();
      v0[15] = v5;
      *v5 = v0;
      v6 = sub_100001D9C(v5);

      sub_10003E06C(v6, v7, 0x400000, 50);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100056A18();
    sub_100004F00();
    *v8 = 0;
    swift_willThrow();
    v10 = v0[6];
    v9 = v0[7];

    sub_100001D4C();

    v11();
  }
}

uint64_t sub_100053880()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v0;

  if (v0)
  {
    v8 = v3[5];
    v9 = sub_100054338;
  }

  else
  {
    v10 = v3[14];
    v11 = v3[5];

    v9 = sub_100053998;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_100053998()
{
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = static Task<>.isCancelled.getter();
    v3 = v0[16];
    if ((v2 & 1) == 0)
    {
      v16 = v0[8];
      v17 = v0[6];
      v18 = v0[4];
      sub_100002068();
      sub_100057810(v19, v20, v21);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v24 = sub_1000054D0(v23);
      v25 = v0[16];
      v26 = v0[6];
      if (v24)
      {
        v27 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v27 = 134349826;
        *(v27 + 4) = *(v1 + 16);

        *(v27 + 12) = 2080;
        v28 = *(v26 + 48);
        v29 = *(v26 + 56);

        sub_100009950();
        sub_10005786C(v26, v30);
        v31 = sub_10000531C();
        v34 = sub_1000053A0(v31, v32, v33);

        *(v27 + 14) = v34;
        *(v27 + 22) = 2082;
        sub_1000515B0(0x646F6874656D5FLL, 0xE700000000000000, v25);
        Set.description.getter();

        v35 = sub_10000531C();
        v38 = sub_1000053A0(v35, v36, v37);

        *(v27 + 24) = v38;
        *(v27 + 32) = 2082;
        sub_1000515B0(0x7375746174735FLL, 0xE700000000000000, v25);
        v39 = Set.description.getter();
        v41 = v40;

        v42 = sub_1000053A0(v39, v41, &v63);

        *(v27 + 34) = v42;
        _os_log_impl(&_mh_execute_header, v22, v23, "sending %{public}ld events for session %s with categories [%{public}s] types [%{public}s]", v27, 0x2Au);
        swift_arrayDestroy();
        sub_100003D78();
        sub_100001D1C();
      }

      else
      {
        v43 = v0[16];

        sub_100009950();
        sub_10005786C(v26, v44);
      }

      v45 = *(v1 + 16);
      v0[18] = v45;
      v46 = _swiftEmptyArrayStorage;
      if (v45)
      {
        v47 = v0[16];
        v0[2] = _swiftEmptyArrayStorage;
        sub_10001C5CC(0, v45, 0);
        v46 = v0[2];
        v48 = (v47 + 56);
        do
        {
          v50 = *(v48 - 2);
          v49 = *(v48 - 1);
          v51 = *v48;
          v0[2] = v46;
          v53 = v46[2];
          v52 = v46[3];

          if (v53 >= v52 >> 1)
          {
            sub_10001C5CC((v52 > 1), v53 + 1, 1);
            v46 = v0[2];
          }

          v46[2] = v53 + 1;
          v54 = &v46[3 * v53];
          v54[4] = v50;
          v54[5] = v49;
          v54[6] = v51;
          v48 += 4;
          --v45;
        }

        while (v45);
      }

      v0[19] = v46;
      v56 = v0[11];
      v55 = v0[12];
      swift_getObjectType();
      v57 = *(v55 + 24);
      v62 = v57 + *v57;
      v58 = v57[1];
      v59 = swift_task_alloc();
      v0[20] = v59;
      *v59 = v0;
      v59[1] = sub_100053E2C;
      sub_1000058EC();

      __asm { BRAA            X3, X16 }
    }

    v4 = v0[11];
    v5 = v0[16];

    sub_100056A18();
    v6 = sub_100004F00();
    sub_100002668(v6, v7);
    swift_unknownObjectRelease();
    v9 = v0[6];
    v8 = v0[7];

    sub_100001D4C();
  }

  else
  {
    v10 = v0[11];
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[16];

    swift_unknownObjectRelease();

    sub_100001D4C();
  }

  sub_1000058EC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100053E2C()
{
  sub_100002624();
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;
  v5 = v2[20];
  *v4 = *v1;
  v3[21] = v0;

  v6 = v2[19];
  if (v0)
  {
    v7 = v3[16];
    v8 = v3[5];

    v9 = sub_1000543B0;
    v10 = v8;
  }

  else
  {
    v11 = v3[5];

    v9 = sub_1000119F4();
  }

  return _swift_task_switch(v9, v10, 0);
}

void sub_100053F70()
{
  v1 = qword_100095AD8;
  v0[22] = qword_100095AD8;
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[16];
    if (v2)
    {
      v0[3] = _swiftEmptyArrayStorage;

      sub_100060CA4(0, v2, 0);
      v4 = 0;
      v5 = v0[3];
      v6 = (v3 + 32);
      v7 = v5[2];
      do
      {
        v9 = *v6;
        v6 += 4;
        v8 = v9;
        v0[3] = v5;
        v10 = v5[3];
        if (v7 >= v10 >> 1)
        {
          sub_100060CA4((v10 > 1), v7 + 1, 1);
          v5 = v0[3];
        }

        v11 = v0[18];
        ++v4;
        v5[2] = v7 + 1;
        v5[v7++ + 4] = v8;
      }

      while (v4 != v11);
      v12 = v0[16];
    }

    else
    {

      v5 = _swiftEmptyArrayStorage;
    }

    v0[23] = v5;
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_1000540F8;

    sub_10003E188(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000540F8()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = sub_100054488;
  }

  else
  {
    v12 = v3[22];
    v11 = v3[23];
    v13 = v3[5];

    v10 = sub_100054210;
    v9 = v13;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_100054210()
{
  v1 = qword_100095AD8;
  v0[14] = qword_100095AD8;
  if (v1)
  {
    sub_100002624();
    v2 = v0[4];
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);

    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v6 = sub_100001D9C(v5);

    sub_10003E06C(v6, v7, 0x400000, 50);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000542CC()
{
  sub_100004680();
  v1 = v0[9];

  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];

  sub_100001D4C();

  return v5();
}

uint64_t sub_100054338()
{
  sub_100004680();
  v1 = v0[14];
  v2 = v0[11];

  swift_unknownObjectRelease();
  v3 = v0[17];
  v5 = v0[6];
  v4 = v0[7];

  sub_100001D4C();

  return v6();
}

uint64_t sub_1000543B0()
{
  sub_100004F30();
  v1 = v0[21];
  v2 = static Task<>.isCancelled.getter();
  v3 = v0[11];
  if (v2)
  {
    sub_100056A18();
    v4 = sub_100004F00();
    sub_100002668(v4, v5);
  }

  else
  {
    sub_100056A18();
    sub_100004F00();
    *v6 = v1;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  v8 = v0[6];
  v7 = v0[7];

  sub_100001D4C();

  return v9();
}

uint64_t sub_100054488()
{
  sub_100004F30();
  v2 = v0[22];
  v1 = v0[23];

  v3 = v0[25];
  v4 = static Task<>.isCancelled.getter();
  v5 = v0[11];
  if (v4)
  {
    sub_100056A18();
    v6 = sub_100004F00();
    sub_100002668(v6, v7);
  }

  else
  {
    sub_100056A18();
    sub_100004F00();
    *v8 = v3;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  v10 = v0[6];
  v9 = v0[7];

  sub_100001D4C();

  return v11();
}

uint64_t sub_100054570()
{
  sub_100004680();
  v1[20] = v0;
  v2 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v2);
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = *(type metadata accessor for CachedSession(0) - 8);
  v1[22] = v5;
  v6 = *(v5 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v7 = sub_100009A40();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000546A8()
{
  if (qword_10008DDB8 != -1)
  {
    sub_100003FB4();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_1000050E4(v1, qword_100095AC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (sub_1000054D0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "starting submission activity", v4, 2u);
    sub_100001D1C();
  }

  result = static Task<>.isCancelled.getter();
  if (result)
  {
    result = static Task<>.isCancelled.getter();
    if (result)
    {
      sub_100001E10();

      sub_100001D4C();
      sub_10000B7DC();

      __asm { BRAA            X1, X16 }
    }

    v12 = qword_100095AD8;
    v0[53] = qword_100095AD8;
    if (v12)
    {

      v13 = swift_task_alloc();
      v0[54] = v13;
      *v13 = v0;
      sub_100009BB0(v13);
      sub_10000B7DC();

      return sub_10003EE34(v14);
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v8 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  sub_1000090E0(v9);
  sub_10000B7DC();

  return sub_10003DD7C(v10);
}

uint64_t sub_1000548D0()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 264);
  *v4 = *v1;
  v3[34] = v7;
  v3[35] = v0;

  if (v0)
  {
    v8 = v3[20];
    v9 = sub_1000559B4;
  }

  else
  {
    v10 = v3[32];
    v11 = v3[20];

    v9 = sub_1000549E8;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000549E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004CE4();
  sub_100002618();
  v17 = v12[34];
  v18 = *(v17 + 16);
  v12[36] = v18;
  if (!v18)
  {

    goto LABEL_10;
  }

  v12[37] = 0;
  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12[38] = *(v17 + 32);
  v12[39] = *(v17 + 40);

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v33 = v12[31];

    v34 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005B68();

    if (os_log_type_enabled(v34, v13))
    {
      sub_100004D20();
      sub_100006FB8();
      sub_10000B9B8();
      *(v14 + 4) = sub_1000579E8(4.8751e-34, v35);
      sub_100015018(&_mh_execute_header, v36, v37, "sending events for client type: %{public}s");
      sub_10000393C();
      sub_100003D78();
    }

    v38 = qword_100095AE8;
    v12[40] = qword_100095AE8;
    if (v38)
    {
      sub_100008F70();
      sub_100004EA4();
      sub_10000C690();

      return _swift_task_switch(v17, v15, v16);
    }

    goto LABEL_25;
  }

  v19 = v12[34];

  v17 = static Task<>.isCancelled.getter();
  if ((v17 & 1) == 0)
  {
    v20 = qword_100095AD8;
    v12[32] = qword_100095AD8;
    if (v20)
    {

      v21 = swift_task_alloc();
      v12[33] = v21;
      *v21 = v12;
      sub_1000090E0();
      sub_10000C690();

      return sub_10003DD7C(v22);
    }

    goto LABEL_27;
  }

LABEL_10:
  v17 = static Task<>.isCancelled.getter();
  if (v17)
  {
    sub_100001E10();

    sub_100001D4C();
    sub_10000C690();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  v40 = qword_100095AD8;
  v12[53] = qword_100095AD8;
  if (!v40)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return _swift_task_switch(v17, v15, v16);
  }

  v41 = swift_task_alloc();
  v12[54] = v41;
  *v41 = v12;
  sub_100009BB0(v41);
  sub_10000C690();

  return sub_10003EE34(v42);
}

uint64_t sub_100054C78()
{
  sub_100004680();
  v1 = v0[40];
  v2 = v0[20];
  sub_1000055F0(v0[38], v0[39]);

  return _swift_task_switch(sub_100054CEC, v2, 0);
}

uint64_t sub_100054CEC()
{
  sub_100004680();
  v1 = v0[39];
  v2 = qword_100095AD8;
  v0[41] = qword_100095AD8;

  if (v2)
  {

    v4 = swift_task_alloc();
    v0[42] = v4;
    *v4 = v0;
    v5 = sub_100007B20(v4);

    return sub_10003DA14(v5, v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100054D80()
{
  sub_100002624();
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;
  v5 = v2[42];
  v6 = *v1;
  sub_100002928();
  *v7 = v6;
  v3[43] = v8;
  v3[44] = v0;

  v9 = v2[41];
  if (v0)
  {
    v10 = v3[39];
    v11 = v3[34];
    v12 = v3[20];

    v13 = sub_10001C194();
    v14 = v12;
  }

  else
  {
    v15 = v3[20];

    v13 = sub_10001C194();
    v14 = v15;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_100054ED4()
{
  sub_100004680();
  v3 = static Task<>.isCancelled.getter();
  v4 = v0[43];
  if ((v3 & 1) != 0 || (v5 = *(v4 + 16), (v0[45] = v5) == 0))
  {

    v21 = v0[39];
    v22 = qword_100095AE8;
    v0[52] = qword_100095AE8;

    if (v22)
    {
      v4 = sub_100055504;
      v1 = v22;
      v2 = 0;

      return _swift_task_switch(v4, v1, v2);
    }

    goto LABEL_17;
  }

  v0[46] = 0;
  if (!*(v4 + 16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v4, v1, v2);
  }

  v6 = v0[30];
  v7 = *(v0[22] + 80);
  sub_100002068();
  sub_100057810(v8 + v9, v10, v11);
  if (static Task<>.isCancelled.getter())
  {
    v12 = v0[43];
    v13 = v0[30];

    sub_100009950();
    v4 = sub_10005786C(v13, v14);
    v15 = qword_100095AD8;
    v0[41] = qword_100095AD8;
    if (v15)
    {

      v16 = swift_task_alloc();
      v0[42] = v16;
      *v16 = v0;
      v17 = sub_100007B20();

      return sub_10003DA14(v17, v18, v19);
    }

    goto LABEL_18;
  }

  v23 = swift_task_alloc();
  v0[47] = v23;
  *v23 = v0;
  sub_1000124D8(v23);

  return sub_1000533BC();
}

uint64_t sub_100055078()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  v5 = *(v2 + 376);
  *v4 = *v1;
  *(v3 + 384) = v0;

  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_100055C90;
  }

  else
  {
    v7 = sub_100055198;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_100055198()
{
  v1 = qword_100095AD8;
  v0[49] = qword_100095AD8;
  if (v1)
  {
    sub_100002624();
    v2 = v0[30];
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);

    v5 = swift_task_alloc();
    v0[50] = v5;
    *v5 = v0;
    v6 = sub_100001D9C(v5);

    sub_10003D550(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005524C()
{
  sub_100002624();
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;
  v5 = v2[50];
  *v4 = *v1;
  v3[51] = v0;

  v6 = v2[49];
  if (v0)
  {
    v7 = v3[43];
    v8 = v3[39];
    v9 = v3[34];
    v10 = v3[20];

    v11 = sub_10001C194();
    v12 = v10;
  }

  else
  {
    v13 = v3[20];

    v11 = sub_10001C194();
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000553AC()
{
  sub_100004680();
  v1 = v0[30];
  sub_100009950();
  sub_10005786C(v2, v3);
  v4 = v0[45];
  v5 = v0[46] + 1;
  v0[46] = v5;
  result = v0[43];
  if (v5 == v4)
  {

    goto LABEL_6;
  }

  if (v5 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v0[30];
  v8 = v0[22];
  v9 = *(v8 + 80);
  v10 = *(v8 + 72);
  sub_100002068();
  sub_100057810(v11, v12, v13);
  if (static Task<>.isCancelled.getter())
  {
    v14 = v0[43];
    v15 = v0[30];

    sub_100009950();
    result = sub_10005786C(v15, v16);
LABEL_6:
    v17 = qword_100095AD8;
    v0[41] = qword_100095AD8;
    if (v17)
    {

      v18 = swift_task_alloc();
      v0[42] = v18;
      *v18 = v0;
      v19 = sub_100007B20();

      return sub_10003DA14(v19, v20, v21);
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v22 = swift_task_alloc();
  v0[47] = v22;
  *v22 = v0;
  sub_1000124D8();

  return sub_1000533BC();
}

uint64_t sub_100055504()
{
  sub_100002624();
  v1 = v0[52];
  v2 = v0[20];
  sub_100013D4C(v0[38], v0[39], 0);

  return _swift_task_switch(sub_100055590, v2, 0);
}

uint64_t sub_100055590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004CE4();
  sub_100002618();
  v18 = v12[36];
  v19 = v12[37] + 1;
  v12[37] = v19;
  v20 = v12[34];
  if (v19 != v18)
  {
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return _swift_task_switch(v15, v16, v17);
    }

    v21 = v20 + 16 * v19;
    v12[38] = *(v21 + 32);
    v12[39] = *(v21 + 40);

    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v36 = v12[31];

      v37 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100005B68();

      if (os_log_type_enabled(v37, v13))
      {
        sub_100004D20();
        sub_100006FB8();
        sub_10000B9B8();
        *(v14 + 4) = sub_1000579E8(4.8751e-34, v38);
        sub_100015018(&_mh_execute_header, v39, v40, "sending events for client type: %{public}s");
        sub_10000393C();
        sub_100003D78();
      }

      v41 = qword_100095AE8;
      v12[40] = qword_100095AE8;
      if (v41)
      {
        sub_100008F70();
        sub_100004EA4();
        sub_10000C690();

        return _swift_task_switch(v15, v16, v17);
      }

      goto LABEL_26;
    }

    v22 = v12[34];
  }

  v15 = static Task<>.isCancelled.getter();
  if (v15)
  {
    v15 = static Task<>.isCancelled.getter();
    if (v15)
    {
      sub_100001E10();

      sub_100001D4C();
      sub_10000C690();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }

    v43 = qword_100095AD8;
    v12[53] = qword_100095AD8;
    if (v43)
    {

      v44 = swift_task_alloc();
      v12[54] = v44;
      *v44 = v12;
      sub_100009BB0(v44);
      sub_10000C690();

      return sub_10003EE34(v45);
    }

    goto LABEL_27;
  }

  v32 = qword_100095AD8;
  v12[32] = qword_100095AD8;
  if (!v32)
  {
    goto LABEL_25;
  }

  v33 = swift_task_alloc();
  v12[33] = v33;
  *v33 = v12;
  sub_1000090E0();
  sub_10000C690();

  return sub_10003DD7C(v34);
}

uint64_t sub_100055828()
{
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[55] = v0;

  if (!v0)
  {
    v14 = v3[53];

    v16 = v3[29];
    v15 = v3[30];
    v18 = v3[27];
    v17 = v3[28];
    v20 = v3[25];
    v19 = v3[26];
    v22 = v3[23];
    v21 = v3[24];
    v23 = v3[21];

    sub_100001D4C();
    sub_10000B7DC();

    __asm { BRAA            X1, X16 }
  }

  v9 = v3[20];
  sub_100016754();
  sub_10000B7DC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000559B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100004CE4();
  a19 = v24;
  a20 = v25;
  sub_100002618();
  a18 = v20;
  v26 = v20[32];

  v27 = v20[35];
  v28 = v20[31];
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005B68();

  if (os_log_type_enabled(v29, v21))
  {
    sub_100004D20();
    sub_100006FB8();
    sub_10000B9B8();
    sub_1000105B8(4.8149e-34);
    v31 = v20[2];
    v30 = v20[3];
    v32 = v20[4];
    v33 = Error.localizedDescription.getter();
    sub_1000053A0(v33, v34, &a10);
    sub_100003ED4();
    *(v22 + 4) = v23;
    sub_10000443C(&_mh_execute_header, v35, v36, "error running submission: %s");
    sub_10000393C();
    sub_100003D78();
  }

  else
  {
  }

  sub_100001E10();

  sub_100001D4C();
  sub_10000C690();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_100055AFC()
{
  sub_100002618();
  v22 = v0;
  v4 = v0[44];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[31];
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005B68();

  if (!os_log_type_enabled(v8, v1))
  {

    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100004D20();
  v21 = sub_100006FB8();
  sub_1000105B8(4.8149e-34);
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12 = Error.localizedDescription.getter();
  sub_1000053A0(v12, v13, &v21);
  sub_100003ED4();
  *(v2 + 4) = v3;
  sub_10000443C(&_mh_execute_header, v14, v15, "error running submission: %s");
  sub_10000393C();
  sub_100003D78();

  if (v5)
  {
LABEL_5:
    v16 = v0[21];
    v17 = type metadata accessor for TaskPriority();
    sub_1000132BC(v17);
    v18 = swift_allocObject();
    sub_10000BC3C(v18);
  }

LABEL_6:
  sub_100001E10();

  sub_100001D4C();

  return v19();
}

void sub_100055C90()
{
  v112 = v0;
  v0[15] = v0[48];
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  v1 = swift_dynamicCast();
  v2 = v0[48];
  if (v1)
  {
    v3 = v0[48];

    v4 = v0[16];
    v6 = v0[30];
    v5 = v0[31];
    if (v4)
    {
      if (v4 == 1)
      {
        v7 = v0[29];
        sub_100002068();
        sub_100057810(v6, v8, v9);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        v12 = sub_1000054D0(v11);
        v13 = v0[29];
        if (v12)
        {
          v14 = sub_100004D20();
          v15 = swift_slowAlloc();
          v111 = v15;
          *v14 = 136446210;
          v16 = *(v13 + 48);
          v17 = *(v13 + 56);

          sub_100009950();
          sub_10005786C(v13, v18);
          v19 = sub_1000053A0(v16, v17, &v111);

          *(v14 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v10, v11, "submission activity cancelled while session %{public}s was in-flight; some events will not be sent", v14, 0xCu);
          sub_100005284(v15);
LABEL_11:
          sub_100001D1C();
          sub_100001D1C();

LABEL_18:
          v100 = v0[15];

          goto LABEL_19;
        }

        sub_100009950();
        v99 = v13;
      }

      else
      {
        v80 = v0[24];
        sub_100002068();
        sub_100057810(v6, v81, v82);
        swift_errorRetain();
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        sub_100056A08(v4);
        v85 = os_log_type_enabled(v83, v84);
        v86 = v0[24];
        if (v85)
        {
          v87 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *v87 = 136446466;
          v89 = *(v86 + 48);
          v88 = *(v86 + 56);

          sub_100009950();
          sub_10005786C(v86, v90);
          v91 = sub_1000053A0(v89, v88, &v111);

          *(v87 + 4) = v91;
          *(v87 + 12) = 2082;
          swift_getErrorValue();
          v93 = v0[8];
          v92 = v0[9];
          v94 = v0[10];
          v95 = Error.localizedDescription.getter();
          v97 = sub_1000053A0(v95, v96, &v111);

          *(v87 + 14) = v97;
          _os_log_impl(&_mh_execute_header, v83, v84, "failed to send events for session %{public}s: %{public}s", v87, 0x16u);
          swift_arrayDestroy();
          sub_100001D1C();
          sub_100001D1C();
          sub_100056A08(v4);

          goto LABEL_18;
        }

        sub_100056A08(v4);

        sub_100009950();
        v99 = v86;
      }
    }

    else
    {
      v43 = v0[27];
      v45 = v0[25];
      v44 = v0[26];
      sub_100057810(v0[30], v0[28], type metadata accessor for CachedSession);
      sub_100057810(v6, v43, type metadata accessor for CachedSession);
      sub_100057810(v6, v44, type metadata accessor for CachedSession);
      sub_100057810(v6, v45, type metadata accessor for CachedSession);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      v48 = sub_1000054D0(v47);
      v50 = v0[27];
      v49 = v0[28];
      v51 = v0[25];
      v52 = v0[26];
      if (v48)
      {
        v53 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v53 = 136446978;
        v109 = v47;
        log = v46;
        v55 = *(v49 + 48);
        v54 = *(v49 + 56);

        sub_10005786C(v49, type metadata accessor for CachedSession);
        v56 = sub_1000053A0(v55, v54, &v111);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2082;
        v57 = *v50;
        v58 = v50[1];

        v59 = sub_10000531C();
        v61 = sub_10005786C(v59, v60);
        v65 = sub_10000CE68(v61, v62, v63, v64);

        *(v53 + 14) = v65;
        *(v53 + 22) = 2082;
        v66 = *(v52 + 16);
        v67 = *(v52 + 24);

        v68 = sub_10005786C(v52, type metadata accessor for CachedSession);
        v72 = sub_10000CE68(v68, v69, v70, v71);

        *(v53 + 24) = v72;
        *(v53 + 32) = 2082;
        v73 = *(v51 + 32);
        v74 = *(v51 + 40);

        v75 = sub_10005786C(v51, type metadata accessor for CachedSession);
        v79 = sub_10000CE68(v75, v76, v77, v78);

        *(v53 + 34) = v79;
        v10 = log;
        _os_log_impl(&_mh_execute_header, log, v109, "no backend available for session %{public}s - %{public}s:%{public}s:%{public}s", v53, 0x2Au);
        swift_arrayDestroy();
        goto LABEL_11;
      }

      sub_10005786C(v51, type metadata accessor for CachedSession);
      sub_10005786C(v52, type metadata accessor for CachedSession);
      sub_10005786C(v50, type metadata accessor for CachedSession);
      v99 = v49;
      v98 = type metadata accessor for CachedSession;
    }

    sub_10005786C(v99, v98);
    goto LABEL_18;
  }

  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[23];
  v23 = v0[15];

  sub_100002068();
  sub_100057810(v21, v22, v24);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[48];
  v29 = v0[23];
  if (v27)
  {
    v30 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v30 = 136446466;
    v32 = *(v29 + 48);
    v31 = *(v29 + 56);

    sub_100009950();
    sub_10005786C(v29, v33);
    v34 = sub_1000053A0(v32, v31, &v111);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    swift_getErrorValue();
    v36 = v0[5];
    v35 = v0[6];
    v37 = v0[7];
    v38 = Error.localizedDescription.getter();
    v40 = sub_1000053A0(v38, v39, &v111);

    *(v30 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v25, v26, "failed to process events for session %{public}s: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100001D1C();
  }

  else
  {
    v41 = v0[48];

    sub_100009950();
    sub_10005786C(v29, v42);
  }

LABEL_19:
  v101 = qword_100095AD8;
  v0[49] = qword_100095AD8;
  if (v101)
  {
    v102 = v0[30];
    v103 = *(v102 + 48);
    v104 = *(v102 + 56);

    v105 = swift_task_alloc();
    v0[50] = v105;
    *v105 = v0;
    sub_100001D9C(v105);
    sub_1000058EC();

    sub_10003D550(v106, v107);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000563A8()
{
  sub_100002618();
  v25 = v0;
  v4 = v0[30];
  sub_100009950();
  sub_10005786C(v5, v6);
  v7 = v0[51];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[31];
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005B68();

  if (!os_log_type_enabled(v11, v1))
  {

    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100004D20();
  v24 = sub_100006FB8();
  sub_1000105B8(4.8149e-34);
  v13 = v0[2];
  v12 = v0[3];
  v14 = v0[4];
  v15 = Error.localizedDescription.getter();
  sub_1000053A0(v15, v16, &v24);
  sub_100003ED4();
  *(v2 + 4) = v3;
  sub_10000443C(&_mh_execute_header, v17, v18, "error running submission: %s");
  sub_10000393C();
  sub_100003D78();

  if (v8)
  {
LABEL_5:
    v19 = v0[21];
    v20 = type metadata accessor for TaskPriority();
    sub_1000132BC(v20);
    v21 = swift_allocObject();
    sub_10000BC3C(v21);
  }

LABEL_6:
  sub_100001E10();

  sub_100001D4C();

  return v22();
}

uint64_t sub_100056548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100004CE4();
  a19 = v23;
  a20 = v24;
  sub_100002618();
  a18 = v20;
  v25 = v20[55];
  v26 = v20[53];
  v27 = v20[31];

  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v20[55];
    sub_100004D20();
    sub_100006FB8();
    sub_10000B9B8();
    *v21 = 136446210;
    swift_getErrorValue();
    v32 = v20[11];
    v31 = v20[12];
    v33 = v20[13];
    v34 = Error.localizedDescription.getter();
    sub_1000053A0(v34, v35, &a10);
    sub_100003ED4();
    *(v21 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v28, v29, "failed to cleanup DB: %{public}s", v21, 0xCu);
    sub_10000393C();
    sub_100003D78();
  }

  else
  {
    v36 = v20[55];
  }

  sub_100001E10();

  sub_100001D4C();
  sub_10000C690();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1000566E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010C30;

  return sub_100054570();
}

uint64_t sub_10005676C()
{
  if (qword_10008DDB0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000567DC(uint64_t a1)
{
  result = sub_100056804();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100056804()
{
  result = qword_10008FAD8;
  if (!qword_10008FAD8)
  {
    type metadata accessor for SubmitEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FAD8);
  }

  return result;
}

uint64_t sub_100056858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100056878, 0, 0);
}

uint64_t sub_100056878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_100095AE8;
  *(v3 + 32) = qword_100095AE8;
  if (v4)
  {
    sub_100004680();

    a1 = sub_100004EA4();
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000568F0()
{
  sub_100004680();
  v1 = v0[4];
  sub_100013D4C(v0[2], v0[3], 0);

  sub_100001D4C();

  return v2();
}

uint64_t sub_100056958()
{
  sub_100004EC0();
  sub_100004F30();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_100008D5C();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_100010C30;
  sub_100002794();

  return sub_100056858(v8, v9, v10, v11, v12);
}

unint64_t sub_100056A08(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_100056A18()
{
  result = qword_10008FAE0;
  if (!qword_10008FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FAE0);
  }

  return result;
}

uint64_t sub_100056ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_100056B44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = *(*(type metadata accessor for CachedSession(0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  sub_100057810(a1, v6, type metadata accessor for CachedSession);

  return _swift_task_switch(sub_100056BFC, a2, 0);
}

uint64_t sub_100056BFC()
{
  sub_100002624();
  v1 = v0[3];
  v2 = *v1;
  v3 = v1[1];

  sub_100009950();
  sub_10005786C(v1, v4);
  v5 = sub_10000DD08(v2, v3);
  v7 = v6;

  v0[4] = v7;
  if (v7)
  {
    v8 = v0[2];
    v0[5] = v5;
    v0[6] = *(v8 + 128);
    v9 = sub_100016754();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v0[3];

    v13 = sub_100017614();

    return v14(v13);
  }
}

uint64_t sub_100056CE0()
{
  sub_100002624();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 64) = sub_10000EDCC() & 1;

  return _swift_task_switch(sub_100056D68, v4, 0);
}

uint64_t sub_100056D68()
{
  sub_100004680();
  if (*(v0 + 64))
  {
    v1 = *(v0 + 24);

    v2 = sub_100017614();

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_100056E30;
    v6 = *(v0 + 16);

    return sub_10000D028();
  }
}

uint64_t sub_100056E30()
{
  sub_100004680();
  sub_100003B0C();
  sub_100009A8C();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_1000043E4();
  *v7 = v6;
  *(v9 + 65) = v8;

  v10 = sub_100009A40();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100056F28()
{
  sub_100004680();
  v1 = *(v0 + 24);
  v2 = *(v0 + 65);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100056F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v12 = sub_100003C44(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v58[-v18];
  v20 = type metadata accessor for SessionConfiguration.Backend(0);
  v21 = sub_100001D80(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000051F0();
  v26 = sub_10000531C();
  sub_100057810(v26, v27, v28);
  sub_10004FC08(v25, v19);
  sub_100057810(v19, v17, type metadata accessor for SessionConfiguration.BackendHTTP);
  sub_100043198(a5, v64);
  v29 = type metadata accessor for BackendHTTP();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  v33 = (v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_clientID);
  *v33 = a3;
  v33[1] = a4;
  *(v32 + 112) = a6;
  v34 = v11[6];
  v35 = OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url;
  v36 = type metadata accessor for URL();
  sub_100003C44(v36);
  (*(v37 + 16))(v32 + v35, &v17[v34]);
  sub_100009658(v64, v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target);
  v39 = a1[14];
  v38 = a1[15];
  v40 = a1[25];
  v62 = a1[24];
  v63 = v39;
  v41 = a1[26];
  v42 = a1[27];
  v43 = a1[28];
  v44 = a1[29];
  v60 = v43;
  v61 = v41;
  v59 = v17[v11[8]];
  v45 = qword_10008DDC0;
  v46 = v38;

  if (v45 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD8 != -1)
    {
      swift_once();
    }

    v47 = byte_100095B11;
    sub_100005284(v64);
    sub_100003E30();
    sub_10005786C(v19, v48);
    v49 = 5;
    if (!v47)
    {
      v49 = 1;
    }
  }

  else
  {
    sub_100005284(v64);
    sub_100003E30();
    sub_10005786C(v19, v50);
    v49 = 0;
  }

  v51 = v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders;
  *v51 = v49;
  v52 = v61;
  *(v51 + 8) = v62;
  *(v51 + 16) = v40;
  *(v51 + 24) = v52;
  *(v51 + 32) = v42;
  *(v51 + 40) = v60;
  *(v51 + 48) = v44;
  *(v51 + 56) = v59;
  *(v51 + 64) = v63;
  *(v51 + 72) = v46;
  *(v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters) = *&v17[v11[7]];
  v53 = *(v17 + 1);
  v54 = (v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name);
  *v54 = *v17;
  v54[1] = v53;
  *(v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_samplingThreshold) = *(v17 + 2);
  *(v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_allowedCategories) = *&v17[v11[9]];
  *(v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_deniedCategories) = *&v17[v11[10]];
  v55 = v17[v11[11]];

  sub_100003E30();
  sub_10005786C(v17, v56);
  *(v32 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_skipLogging) = v55;
  return v32;
}

uint64_t sub_100057368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v53 = a4;
  v54 = a3;
  v10 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for SessionConfiguration.Backend(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CachedSession(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100057810(a1, v24, type metadata accessor for CachedSession);
  sub_100057810(a2, v20, type metadata accessor for SessionConfiguration.Backend);
  sub_10004FC08(v20, v16);
  v55 = v16;
  sub_100057810(v16, v14, type metadata accessor for SessionConfiguration.BackendHTTP);
  sub_100043198(a5, v56);
  v25 = type metadata accessor for BackendHTTP();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  v29 = (v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_clientID);
  v30 = v53;
  *v29 = v54;
  v29[1] = v30;
  *(v28 + 112) = a6;
  v31 = v10[6];
  v32 = OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url;
  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 16))(v28 + v32, &v14[v31], v33);
  sub_100009658(v56, v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target);
  v34 = v24[7];
  v54 = v24[6];
  v35 = *v24;
  v36 = v24[1];
  v37 = v24[3];
  v51 = v24[2];
  v52 = v35;
  v38 = v24[5];
  v50 = v24[4];
  v39 = v34;

  sub_10005786C(v24, type metadata accessor for CachedSession);
  v40 = v14[v10[8]];
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD8 != -1)
    {
      swift_once();
    }

    v41 = byte_100095B11;
    sub_100005284(v56);
    sub_10005786C(v55, type metadata accessor for SessionConfiguration.BackendHTTP);
    v42 = 5;
    if (!v41)
    {
      v42 = 1;
    }
  }

  else
  {
    sub_100005284(v56);
    sub_10005786C(v55, type metadata accessor for SessionConfiguration.BackendHTTP);
    v42 = 0;
  }

  v43 = v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders;
  *v43 = v42;
  v44 = v51;
  *(v43 + 8) = v52;
  *(v43 + 16) = v36;
  *(v43 + 24) = v44;
  *(v43 + 32) = v37;
  *(v43 + 40) = v50;
  *(v43 + 48) = v38;
  *(v43 + 56) = v40;
  *(v43 + 64) = v54;
  *(v43 + 72) = v39;
  *(v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters) = *&v14[v10[7]];
  v45 = *(v14 + 1);
  v46 = (v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name);
  *v46 = *v14;
  v46[1] = v45;
  *(v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_samplingThreshold) = *(v14 + 2);
  *(v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_allowedCategories) = *&v14[v10[9]];
  *(v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_deniedCategories) = *&v14[v10[10]];
  v47 = v14[v10[11]];

  sub_10005786C(v14, type metadata accessor for SessionConfiguration.BackendHTTP);
  *(v28 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_skipLogging) = v47;
  return v28;
}

uint64_t sub_100057810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100003C44(v4);
  v6 = *(v5 + 16);
  v7 = sub_100004EA4();
  v8(v7);
  return a2;
}

uint64_t sub_10005786C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100003C44(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000578C4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000578E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005793C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_100057998(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000579CC@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void sub_1000579DC(__n128 a1, __n128 a2, __n128 a3)
{
  v3[1] = a3;
  v3[2] = a2;
  v3[3] = a1;
}

uint64_t sub_1000579E8(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1000053A0(v3, v2, va);
}

uint64_t sub_100057A08()
{

  return swift_allocObject();
}

uint64_t sub_100057A20()
{
  result = os_variant_has_internal_diagnostics();
  byte_100095B00 = result;
  return result;
}

id sub_100057A48()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_100059C94(0xD000000000000016, 0x8000000100072D10);
  if (result)
  {
    qword_100095B08 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100057AA0()
{
  if (qword_10008DDC8 != -1)
  {
    sub_100009968();
  }

  v0 = qword_100095B08;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_100095B10 = v2;
}

void sub_100057B3C()
{
  if (qword_10008DDC8 != -1)
  {
    sub_100009968();
  }

  v0 = qword_100095B08;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = qword_100095B08;
    v5 = sub_100007B50();
    v6 = [v4 integerForKey:v5];

    v3 = v6 == 5;
  }

  byte_100095B11 = v3;
}

void sub_100057C20()
{
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDC8 != -1)
    {
      sub_100009968();
    }

    v0 = qword_100095B08;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 BOOLForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  byte_100095B12 = v2;
}

void sub_100057D04()
{
  v35 = type metadata accessor for Logger();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v35);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = String._bridgeToObjectiveC()();
  _CFPreferencesSetBackupDisabled();

  v9 = type metadata accessor for TaskPriority();
  sub_1000026BC(v7, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10005A254(0, 0, v7, &unk_10006FDE8, v11);

  v40 = &_swiftEmptySetSingleton;
  if (qword_10008DDD0 != -1)
  {
    swift_once();
  }

  if (byte_100095B10 == 1)
  {
    sub_100015F14(&v38, 0xD000000000000011, 0x8000000100072CF0);
  }

  if (qword_10008DDC8 != -1)
  {
    sub_100009968();
  }

  v12 = qword_100095B08;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 BOOLForKey:v13];

  if (v14)
  {
    sub_100003B90();
  }

  v15 = qword_100095B08;
  v16 = sub_100007B50();
  v17 = [v15 valueForKey:v16];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100024360(&v38);
    sub_100015F14(&v38, 0xD000000000000013, 0x8000000100072D50);
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    sub_100024360(&v38);
  }

  if (qword_10008DDD8 != -1)
  {
    swift_once();
  }

  if (byte_100095B11 == 1)
  {
    sub_100015F14(&v38, 0x6976654474736574, 0xEA00000000006563);
  }

  v18 = qword_100095B08;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 valueForKey:v19];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100024360(&v38);
    sub_100003B90();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    sub_100024360(&v38);
  }

  if (qword_10008DDE0 != -1)
  {
    swift_once();
  }

  if (byte_100095B12 == 1)
  {
    sub_100015F14(&v38, 0xD000000000000014, 0x8000000100072D30);
  }

  Logger.init()();
  v21 = v40;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136315138;
    if (v21[2])
    {
      *&v38 = 0x6769666E6F632820;
      *(&v38 + 1) = 0xEA0000000000203ALL;
      v36 = v21;

      sub_1000228D4(&qword_10008FAE8, &qword_10006FDF0);
      sub_100059DCC();
      sub_10001F5A8();
      v28 = Sequence<>.joined(separator:)();
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v27 = *(&v38 + 1);
      v26 = v38;
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
    }

    v33 = sub_1000053A0(v26, v27, &v37);

    *(v24 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "starting rtcreportingd%s", v24, 0xCu);
    sub_100005284(v25);
    sub_100001D1C();
    sub_100001D1C();
  }

  (*(v0 + 8))(v3, v35);
  dispatch_main();
}

uint64_t sub_100058360()
{
  v1 = type metadata accessor for URL();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v4 = *(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v0[14] = v5;
  v6 = *(v5 - 8);
  v0[15] = v6;
  v7 = *(v6 + 64) + 15;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  type metadata accessor for TransparencyLog();
  swift_allocObject();
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_100058550;

  return sub_100028AE8();
}

uint64_t sub_100058550()
{
  sub_100005464();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  v7 = v4[20];
  *v6 = *v1;

  v8 = v4[19];
  v9 = v4[18];
  if (v0)
  {

    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = sub_1000587CC;
  }

  else
  {
    v5[21] = v3;
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = sub_100058700;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100058700()
{
  sub_100004680();
  qword_100095AF8 = v0[21];

  v0[22] = type metadata accessor for DiskCache();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  sub_100005208(v1);

  return sub_10003BBDC();
}

uint64_t sub_1000587CC()
{
  sub_100004680();
  qword_100095AF8 = 0;

  *(v0 + 176) = type metadata accessor for DiskCache();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  sub_100005208(v1);

  return sub_10003BBDC();
}

uint64_t sub_100058894()
{
  sub_100005464();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1000043E4();
  *v7 = v6;
  v8 = v5[23];
  *v7 = *v1;
  v6[24] = v0;

  v9 = v5[19];
  v10 = v5[18];
  if (v2)
  {
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v6[26] = v11;
    v6[27] = v12;
    v13 = v11;
    v14 = v12;
    v15 = sub_100058BEC;
    v16 = v13;
  }

  else
  {
    v6[25] = v4;
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    v15 = sub_100058A64;
    v16 = v17;
    v14 = v19;
  }

  return _swift_task_switch(v15, v16, v14);
}

uint64_t sub_100058A64()
{
  v1 = v0[25];
  v0[28] = v1;
  qword_100095AD8 = v1;

  v3 = qword_100095AF8 == 0;
  v2 = qword_100095AD8;
  v0[29] = qword_100095AF8;
  v0[30] = v2;
  v3 = v3 || v2 == 0;
  if (v3)
  {
    v4 = v0[17];
    Logger.init()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (sub_100007C60(v6))
    {
      v7 = sub_10001196C();
      sub_100004FC0(v7);
      sub_100009108(&_mh_execute_header, v8, v9, "reporting disabled due to startup failure");
      sub_100004664();
    }

    v10 = v0[17];
    v11 = v0[14];
    v12 = v0[15];

    v13 = sub_100001E34();
    v14(v13);
  }

  type metadata accessor for SubmissionCoordinator();
  swift_allocObject();
  v15 = sub_100042FF0();
  sub_1000029E0(v15);
  type metadata accessor for SessionCoordinator();
  swift_allocObject();
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  sub_100002080(v16);

  return sub_100033B9C();
}

void sub_100058BEC()
{
  v52 = v0;
  *(v0 + 40) = *(v0 + 192);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (!swift_dynamicCast() || (*(v0 + 352) & 1) == 0)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 128);
    Logger.init()();
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 192);
      v6 = *(v0 + 120);
      v50 = *(v0 + 128);
      v7 = *(v0 + 112);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v51 = v9;
      *v8 = 136446210;
      swift_getErrorValue();
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      v12 = *(v0 + 32);
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000053A0(v13, v14, &v51);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "failed to open database file: %{public}s", v8, 0xCu);
      sub_100005284(v9);
      sub_100001D1C();
      sub_100001D1C();

      (*(v6 + 8))(v50, v7);
    }

    else
    {
      v17 = *(v0 + 120);
      v16 = *(v0 + 128);
      v18 = *(v0 + 112);

      (*(v17 + 8))(v16, v18);
    }
  }

  sub_10003B5C8(0, *(v0 + 104));
  v27 = *(v0 + 96);
  v28 = *(v0 + 64);
  sub_1000234A4(*(v0 + 104), v27);
  v29 = sub_100002694(v27, 1, v28);
  if (v29 == 1)
  {
    sub_100059E30(*(v0 + 96));
    _assertionFailure(_:_:file:line:flags:)();
    sub_10000BF1C();
  }

  else
  {
    v30 = *(v0 + 80);
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    (*(v32 + 32))(*(v0 + 88), *(v0 + 96), v31);
    v33 = [objc_opt_self() defaultManager];
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v34);
    v36 = v35;
    v37 = *(v32 + 8);
    *(v0 + 312) = v37;
    *(v0 + 320) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v30, v31);
    *(v0 + 48) = 0;
    v38 = [v33 removeItemAtURL:v36 error:v0 + 48];

    v39 = *(v0 + 48);
    if (!v38)
    {
      v44 = *(v0 + 192);
      v45 = *(v0 + 152);
      v46 = *(v0 + 104);
      v47 = *(v0 + 88);
      v48 = *(v0 + 64);
      v49 = v39;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      v37(v47, v48);
      sub_100059E30(v46);
      v20 = *(v0 + 128);
      v19 = *(v0 + 136);
      v22 = *(v0 + 96);
      v21 = *(v0 + 104);
      v24 = *(v0 + 80);
      v23 = *(v0 + 88);

      sub_100001D4C();
      sub_10000BF1C();

      __asm { BRAA            X1, X16 }
    }

    v40 = *(v0 + 176);
    swift_allocObject();
    v41 = v39;
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    *v42 = v0;
    v42[1] = sub_100059620;
    sub_10000BF1C();

    sub_10003BBDC();
  }
}

uint64_t sub_1000590BC()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v9 = *v0;
  sub_1000043E4();
  *v4 = v9;
  v9[32] = v5;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[33] = v6;
  v9[34] = v7;

  return _swift_task_switch(sub_10005922C, v6, v7);
}

uint64_t sub_10005922C()
{
  sub_100005464();
  v1 = v0[32];
  if (v0[29])
  {
    v2 = v0[30] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  qword_100095AE8 = v0[32];

  type metadata accessor for Listener();
  swift_allocObject();
  qword_100095AE0 = sub_10006180C(v3);

  if (qword_10008DDA0 != -1)
  {
    swift_once();
  }

  v4 = qword_100095AA8;
  v0[35] = qword_100095AA8;
  v5 = sub_100059CFC(v4);
  v0[36] = v5;
  if (!v5)
  {
    sub_1000039F4();

    sub_100001D4C();
    sub_100008E70();

    __asm { BRAA            X1, X16 }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  v0[37] = 0;
  v6 = v0[35];
  if ((v6 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *(v6 + 32);
  }

  sub_1000044EC();
  sub_100008E70();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100059420()
{
  sub_100004680();
  v1 = v0[38];
  if (v0[29])
  {
    v2 = v0[30] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  sub_1000490A4(v3);
  v4 = v0[33];
  v5 = v0[34];

  return _swift_task_switch(sub_1000594BC, v4, v5);
}

uint64_t sub_1000594BC()
{
  sub_100005464();
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  if (v2 + 1 == v3)
  {
    sub_1000039F4();

    sub_100001D4C();
    sub_100008E70();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[37] + 1;
  v0[37] = v6;
  v7 = v0[35];
  if ((v7 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v8 = *(v7 + 8 * v6 + 32);
  }

  sub_1000044EC();
  sub_100008E70();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100059620(uint64_t a1)
{
  v5 = *(*v2 + 328);
  v4 = *v2;
  sub_1000043E4();
  *v6 = v4;
  v4[42] = v1;

  if (v1)
  {
    v7 = v4[26];
    v8 = v4[27];
    v9 = sub_100059920;
  }

  else
  {
    v4[43] = a1;
    v7 = v4[26];
    v8 = v4[27];
    v9 = sub_100059768;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100059768()
{
  sub_100005464();
  v1 = v0[43];
  v2 = v0[24];

  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[8];

  v4(v6, v7);
  sub_100059E30(v5);
  v0[28] = v1;
  qword_100095AD8 = v1;

  v9 = qword_100095AF8 == 0;
  v8 = qword_100095AD8;
  v0[29] = qword_100095AF8;
  v0[30] = v8;
  v9 = v9 || v8 == 0;
  if (v9)
  {
    v10 = v0[17];
    Logger.init()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (sub_100007C60(v12))
    {
      v13 = sub_10001196C();
      sub_100004FC0(v13);
      sub_100009108(&_mh_execute_header, v14, v15, "reporting disabled due to startup failure");
      sub_100004664();
    }

    v16 = v0[17];
    v17 = v0[14];
    v18 = v0[15];

    v19 = sub_100001E34();
    v20(v19);
  }

  type metadata accessor for SubmissionCoordinator();
  swift_allocObject();
  v21 = sub_100042FF0();
  sub_1000029E0(v21);
  type metadata accessor for SessionCoordinator();
  swift_allocObject();
  v22 = swift_task_alloc();
  v0[31] = v22;
  *v22 = v0;
  sub_100002080(v22);

  return sub_100033B9C();
}

uint64_t sub_100059920()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 192);
  sub_100059AD8();

  v3 = *(v0 + 320);
  v4 = *(v0 + 104);
  (*(v0 + 312))(*(v0 + 88), *(v0 + 64));
  sub_100059E30(v4);
  *(v0 + 224) = 0;
  qword_100095AD8 = 0;

  v6 = qword_100095AF8 == 0;
  v5 = qword_100095AD8;
  *(v0 + 232) = qword_100095AF8;
  *(v0 + 240) = v5;
  v6 = v6 || v5 == 0;
  if (v6)
  {
    v7 = *(v0 + 136);
    Logger.init()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (sub_100007C60(v9))
    {
      v10 = sub_10001196C();
      sub_100004FC0(v10);
      sub_100009108(&_mh_execute_header, v11, v12, "reporting disabled due to startup failure");
      sub_100004664();
    }

    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);

    v16 = sub_100001E34();
    v17(v16);
  }

  type metadata accessor for SubmissionCoordinator();
  swift_allocObject();
  v18 = sub_100042FF0();
  sub_1000029E0(v18);
  type metadata accessor for SessionCoordinator();
  swift_allocObject();
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  *v19 = v0;
  sub_100002080(v19);

  return sub_100033B9C();
}

uint64_t sub_100059AD8()
{
  v1 = type metadata accessor for Logger();
  v2 = sub_10000CDD0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000053A0(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "failed to create disk cache: %{public}s", v11, 0xCu);
    sub_100005284(v12);
    sub_100001D1C();
    sub_100001D1C();
  }

  return (*(v4 + 8))(v8, v0);
}

id sub_100059C94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_100059CFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100059D20()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003B4E4;

  return sub_100058360();
}

unint64_t sub_100059DCC()
{
  result = qword_10008FAF0;
  if (!qword_10008FAF0)
  {
    sub_100025D78(&qword_10008FAE8, &qword_10006FDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FAF0);
  }

  return result;
}

uint64_t sub_100059E30(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDB.Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100059E8C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100003BC0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_10000BE28(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100059EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100003BC0();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
}

uint64_t sub_100059F44()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000615F4();
  }

  return v5 & 1;
}

uint64_t sub_100059FB4(char a1, char a2)
{
  v3 = sub_10001E968(a1);
  v5 = v4;
  if (v3 == sub_10001E968(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000615F4();
  }

  return v8 & 1;
}

uint64_t sub_10005A024(unsigned __int8 a1, char a2)
{
  v2 = 1937335659;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1937335659;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7955819;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7365756C6176;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x65756C6176;
      break;
    case 4:
      v5 = 0x69726F6765746163;
      v3 = 0xEA00000000007365;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x79726F6765746163;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x7365707974;
      break;
    case 7:
      v5 = 1701869940;
      break;
    case 8:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F69746361;
      break;
    case 9:
      v5 = 0x6F697469646E6F63;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7955819;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7365756C6176;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x65756C6176;
      break;
    case 4:
      v2 = 0x69726F6765746163;
      v6 = 0xEA00000000007365;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x79726F6765746163;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x7365707974;
      break;
    case 7:
      v2 = 1701869940;
      break;
    case 8:
      v6 = 0xE600000000000000;
      v2 = 0x6E6F69746361;
      break;
    case 9:
      v2 = 0x6F697469646E6F63;
      v6 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10005A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000132F8();
  v10 = sub_1000228D4(v8, v9);
  v11 = sub_100001D80(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v26 - v14;
  sub_100005C68();
  type metadata accessor for TaskPriority();
  v16 = sub_100016760();
  v17 = sub_100002694(v16, 1, &qword_10008E750);

  if (v17 == 1)
  {
    sub_100005000(v15, &qword_10008E750, &qword_10006F860);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(qword_10008E748 + 8))(v15, &qword_10008E750);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = String.utf8CString.getter() + 32;

      if (v22 | v20)
      {
        v27[0] = 0;
        v27[1] = 0;
        v24 = v27;
        v27[2] = v20;
        v27[3] = v22;
      }

      else
      {
        v24 = 0;
      }

      v26[1] = 7;
      v26[2] = v24;
      v26[3] = v23;
      sub_1000110E4();
      sub_1000615A4();

      sub_100005000(a3, &qword_10008E750, &qword_10006F860);

      return v20;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005000(a3, &qword_10008E750, &qword_10006F860);
  if (v22 | v20)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v20;
    v27[7] = v22;
  }

  return sub_1000110E4();
}

uint64_t sub_10005A4B4()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_10005A7DC;
  }

  else
  {
    v7 = sub_10005A5D4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10005A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100015038();
  a23 = v25;
  a24 = v26;
  sub_10002006C();
  a22 = v24;
  v27 = *(v24 + 88);
  swift_unknownObjectRelease();
  v53 = *(v24 + 104);
  v28 = *(v24 + 80);
  sub_100061658();
  if (!v29)
  {
    sub_100061554();
  }

  v52 = *(v24 + 160);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v30 = (sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0) - 8);
  v31 = *(*v30 + 72);
  v32 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10006D1D0;
  v34 = (v33 + v32);
  v35 = v30[14];
  sub_100003CFC();
  *v34 = v36;
  v34[1] = 0xE700000000000000;
  *(v34 + v35) = 0;
  type metadata accessor for EventValue();
  sub_10006174C();
  v37 = v30[14];
  sub_10000FFD8();
  *v38 = v39;
  v38[1] = 0xE700000000000000;
  *(v38 + v40) = 1;
  sub_10006174C();
  v41 = Dictionary.init(dictionaryLiteral:)();
  v42 = *(v28 + 160);
  v43 = *(v28 + 168);

  v44 = sub_1000128E8(v52, v42, v43);

  swift_isUniquelyReferenced_nonNull_native();
  a12 = v41;
  sub_100007B80();
  sub_100060854(v44, v45, 0, v46, &a12);
  *(v24 + 112) = a12;
  v47 = swift_task_alloc();
  v48 = sub_10000B9C4(v47);
  *v48 = v49;
  sub_100003E48(v48);
  sub_1000058EC();

  return sub_10000BA94();
}

uint64_t sub_10005A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v24;
  a22 = v25;
  sub_100003EBC();
  a20 = v22;
  if (qword_10008DDE8 != -1)
  {
    sub_10000522C();
  }

  v26 = *(v22 + 104);
  v27 = *(v22 + 80);
  v28 = type metadata accessor for Logger();
  sub_1000050E4(v28, qword_10008FB00);

  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v22 + 104);
  v33 = *(v22 + 88);
  if (v31)
  {
    v34 = *(v22 + 80);
    v23 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_1000053A0(*(v34 + 112), *(v34 + 120), &a10);
    *(v23 + 12) = 2080;
    swift_getErrorValue();
    v36 = *(v22 + 40);
    v35 = *(v22 + 48);
    v37 = *(v22 + 56);
    v38 = Error.localizedDescription.getter();
    v40 = sub_1000053A0(v38, v39, &a10);

    *(v23 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v29, v30, "failed to send cached non-realtime events for session %s on session end: %s", v23, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100001D64();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v41 = *(v22 + 80);
  sub_100061658();
  if (!v42)
  {
    sub_100061554();
  }

  v65 = *(v22 + 160);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v43 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  sub_100003F10(v43);
  v45 = *(v44 + 72);
  *(sub_100061564() + 16) = xmmword_10006D1D0;
  v46 = *(v33 + 56);
  sub_100003CFC();
  sub_10001C494(v47);
  sub_1000615B0();
  swift_storeEnumTagMultiPayload();
  v48 = *(v33 + 56);
  sub_10000FFD8();
  *v49 = v50;
  v49[1] = v23;
  *(v49 + v51) = 1;
  sub_1000615B0();
  swift_storeEnumTagMultiPayload();
  v52 = Dictionary.init(dictionaryLiteral:)();
  v53 = *(v41 + 160);
  v54 = *(v41 + 168);

  sub_1000128E8(v65, v53, v54);

  swift_isUniquelyReferenced_nonNull_native();
  a10 = v52;
  sub_100007B80();
  sub_100061714(v55, v56, v57, v58, v59);
  *(v22 + 112) = a10;
  v60 = swift_task_alloc();
  v61 = sub_10000B9C4(v60);
  *v61 = v62;
  sub_100003E48(v61);
  sub_100008E28();

  return sub_10000BA94();
}

uint64_t sub_10005AB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_100003F58();
  a17 = v19;
  a18 = v20;
  sub_100005464();
  a16 = v18;
  v21 = v18[16];

  if (qword_10008DDE8 != -1)
  {
    sub_10000522C();
  }

  v22 = v18[18];
  v23 = type metadata accessor for Logger();
  sub_1000050E4(v23, qword_10008FB00);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();

  v25 = sub_1000110CC();
  v26 = v18[18];
  if (v25)
  {
    v27 = sub_100004D20();
    v28 = sub_100004F18();
    a9 = v28;
    *v27 = 136446210;
    swift_getErrorValue();
    v29 = sub_1000052DC();
    v31 = sub_1000053A0(v29, v30, &a9);

    *(v27 + 4) = v31;
    sub_100005B74();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    sub_100005284(v28);
    sub_100001D64();
    sub_100003D78();
  }

  else
  {
  }

  v18[19] = *(v18[10] + 184);
  sub_100008E70();

  return _swift_task_switch(v37, v38, v39);
}

uint64_t sub_10005AC8C()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_100004EA4();
}

uint64_t sub_10005ACB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_100004EA4();
}

uint64_t sub_10005ACE4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_100004EA4();
}

uint64_t sub_10005AD10(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v3[17] = v4;
  v5 = *(v4 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10005ADDC, v2, 0);
}

uint64_t sub_10005ADDC()
{
  sub_100002624();
  v1 = *(v0 + 112);
  v2 = v1[1];
  *(v0 + 160) = v2;
  v3 = *(v2 + 16);
  *(v0 + 168) = v3;
  if (v3 == 1)
  {
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    v15 = *(*(v0 + 136) + 80);
    sub_1000020A0();
    sub_100006EAC();
    v17 = v14[13];
    v16 = v14[14];
    *(v0 + 64) = v14[12];
    *(v0 + 80) = v17;
    *(v0 + 96) = v16;
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 176) = v18;
    *v18 = v19;
    v18[1] = sub_10005AFC0;
    v20 = *(v0 + 128);
    v12 = v0 + 64;
    goto LABEL_6;
  }

  if (v3)
  {
    v4 = *(*v1 + 16);
    sub_100022FE0();
    *(v0 + 208) = 0;
    *(v0 + 216) = v5;
    if (*(v0 + 168))
    {
      v6 = *(v0 + 160);
      v7 = *(v0 + 144);
      v8 = *(v0 + 120);
      v9 = *(*(v0 + 136) + 80);
      sub_1000020A0();
      sub_100006EAC();
      sub_100010864();
      swift_task_alloc();
      sub_100008D5C();
      *(v0 + 224) = v10;
      *v10 = v11;
      v12 = sub_100008D68(v10);
LABEL_6:

      return sub_100005E6C(v12);
    }

    v22 = v5;
    type metadata accessor for BackendGroup();
    v23 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v23 + 112) = v22;
  }

  v25 = *(v0 + 144);
  v24 = *(v0 + 152);

  v26 = *(v0 + 8);
  v27 = sub_100003B18();

  return v28(v27);
}

uint64_t sub_10005AFC0()
{
  sub_100004F30();
  v3 = v2;
  v5 = v4;
  sub_100003B0C();
  v7 = v6;
  sub_100002928();
  *v8 = v7;
  v10 = *(v9 + 176);
  v11 = *v1;
  sub_1000043E4();
  *v12 = v11;
  v7[23] = v0;

  if (v0)
  {
    v13 = v7[19];
    v14 = v7[16];
    sub_100004500();
    sub_10000A864(v15, v16);
  }

  else
  {
    v17 = v7[16];
    v7[24] = v3;
    v7[25] = v5;
  }

  sub_100002794();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_10005B0F4()
{
  sub_100002624();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  v4 = sub_1000616C0();
  v8 = sub_100056F8C(v4, v3, v5, v2, v6, v7);
  v10 = v9;

  sub_100004500();
  sub_10000A864(v3, v11);
  v13 = v0[18];
  v12 = v0[19];

  v14 = v0[1];

  return v14(v8, v10);
}

uint64_t sub_10005B1A0()
{
  sub_100004F30();
  v3 = v2;
  v5 = v4;
  sub_100003B0C();
  v7 = v6;
  sub_100002928();
  *v8 = v7;
  v10 = *(v9 + 224);
  v11 = *v1;
  sub_1000043E4();
  *v12 = v11;
  v7[29] = v0;

  if (v0)
  {
    v13 = v7[27];
    v14 = v7[16];
  }

  else
  {
    v15 = v7[16];
    v7[30] = v3;
    v7[31] = v5;
  }

  sub_100002794();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10005B2D0()
{
  sub_100004F30();
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];
  v4 = v0[18];
  v5 = sub_1000616C0();
  v10 = sub_100056F8C(v5, v6, v7, v2, v8, v9);
  v12 = v11;

  v13 = *(v3 + 16);
  v14 = v0[27];
  if (v13 >= *(v3 + 24) >> 1)
  {
    v36 = v0[27];
    sub_100022FE0();
    v14 = v37;
  }

  v15 = v0[18];
  sub_100004500();
  sub_10000A864(v16, v17);
  *(v14 + 16) = v13 + 1;
  v18 = v14 + 16 * v13;
  *(v18 + 32) = v10;
  *(v18 + 40) = v12;
  v19 = v0[26] + 1;
  v0[26] = v19;
  v0[27] = v14;
  if (v19 == v0[21])
  {
    type metadata accessor for BackendGroup();
    v20 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v20 + 112) = v14;
    v22 = v0[18];
    v21 = v0[19];

    v23 = v0[1];
    sub_100002794();

    __asm { BRAA            X3, X16 }
  }

  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[15];
  v29 = v0[20] + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v30 = *(v27 + 72);
  sub_1000020A0();
  sub_100006EAC();
  sub_100010864();
  swift_task_alloc();
  sub_100008D5C();
  v0[28] = v31;
  *v31 = v32;
  sub_100008D68();
  sub_100002794();

  return sub_100005E6C(v33);
}

uint64_t sub_10005B47C()
{
  sub_100004680();
  v1 = v0[18];
  sub_100004500();
  sub_10000A864(v2, v3);
  v4 = v0[29];
  v6 = v0[18];
  v5 = v0[19];

  sub_100001D4C();

  return v7();
}

unint64_t sub_10005B4EC(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_10005B540()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008FB00);
  sub_1000050E4(v0, qword_10008FB00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005B5B8()
{
  sub_100004680();
  *(v1 + 632) = v0;
  *(v1 + 624) = v42;
  *(v1 + 616) = v41;
  *(v1 + 608) = v40;
  *(v1 + 186) = v39;
  *(v1 + 600) = v38;
  *(v1 + 592) = v2;
  *(v1 + 584) = v3;
  *(v1 + 576) = v4;
  *(v1 + 568) = v5;
  *(v1 + 185) = v6;
  *(v1 + 560) = v7;
  *(v1 + 552) = v8;
  *(v1 + 188) = v9;
  *(v1 + 640) = *v0;
  v10 = type metadata accessor for Locale();
  *(v1 + 648) = v10;
  sub_10000392C(v10);
  *(v1 + 656) = v11;
  v13 = *(v12 + 64);
  *(v1 + 664) = sub_100003D60();
  v14 = type metadata accessor for SHA256();
  *(v1 + 672) = v14;
  sub_10000392C(v14);
  *(v1 + 680) = v15;
  v17 = *(v16 + 64);
  *(v1 + 688) = sub_100003D60();
  v18 = type metadata accessor for SHA256Digest();
  *(v1 + 696) = v18;
  sub_10000392C(v18);
  *(v1 + 704) = v19;
  v21 = *(v20 + 64);
  *(v1 + 712) = sub_100003D60();
  v22 = type metadata accessor for String.Encoding();
  *(v1 + 720) = v22;
  sub_10000392C(v22);
  *(v1 + 728) = v23;
  v25 = *(v24 + 64);
  *(v1 + 736) = sub_100003D60();
  v26 = type metadata accessor for UUID();
  *(v1 + 744) = v26;
  sub_10000392C(v26);
  *(v1 + 752) = v27;
  v29 = *(v28 + 64);
  *(v1 + 760) = sub_100003D60();
  v30 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  sub_100001D80(v30);
  v32 = *(v31 + 64) + 15;
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  v33 = type metadata accessor for CachedSession(0);
  *(v1 + 784) = v33;
  sub_100001D80(v33);
  v35 = *(v34 + 64) + 15;
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();

  return _swift_task_switch(sub_10005B8A8, 0, 0);
}

uint64_t sub_10005B8A8()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 632);
  v4 = *(v0 + 608);
  v5 = *(v0 + 552);
  v6 = *(v0 + 188);
  swift_defaultActor_initialize();
  *(v0 + 808) = OBJC_IVAR____TtC13rtcreportingd7Session_creation;
  static Date.now.getter();
  *(v3 + OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents) = 0;
  v7 = OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend;
  *(v0 + 816) = OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend;
  v8 = (v3 + v7);
  v9 = OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend;
  *(v0 + 824) = OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend;
  v10 = (v3 + v9);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) = 0;
  *(v3 + OBJC_IVAR____TtC13rtcreportingd7Session_sendingNonRealtimeEvents) = 0;
  *(v3 + OBJC_IVAR____TtC13rtcreportingd7Session_receivedEnd) = 0;
  v11 = v3 + OBJC_IVAR____TtC13rtcreportingd7Session_user;
  *v11 = v6;
  *(v11 + 4) = 0;
  *(v3 + 184) = v5;
  *v8 = 0;
  v8[1] = 0;
  sub_100005C68();
  v12 = sub_1000110B4(v2);
  v13 = *(v0 + 552);
  if (v12 == 1)
  {
    v14 = *(v0 + 776);
    v15 = *(v0 + 576);
    v16 = *(v0 + 552);

    sub_100005000(v14, &qword_10008EDF8, &unk_10006E860);
    v17 = *(v0 + 760);
    v18 = *(v0 + 752);
    v19 = *(v0 + 744);
    if (v15)
    {
      v124 = *(v0 + 568);
      v125 = *(v0 + 576);

      v20._countAndFlagsBits = 46;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      UUID.init()();
      *(v0 + 169) = UUID.uuid.getter();
      *(v0 + 177) = v21;
      *(v0 + 178) = v22;
      *(v0 + 179) = v23;
      *(v0 + 180) = v24;
      *(v0 + 181) = v25;
      *(v0 + 182) = v26;
      *(v0 + 183) = v27;
      *(v0 + 184) = v28;
      v29 = sub_100005FE4(v0 + 169, 16);
      v31 = v30;
      Data.base64EncodedString(options:)(0);
      sub_100005954(v29, v31);
      (*(v18 + 8))(v17, v19);
      v32._countAndFlagsBits = sub_1000132F8();
      String.append(_:)(v32);

      countAndFlagsBits = v124;
      object = v125;
    }

    else
    {
      v38 = *(v0 + 760);
      UUID.init()();
      *(v0 + 153) = UUID.uuid.getter();
      *(v0 + 161) = v39;
      *(v0 + 162) = v40;
      *(v0 + 163) = v41;
      *(v0 + 164) = v42;
      *(v0 + 165) = v43;
      *(v0 + 166) = v44;
      *(v0 + 167) = v45;
      *(v0 + 168) = v46;
      sub_100005FE4(v0 + 153, 16);
      v47 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v47._countAndFlagsBits;
      object = v47._object;
      v48 = sub_1000132F8();
      sub_100005954(v48, v49);
      (*(v18 + 8))(v17, v19);
    }
  }

  else
  {
    v35 = *(v0 + 800);
    v36 = *(v0 + 776);
    sub_10000CDE8();
    sub_100006F04();
    countAndFlagsBits = *(v35 + 48);
    object = *(v35 + 56);

    sub_10001061C();
    sub_10000A864(v35, v37);
  }

  v50 = *(v0 + 632);
  v51 = *(v0 + 186);
  v52 = OBJC_IVAR____TtC13rtcreportingd7Session_parentSessionID;
  v53 = v50 + OBJC_IVAR____TtC13rtcreportingd7Session_parentSessionID;
  v54 = *(v0 + 616);
  v55 = *(v0 + 568);
  *(v50 + 112) = countAndFlagsBits;
  *(v50 + 120) = object;
  *(v0 + 832) = v52;
  *v53 = v55;
  v56 = OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID;
  *(v0 + 840) = OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID;
  v57 = v50 + v56;
  *(v50 + v56) = v54;
  if (v51)
  {
    v58 = *(v0 + 784);
    v59 = *(v0 + 768);
    v60 = *(v0 + 608);
    sub_100005C68();
    if (sub_1000110B4(v59) == 1)
    {
      v61 = *(v0 + 768);
      v62 = *(v0 + 624);
      v63 = *(v0 + 592);

      sub_100005000(v61, &qword_10008EDF8, &unk_10006E860);
      if (v63)
      {
        v64 = *(v0 + 736);
        v65 = *(v0 + 728);
        v66 = *(v0 + 720);
        v67 = *(v0 + 592);
        v68 = *(v0 + 584);

        static String.Encoding.utf8.getter();
        v123 = String.data(using:allowLossyConversion:)();
        v70 = v69;

        v71 = *(v65 + 8);
        v72 = sub_1000132F8();
        v73(v72);
        v122 = v70;
        if (v70 >> 60 == 15)
        {
          v74 = *(v0 + 560);

          *(v0 + 304) = *v74;
          sub_10000D9BC(v0 + 304);
          *(v0 + 320) = v74[1];
          sub_10000D9BC(v0 + 320);
          *(v0 + 336) = v74[2];
          sub_10000D9BC(v0 + 336);
          sub_100061318();
          v75 = swift_allocError();
          *v76 = 0;
          v77 = v75;
          swift_willThrow();
          v78 = *(*(v0 + 632) + 120);

          v79 = *(*(v0 + 632) + 184);

          sub_10006158C();
          v80 = *(v0 + 640);
          sub_100061698(v81);
          v83 = v77 + v82;
          v84 = type metadata accessor for Date();
          sub_100003C44(v84);
          (*(v85 + 8))(v77 + v57);
          v86 = *(v77 + v66);
          swift_unknownObjectRelease();
          v87 = *(v77 + v64);
          swift_unknownObjectRelease();
          v88 = *(v83 + 8);

          v89 = *(v53 + 8);

          swift_defaultActor_destroy();

          sub_100005000(v70, &qword_10008EDF8, &unk_10006E860);
          v90 = *(*v77 + 48);
          v91 = *(*v77 + 52);
          swift_deallocPartialClassInstance();
          v92 = *(v0 + 800);
          sub_100009988();

          sub_100001D4C();
          sub_100012828();

          __asm { BRAA            X1, X16 }
        }

        v103 = *(v0 + 712);
        v104 = *(v0 + 688);
        v121 = *(v0 + 680);
        v105 = *(v0 + 672);
        sub_100010240(&qword_10008E4D0, &type metadata accessor for SHA256);
        dispatch thunk of HashFunction.init()();
        sub_100025CD8(v123, v122);
        sub_100025C3C(v123, v122);
        sub_100022E50(v123, v122);
        dispatch thunk of HashFunction.finalize()();
        (*(v121 + 8))(v104, v105);
        SHA256Digest.withUnsafeBytes<A>(_:)();
        (*(*(v0 + 704) + 8))(*(v0 + 712), *(v0 + 696));
        sub_100022E50(v123, v122);
        v101 = (*(v0 + 544) % 0x64uLL);
        v102 = 100.0;
      }

      else
      {
        v101 = arc4random_uniform(0x2710u);
        v102 = 10000.0;
      }

      v96 = v101 / v102;
    }

    else
    {
      v97 = *(v0 + 792);
      v98 = *(v0 + 768);
      v99 = *(v0 + 624);
      sub_10000CDE8();
      sub_100006F04();
      v96 = *(v97 + 64);

      sub_10001061C();
      sub_10000A864(v97, v100);
    }
  }

  else
  {
    v95 = *(v0 + 624);
    v96 = *(v0 + 600);
  }

  v106 = *(v0 + 632);
  v107 = *(v0 + 185);
  v108 = *(v0 + 560);
  *(v106 + 128) = v96;
  *(v106 + 136) = &_swiftEmptyArrayStorage;
  *(v106 + 144) = &_swiftEmptyArrayStorage;
  *(v106 + 152) = 0;
  *(v106 + 160) = 1701736302;
  *(v106 + 168) = 0xE400000000000000;
  *(v106 + 176) = 2;
  *(v0 + 352) = *v108;
  *(v0 + 368) = v108[1];
  *(v0 + 384) = v108[2];
  v109 = *v108;
  v110 = v108[2];
  *(v106 + 208) = v108[1];
  *(v106 + 224) = v110;
  *(v106 + 192) = v109;
  *(v106 + 240) = v107;
  v112 = *(v106 + 112);
  v111 = *(v106 + 120);
  sub_100005CC0(v0 + 352, v0 + 400);
  sub_100005CC0(v0 + 368, v0 + 416);
  sub_100005CC0(v0 + 384, v0 + 432);
  sub_100005CC0(v0 + 352, v0 + 448);
  sub_100005CC0(v0 + 368, v0 + 464);
  sub_100005CC0(v0 + 384, v0 + 480);

  v113 = swift_task_alloc();
  *(v0 + 848) = v113;
  *v113 = v0;
  v113[1] = sub_10005C2F4;
  v114 = *(v0 + 560);
  sub_100012828();

  return sub_100006094(v115, v116, v117, v118);
}

uint64_t sub_10005C2F4()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *v1;
  sub_1000043E4();
  *v7 = v6;
  v2[107] = v0;

  if (v0)
  {
    v8 = v2[78];
    v9 = v2[74];

    sub_10000D9BC((v2 + 44));
    sub_10000D9BC((v2 + 46));
    sub_10000D9BC((v2 + 48));
    v10 = sub_10005DCA8;
  }

  else
  {
    v10 = sub_10005C454;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10005C454()
{
  sub_100004680();
  memcpy((*(v0 + 632) + OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider), (v0 + 16), 0x60uLL);
  sub_1000614E8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10005C4F4()
{
  sub_100004F30();
  v1 = *(v0[79] + 240) == 1;
  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = sub_10005C5E8;
  v3 = v0[79];
  v4 = v0[69];

  return sub_10000DB80((v0 + 24), v3, v1);
}

uint64_t sub_10005C5E8()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v3 = v2;
  v5 = *(v4 + 864);
  v6 = *v1;
  sub_1000043E4();
  *v7 = v6;
  v2[109] = v0;

  if (v0)
  {
    v8 = v2[79];
    v9 = v2[78];
    v10 = v2[74];

    sub_10000D9BC((v2 + 44));
    sub_10000D9BC((v2 + 46));
    sub_10000D9BC((v2 + 48));
    sub_100002A00();
    sub_100010240(v11, v12);
  }

  else
  {
    v13 = v2[79];
    sub_100002A00();
    v2[110] = sub_100010240(v14, v15);
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100003F70();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10005C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v13 = *(v12 + 632);
  v14 = *(v13 + 136);
  v15 = *(v13 + 144);
  v16 = *(v13 + 168);
  v17 = *(v12 + 217);
  v18 = *(v12 + 192);
  *(v13 + 152) = *(v12 + 208);
  *(v13 + 136) = v18;
  *(v13 + 161) = v17;

  v20 = *(v13 + 136);
  *(v12 + 888) = v20;
  v21 = *(v13 + 152);
  if (!*(v20 + 16) && !*(v13 + 152))
  {
    goto LABEL_3;
  }

  v31 = *(v12 + 632);
  v32 = *(v31 + 144);
  *(v12 + 896) = v32;
  if (*(v32 + 16))
  {
    v33 = qword_100095AF0;
    *(v12 + 904) = qword_100095AF0;
    if (v33)
    {
      v34 = *(v31 + 160);
      v35 = *(v31 + 168);
      *(v12 + 912) = v35;
      v36 = *(v31 + 176);
      *(v12 + 240) = v20;
      *(v12 + 248) = v32;
      *(v12 + 256) = v21;
      *(v12 + 264) = v34;
      *(v12 + 272) = v35;
      *(v12 + 280) = v36;

      v37 = swift_task_alloc();
      *(v12 + 920) = v37;
      *v37 = v12;
      v37[1] = sub_10005CB84;
      v38 = *(v12 + 632);
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (*(v31 + 240) == 1)
  {
    v39 = qword_100095AF0;
    *(v12 + 952) = qword_100095AF0;
    if (v39)
    {
      sub_10000CE84(v31);
      sub_100010288();
      sub_100010288();
      sub_100005CC0(v12 + 288, v12 + 496);
      v40 = sub_100010914();
      *(v12 + 960) = v40;
      *v40 = v12;
      sub_100008F94(v40);
LABEL_12:
      sub_100008E44();

      return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }

    goto LABEL_22;
  }

  result = sub_1000102C0();
  if (!v41)
  {
LABEL_3:
    sub_100005C34();

    sub_10000D9BC(v12 + 352);
    sub_10000D9BC(v12 + 368);
    sub_10000D9BC(v12 + 384);

    v22 = *(v12 + 800);
    sub_100009988();
    sub_100005000(*(v12 + 608), &qword_10008EDF8, &unk_10006E860);

    sub_100004D00();
    sub_100008E44();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  v42 = qword_100095AD8;
  *(v12 + 992) = qword_100095AD8;
  if (!v42)
  {
    goto LABEL_23;
  }

  sub_1000128CC();

  sub_10000D9BC(v12 + 352);
  sub_10000D9BC(v12 + 368);
  sub_10000D9BC(v12 + 384);
  v43 = sub_100010914();
  *(v12 + 1000) = v43;
  *v43 = v12;
  sub_100001E44(v43);
  sub_100006F5C(v44);
  sub_100008E44();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t sub_10005CB84()
{
  sub_100002618();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  sub_100002928();
  *v7 = v6;
  v9 = *(v8 + 920);
  v10 = *v1;
  sub_1000043E4();
  *v11 = v10;
  v6[116] = v0;

  if (v0)
  {
    v12 = v6[114];
    v13 = v6[113];
    v14 = v6[112];
    v15 = v6[111];
    v16 = v6[110];
    v17 = v6[79];
    v18 = v6[78];
    v19 = v6[74];

    sub_10000D9BC((v6 + 44));
    sub_10000D9BC((v6 + 46));
    sub_10000D9BC((v6 + 48));
  }

  else
  {
    v20 = v6[114];
    v21 = v6[113];
    v22 = v6[112];
    v23 = v6[111];
    v24 = v6[110];
    v25 = v6[79];

    v6[117] = v3;
    v6[118] = v5;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100003F70();

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_10005CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v13 = v12[117];
  v14 = (v12[79] + v12[103]);
  v15 = *v14;
  *v14 = v12[118];
  v14[1] = v13;
  result = swift_unknownObjectRelease();
  v17 = v12[79];
  if (*(v17 + 240) == 1)
  {
    v18 = qword_100095AF0;
    v12[119] = qword_100095AF0;
    if (v18)
    {
      sub_10000CE84(v17);
      sub_100010288();
      sub_100010288();
      sub_100005CC0((v12 + 36), (v12 + 62));
      v19 = sub_100010914();
      v12[120] = v19;
      *v19 = v12;
      sub_100008F94(v19);
      sub_100008E44();

      return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_1000102C0();
  if (!v28)
  {
    sub_100005C34();

    sub_10000D9BC((v12 + 44));
    sub_10000D9BC((v12 + 46));
    sub_10000D9BC((v12 + 48));

    v40 = v12[100];
    sub_100009988();
    sub_100005000(v12[76], &qword_10008EDF8, &unk_10006E860);

    sub_100004D00();
    sub_100008E44();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = qword_100095AD8;
  v12[124] = qword_100095AD8;
  if (!v29)
  {
    goto LABEL_16;
  }

  sub_1000128CC();

  sub_10000D9BC((v12 + 44));
  sub_10000D9BC((v12 + 46));
  sub_10000D9BC((v12 + 48));
  v30 = sub_100010914();
  v12[125] = v30;
  *v30 = v12;
  sub_100001E44(v30);
  sub_100006F5C(v31);
  sub_100008E44();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_10005D05C()
{
  sub_100002618();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  sub_100002928();
  *v7 = v6;
  v9 = *(v8 + 960);
  v10 = *v1;
  sub_1000043E4();
  *v11 = v10;
  v6[121] = v0;

  if (v0)
  {
    v12 = v6[119];
    v13 = v6[110];
    v14 = v6[79];
    v15 = v6[78];
    v16 = v6[74];
    sub_100005000((v6 + 64), &qword_10008FD70, &qword_10006FD20);
    sub_100005000((v6 + 65), &qword_10008FD70, &qword_10006FD20);
    sub_10000D9BC((v6 + 36));

    sub_10000D9BC((v6 + 44));
    sub_10000D9BC((v6 + 46));
    sub_10000D9BC((v6 + 48));
    swift_getObjectType();
    sub_100061734();
  }

  else
  {
    v17 = v6[119];
    v18 = v6[110];
    v19 = v6[79];
    v6[122] = v3;
    v6[123] = v5;
    sub_100061764((v6 + 64));
    sub_100061764((v6 + 65));
    sub_10000D9BC((v6 + 36));

    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
  }

  sub_100003F70();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_10005D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100010548();
  sub_100003EBC();
  v15 = v14[123];
  v16 = v14[122];
  v17 = (v14[79] + v14[102]);
  v18 = *v17;
  *v17 = v15;
  v17[1] = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v15)
  {
    sub_100005C34();

    sub_10000D9BC((v14 + 44));
    sub_10000D9BC((v14 + 46));
    sub_10000D9BC((v14 + 48));
    sub_100061318();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    v33 = sub_1000080F8();
    sub_100005000(v33, &qword_10008EDF8, &unk_10006E860);

    v34 = v14[100];
    sub_100009988();

    sub_100001D4C();
    sub_100008E28();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  swift_unknownObjectRelease();
  result = sub_1000102C0();
  if (v20)
  {
    v21 = qword_100095AD8;
    v14[124] = qword_100095AD8;
    if (!v21)
    {
      __break(1u);
      return result;
    }

    sub_1000128CC();

    sub_10000D9BC((v14 + 44));
    sub_10000D9BC((v14 + 46));
    sub_10000D9BC((v14 + 48));
    v22 = sub_100010914();
    v14[125] = v22;
    *v22 = v14;
    sub_100001E44(v22);
    sub_100006F5C(v23);
    sub_100008E28();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  sub_100005C34();

  sub_10000D9BC((v14 + 44));
  sub_10000D9BC((v14 + 46));
  sub_10000D9BC((v14 + 48));

  v35 = v14[100];
  sub_100009988();
  sub_100005000(v14[76], &qword_10008EDF8, &unk_10006E860);

  sub_100004D00();
  sub_100008E28();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10005D5A8()
{
  sub_100004F30();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  v5 = v2[125];
  *v4 = *v1;
  *(v3 + 1008) = v0;

  v6 = v2[124];
  v7 = v2[110];
  v8 = v2[79];

  if (v0)
  {
  }

  swift_getObjectType();
  sub_100061734();
  sub_100003F70();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10005D748()
{
  v35 = v0;
  v29 = v0[83];
  v30 = v0[82];
  v31 = v0[81];
  v32 = v0[126];
  v33 = v0[79];
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v2 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  sub_100003F10(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10006D1D0;
  v8 = (v7 + v6);
  v9 = *(v1 + 56);
  sub_100003CFC();
  *v8 = v10;
  v8[1] = 0xE700000000000000;
  *(v8 + v9) = 0;
  type metadata accessor for EventValue();
  sub_10006174C();
  v11 = *(v1 + 56);
  sub_10000FFD8();
  *v12 = v13;
  v12[1] = 0xE700000000000000;
  *(v12 + v14) = 0;
  sub_10006174C();
  v28 = Dictionary.init(dictionaryLiteral:)();
  static Locale.current.getter();
  v15 = Locale.regionCode.getter();
  v17 = v16;
  (*(v30 + 8))(v29, v31);
  if (!v17)
  {
    v15 = 16191;
    v17 = 0xE200000000000000;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10006CAD0;
  v19 = (v18 + v6);
  v20 = (v18 + v6 + *(v1 + 56));
  *v19 = 0x656C61636F4CLL;
  v19[1] = 0xE600000000000000;
  *v20 = v15;
  v20[1] = v17;
  swift_storeEnumTagMultiPayload();
  v21 = Dictionary.init(dictionaryLiteral:)();
  swift_isUniquelyReferenced_nonNull_native();
  v34 = v28;
  sub_100007B80();
  sub_100060854(v21, v22, 0, v23, &v34);
  v0[127] = v34;
  v24 = *(v33 + 240) == 1;
  v25 = swift_task_alloc();
  v0[128] = v25;
  *v25 = v0;
  v25[1] = sub_10005DA40;
  v26 = v0[79];

  return sub_10000BA94();
}

uint64_t sub_10005DA40()
{
  sub_100002624();
  v1 = *(*v0 + 1024);
  v2 = *(*v0 + 1016);
  v3 = *(*v0 + 880);
  v4 = *(*v0 + 632);
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;

  swift_getObjectType();
  sub_100061734();
  sub_100003F70();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005DBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  v13 = *(v12 + 800);
  sub_100009988();
  sub_100005000(*(v12 + 608), &qword_10008EDF8, &unk_10006E860);

  sub_100004D00();
  sub_100008E44();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_10005DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100010548();
  sub_100003EBC();
  v50 = v14[107];
  v19 = *(v14[79] + 120);

  v20 = v14[79];
  v21 = v20[17];
  v22 = v20[18];
  v23 = v20[21];

  v24 = v20[23];

  v25 = v20[25];
  v26 = v20[27];
  v27 = v20[29];

  sub_10006158C();
  v28 = v14[80];
  sub_100061698(v29);
  v31 = v27 + v30;
  v32 = type metadata accessor for Date();
  sub_100003C44(v32);
  (*(v33 + 8))(v27 + v17);
  v34 = *(v27 + v16);
  swift_unknownObjectRelease();
  v35 = *(v27 + v15);
  swift_unknownObjectRelease();
  v36 = *(v31 + 8);

  v37 = *(v18 + 8);

  swift_defaultActor_destroy();

  sub_100005000(v20, &qword_10008EDF8, &unk_10006E860);
  v38 = *(*v27 + 48);
  v39 = *(*v27 + 52);
  swift_deallocPartialClassInstance();
  v40 = v14[100];
  sub_100009988();

  sub_100001D4C();
  sub_100008E28();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50, a11, a12, a13, a14);
}

uint64_t sub_10005DE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  v13 = *(v12 + 872);
  v14 = sub_1000080F8();
  sub_100005000(v14, &qword_10008EDF8, &unk_10006E860);

  v15 = *(v12 + 800);
  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_10005DF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  v13 = *(v12 + 928);
  v14 = sub_1000080F8();
  sub_100005000(v14, &qword_10008EDF8, &unk_10006E860);

  v15 = *(v12 + 800);
  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_10005E080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  v13 = *(v12 + 968);
  v14 = sub_1000080F8();
  sub_100005000(v14, &qword_10008EDF8, &unk_10006E860);

  v15 = *(v12 + 800);
  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_10005E174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v13 = v12[79];
  v14 = v12[69];

  v15 = v12[126];
  v16 = sub_1000080F8();
  sub_100005000(v16, &qword_10008EDF8, &unk_10006E860);

  v17 = v12[100];
  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t *sub_10005E27C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (a2 - result + 7) >= 0xF)
  {
    v3 = 0;
    v4 = 8 * ((a2 - result) / 8);
    do
    {
      v5 = *result++;
      v3 ^= v5;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t sub_10005E49C()
{
  sub_100002624();
  v1 = *(v0 + 72);
  sub_100004500();
  sub_10000A864(v2, v3);
  v4 = *(v0 + 136);
  sub_1000616D4();

  sub_100001D4C();

  return v5();
}

uint64_t sub_10005E51C()
{
  sub_100002624();
  v1 = *(v0 + 144);

  v2 = *(v0 + 152);
  sub_1000616D4();

  sub_100001D4C();

  return v3();
}

uint64_t sub_10005E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  return _swift_task_switch(sub_10005E744, a4, 0);
}

uint64_t sub_10005E744()
{
  sub_100005464();
  if (*(v0[6] + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) == 1)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_10005E8F8;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];

    return sub_10005EF44(v4, v3);
  }

  else
  {
    sub_100012848();
    sub_1000228D4(&unk_10008FD30, &qword_100070028);
    v7 = swift_allocObject();
    v0[14] = v7;
    sub_100011A04(v7, xmmword_10006CAD0, v8, v9, v10, v11, v12, v13, v14, v21, v22, v24);

    v23 = v1 + *v1;
    v15 = v1[1];
    v16 = swift_task_alloc();
    v17 = sub_10000B9C4(v16);
    *v17 = v18;
    v19 = sub_10000C6D0(v17);

    return v20(v19);
  }
}

uint64_t sub_10005E8F8()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_10005EC5C;
  }

  else
  {
    v7 = sub_10005EA18;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10005EA18()
{
  sub_100005464();
  sub_100012848();
  sub_1000228D4(&unk_10008FD30, &qword_100070028);
  v2 = swift_allocObject();
  *(v0 + 112) = v2;
  sub_100011A04(v2, xmmword_10006CAD0, v3, v4, v5, v6, v7, v8, v9, v17, v18, v20);

  v19 = v1 + *v1;
  v10 = v1[1];
  v11 = swift_task_alloc();
  v12 = sub_10000B9C4(v11);
  *v12 = v13;
  v14 = sub_10000C6D0(v12);

  return v15(v14);
}

uint64_t sub_10005EB3C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[16] = v0;

  if (v0)
  {
    v9 = v3[6];

    return _swift_task_switch(sub_10005EDCC, v9, 0);
  }

  else
  {
    v10 = v3[14];

    sub_100001D4C();

    return v11();
  }
}

uint64_t sub_10005EF44(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_10005EF68, v2, 0);
}

void sub_10005EF68()
{
  sub_100004F30();
  v31 = v0;
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13rtcreportingd7Session_sendingNonRealtimeEvents;
  v0[11] = OBJC_IVAR____TtC13rtcreportingd7Session_sendingNonRealtimeEvents;
  if ((*(v1 + v2) & 1) != 0 || (v3 = OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents, v0[12] = OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents, *(v1 + v3) != 1))
  {
    sub_100001D4C();
    sub_100002794();

    __asm { BRAA            X1, X16 }
  }

  *(v1 + v2) = 1;
  if (qword_10008DDE8 != -1)
  {
    sub_10000522C();
  }

  v4 = v0[10];
  v5 = type metadata accessor for Logger();
  v0[13] = sub_1000050E4(v5, qword_10008FB00);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = sub_100004D20();
    v10 = sub_100004F18();
    v30 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000053A0(*(v8 + 112), *(v8 + 120), &v30);
    sub_1000028B8();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_100005284(v10);
    sub_100001D1C();
    sub_100001D1C();
  }

  v16 = v0[10];
  v17 = qword_100095AD8;
  v0[14] = qword_100095AD8;
  if (v17)
  {
    v18 = *(v16 + 112);
    v19 = *(v16 + 120);

    v20 = swift_task_alloc();
    v21 = sub_10000B9C4(v20);
    *v21 = v22;
    sub_10000B764(v21);
    sub_100002794();

    sub_10003E06C(v23, v24, v25, v26);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005F148()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v0;

  if (v0)
  {
    v8 = v3[10];
    v9 = sub_10005F818;
  }

  else
  {
    v10 = v3[14];
    v11 = v3[10];

    v9 = sub_10005F260;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10005F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100010548();
  sub_100003EBC();
  v15 = v14[16];
  v16 = *(v15 + 16);
  v14[18] = v16;
  if (v16)
  {
    v14[5] = _swiftEmptyArrayStorage;
    sub_10001C5CC(0, v16, 0);
    v17 = v14[5];
    v18 = (v15 + 56);
    do
    {
      v20 = *(v18 - 2);
      v19 = *(v18 - 1);
      v21 = *v18;
      v14[5] = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1000615B0();
        sub_10001C5CC(v25, v26, v27);
        v17 = v14[5];
      }

      v14[19] = v17;
      *(v17 + 16) = v23 + 1;
      v24 = (v17 + 24 * v23);
      v24[4] = v20;
      v24[5] = v19;
      v24[6] = v21;
      v18 += 4;
      --v16;
    }

    while (v16);
    v28 = v14[8];
    v55 = v14[9];
    swift_getObjectType();
    v29 = *(v55 + 24);
    v56 = v55 + 24;
    v54 = v29 + *v29;
    v30 = v29[1];
    v31 = swift_task_alloc();
    v14[20] = v31;
    *v31 = v14;
    v31[1] = sub_10005F474;
    v33 = v14[8];
    v32 = v14[9];
    sub_100008E28();

    return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, v54, v56, a12, a13, a14);
  }

  else
  {
    v43 = v14[11];
    v44 = v14[12];
    v45 = v14[10];

    *(v45 + v44) = 0;
    *(v45 + v43) = 0;
    sub_100001D4C();
    sub_100008E28();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10005F474()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = sub_10005F884;
  }

  else
  {
    v11 = v3[19];
    v12 = v3[10];

    v10 = sub_10005F584;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_10005F584()
{
  sub_100003F58();
  sub_100005464();
  v1 = qword_100095AD8;
  v0[22] = qword_100095AD8;
  if (v1)
  {
    v2 = v0[18];
    v0[6] = _swiftEmptyArrayStorage;

    sub_100013250();
    sub_100061670();
    do
    {
      sub_100061510();
      if (v4)
      {
        sub_100060CA4((v3 > 1), v2, 1);
        v6 = v0[6];
      }

      sub_100011CF0();
    }

    while (!v5);
    v7 = v0[16];

    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    sub_100011770(v8);
    sub_100008E70();

    sub_10003E188(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005F668()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = sub_10005FA40;
  }

  else
  {
    v12 = v3[22];
    v11 = v3[23];
    v13 = v3[10];

    v10 = sub_10005F780;
    v9 = v13;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_10005F780()
{
  v1 = qword_100095AD8;
  *(v0 + 112) = qword_100095AD8;
  if (v1)
  {
    sub_100002624();
    v2 = *(v0 + 80);
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);

    v5 = swift_task_alloc();
    v6 = sub_10000B9C4(v5);
    *v6 = v7;
    v8 = sub_10000B764();

    sub_10003E06C(v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005F818()
{
  sub_100002624();
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];

  *(v4 + v3) = 0;
  sub_100001D4C();

  return v5();
}

void sub_10005F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_100003F58();
  a17 = v19;
  a18 = v20;
  sub_100005464();
  a16 = v18;
  v21 = v18[21];
  v22 = v18[19];
  v23 = v18[13];

  swift_errorRetain();
  v24 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_1000110CC())
  {
    v25 = v18[21];
    v26 = sub_100004D20();
    v27 = sub_100004F18();
    a9 = v27;
    *v26 = 136446210;
    swift_getErrorValue();
    v28 = sub_1000052DC();
    v30 = sub_1000053A0(v28, v29, &a9);

    *(v26 + 4) = v30;
    sub_100005B74();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_100005284(v27);
    sub_100001D64();
    sub_100003D78();
  }

  else
  {
    v36 = v18[21];
  }

  v37 = qword_100095AD8;
  v18[22] = qword_100095AD8;
  if (v37)
  {
    v38 = v18[18];
    v18[6] = _swiftEmptyArrayStorage;

    sub_100013250();
    sub_100061670();
    do
    {
      sub_100061510();
      if (v40)
      {
        sub_100060CA4((v39 > 1), v38, 1);
        v42 = v18[6];
      }

      sub_100011CF0();
    }

    while (!v41);
    v43 = v18[16];

    v44 = swift_task_alloc();
    v18[24] = v44;
    *v44 = v18;
    sub_100011770(v44);
    sub_100008E70();

    sub_10003E188(v45);
  }

  else
  {
    __break(1u);
  }
}