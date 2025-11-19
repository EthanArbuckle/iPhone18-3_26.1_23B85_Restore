void sub_10038D760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v82 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v85 = &v82 - v16;
  v17 = __chkstk_darwin(v15);
  v86 = &v82 - v18;
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = a3;
  v26 = *(a3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v89 = v9;
    if (qword_101694960 == -1)
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
  v28 = type metadata accessor for Logger();
  v29 = sub_1000076D4(v28, qword_10177B380);
  v30 = v11[2];
  v92 = a1;
  v87 = v30;
  v30(v20, a1, v10);
  v88 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v83 = a2;
    v35 = v11;
    v36 = v34;
    v95[0] = v34;
    *v33 = 136315138;
    sub_1002FFBAC();
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v90 = v35[1];
    v90(v20, v10);
    v40 = sub_1000136BC(v37, v39, v95);

    *(v33 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "didCompletePlayingUnauthorizedSoundOnDevice %s", v33, 0xCu);
    sub_100007BAC(v36);
    a2 = v83;
  }

  else
  {

    v90 = v11[1];
    v90(v20, v10);
  }

  v41 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v42 = v91;
  swift_beginAccess();
  v43 = *(v42 + v41);
  v44 = v92;
  if (!*(v43 + 16))
  {
LABEL_12:
    v66 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    sub_10000B3A8(v67, &qword_1016998E0, &qword_101392030);
    v68 = v86;
    v87(v86, v44, v10);
    v55 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v94 = v71;
      *v70 = 136315138;
      sub_1002FFBAC();
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v90(v68, v10);
      v75 = sub_1000136BC(v72, v74, &v94);

      *(v70 + 4) = v75;
      v76 = "didCompletePlayingUnauthorizedSoundOnDevice called with unknown device %s";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v55, v69, v76, v70, 0xCu);
      sub_100007BAC(v71);

      goto LABEL_15;
    }

LABEL_18:

    v81 = v68;
    goto LABEL_19;
  }

  v45 = sub_1000210EC(v44);
  if ((v46 & 1) == 0)
  {

    goto LABEL_12;
  }

  v47 = v45;
  v48 = *(v43 + 56);
  v49 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v50 = *(v49 - 8);
  v51 = v48 + *(v50 + 72) * v47;
  v52 = v89;
  sub_10038E0A0(v51, v89);

  (*(v50 + 56))(v52, 0, 1, v49);
  v53 = v92;
  sub_10000B3A8(v52, &qword_1016998E0, &qword_101392030);
  sub_100815748(v53, 0, 0);
  if (!a2)
  {
    v68 = v84;
    v87(v84, v53, v10);
    v55 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v94 = v71;
      *v70 = 136315138;
      sub_1002FFBAC();
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      v90(v68, v10);
      v80 = sub_1000136BC(v77, v79, &v94);

      *(v70 + 4) = v80;
      v76 = "didCompletePlayingUnauthorizedSoundOnDevice %s succeeded";
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v54 = v85;
  v87(v85, v53, v10);
  swift_errorRetain();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = v54;
    v58 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v58 = 136315394;
    sub_1002FFBAC();
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v90(v57, v10);
    v62 = sub_1000136BC(v59, v61, &v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v93 = a2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v63 = String.init<A>(describing:)();
    v65 = sub_1000136BC(v63, v64, &v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v55, v56, "didCompletePlayingUnauthorizedSoundOnDevice %s failed due to %s", v58, 0x16u);
    swift_arrayDestroy();

LABEL_15:

    return;
  }

  v81 = v54;
LABEL_19:
  v90(v81, v10);
}

uint64_t sub_10038E0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038E168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169EA10, &qword_10139DD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038E1D8()
{
  if (*v0)
  {
    result = 0x6574746142776F6CLL;
  }

  else
  {
    result = 0x61426C616D726F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_10038E224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61426C616D726F6ELL && a2 == 0xED00007972657474;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574746142776F6CLL && a2 == 0xEA00000000007972)
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

uint64_t sub_10038E310(uint64_t a1)
{
  v2 = sub_1003908AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038E34C(uint64_t a1)
{
  v2 = sub_1003908AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static MacBeaconConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return sub_10038F898(*(a1 + 48), *(a2 + 48));
  }

  else
  {
    return 0;
  }
}

uint64_t AllMacBeaconConfigs.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169EA18, &qword_10139DD58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1003908AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v25[0] = *v3;
  v25[1] = v11;
  v13 = *v3;
  v12 = v3[1];
  v25[2] = v3[2];
  v26 = *(v3 + 6);
  v19 = v13;
  v20 = v12;
  v21 = v3[2];
  v22 = *(v3 + 6);
  v27 = 0;
  sub_10038E124(v25, v18);
  sub_100390900();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v14 = *(v3 + 72);
    v23[0] = *(v3 + 56);
    v23[1] = v14;
    v23[2] = *(v3 + 88);
    v24 = *(v3 + 13);
    v15 = *(v3 + 72);
    v19 = *(v3 + 56);
    v20 = v15;
    v21 = *(v3 + 88);
    v22 = *(v3 + 13);
    v27 = 1;
    sub_10038E168(v23, v18);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 AllMacBeaconConfigs.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100390954(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

BOOL sub_10038E68C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_10038E72C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10038E828@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100390C08(*a1);
  *a2 = result;
  return result;
}

void sub_10038E858(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = *v1;
  v4 = "instructionsToDisableItems";
  v5 = "isementDurationInSecs";
  v6 = 0xD00000000000002ALL;
  if (v3 != 5)
  {
    v6 = 0xD000000000000020;
    v5 = "isementDurationDecayFactor";
  }

  v7 = "ementIntervalInSecs";
  v8 = 0xD000000000000025;
  if (v3 == 3)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v7 = "slowRollDurationInSecs";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "initialNoBeaconPeriodInSecs";
  if (v3 != 1)
  {
    v2 = 0xD000000000000023;
    v9 = "fastRollDurationInSecs";
  }

  if (*v1)
  {
    v4 = v9;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v6;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

unint64_t sub_10038E920()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = 0xD00000000000002ALL;
  if (v2 != 5)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 0xD000000000000025;
  if (v2 == 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000023;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_10038E9E4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100390C08(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10038EA0C(uint64_t a1)
{
  v2 = sub_100390F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038EA48(uint64_t a1)
{
  v2 = sub_100390F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall MacBeaconConfig.init(initialNoBeaconDuration:fastRollAdvertisementDuration:fastRollAdvertisementInterval:slowRollAdvertisementDuration:slowRollNoAdvertisementDuration:noAdvertisementDurationDecayFactor:postInitialDayAdvertisementTimes:)(searchpartyd::MacBeaconConfig *__return_ptr retstr, Swift::Double initialNoBeaconDuration, Swift::Double fastRollAdvertisementDuration, Swift::Double fastRollAdvertisementInterval, Swift::Double slowRollAdvertisementDuration, Swift::Double slowRollNoAdvertisementDuration, Swift::Double noAdvertisementDurationDecayFactor, Swift::OpaquePointer postInitialDayAdvertisementTimes)
{
  retstr->initialNoBeaconDuration = initialNoBeaconDuration;
  retstr->fastRollAdvertisementDuration = fastRollAdvertisementDuration;
  retstr->fastRollAdvertisementInterval = fastRollAdvertisementInterval;
  retstr->slowRollAdvertisementDuration = slowRollAdvertisementDuration;
  retstr->slowRollNoAdvertisementDuration = slowRollNoAdvertisementDuration;
  retstr->noAdvertisementDurationDecayFactor = noAdvertisementDurationDecayFactor;
  retstr->postInitialDayAdvertisementTimes = postInitialDayAdvertisementTimes;
}

double MacBeaconConfig.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100390C54(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t MacBeaconConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169EA30, &unk_10139DD60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100390F1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v25 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v24 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v22 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v21 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v20 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[6];
    v18[15] = 6;
    sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
    sub_100391400(&qword_10169EA40);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10038ED80(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038EE10(uint64_t a1, uint64_t a2)
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
    for (i = (a1 + 56); ; i += 32)
    {
      if (*(i - 24) != *(v4 - 24))
      {
        return 0;
      }

      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      v12 = v7 >> 62;
      v13 = v10 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v22 = *(v6 + 16);
          v21 = *(v6 + 24);
          v19 = __OFSUB__(v21, v22);
          v14 = v21 - v22;
          if (v19)
          {
            goto LABEL_63;
          }

          goto LABEL_22;
        }

        v14 = 0;
        if (v13 <= 1)
        {
          goto LABEL_23;
        }
      }

      else if (v12)
      {
        LODWORD(v14) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_62;
        }

        v14 = v14;
        if (v13 <= 1)
        {
LABEL_23:
          if (v13)
          {
            LODWORD(v20) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              goto LABEL_61;
            }

            v20 = v20;
          }

          else
          {
            v20 = BYTE6(v10);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v14 = BYTE6(v7);
        if (v13 <= 1)
        {
          goto LABEL_23;
        }
      }

LABEL_16:
      if (v13 != 2)
      {
        if (v14)
        {
          return 0;
        }

LABEL_34:
        sub_100017D5C(*(i - 2), *(i - 1));
        v15 = v9;
        v16 = v10;
LABEL_35:
        sub_100017D5C(v15, v16);
        goto LABEL_56;
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      v19 = __OFSUB__(v17, v18);
      v20 = v17 - v18;
      if (v19)
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

LABEL_29:
      if (v14 != v20)
      {
        return 0;
      }

      if (v14 < 1)
      {
        goto LABEL_34;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v35 = *v4;
          v36 = *i;
          v37 = v3;
          v25 = *(v6 + 16);
          v34 = *(v6 + 24);
          sub_100017D5C(v6, v7);
          sub_100017D5C(v9, v10);
          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = __DataStorage._offset.getter();
            if (__OFSUB__(v25, v27))
            {
              goto LABEL_66;
            }

            v26 += v25 - v27;
          }

          if (__OFSUB__(v34, v25))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v28 = v26;
          v29 = v9;
          v30 = v10;
          v3 = v37;
          goto LABEL_52;
        }

        memset(v39, 0, 14);
        sub_100017D5C(v6, v7);
        sub_100017D5C(v9, v10);
        v23 = v9;
        v24 = v10;
      }

      else
      {
        if (v12)
        {
          v35 = *v4;
          v36 = *i;
          if (v6 >> 32 < v6)
          {
            goto LABEL_64;
          }

          sub_100017D5C(v6, v7);
          sub_100017D5C(v9, v10);
          v31 = __DataStorage._bytes.getter();
          if (v31)
          {
            v32 = __DataStorage._offset.getter();
            if (__OFSUB__(v6, v32))
            {
              goto LABEL_67;
            }

            v31 += v6 - v32;
          }

          __DataStorage._length.getter();
          v28 = v31;
          v29 = v9;
          v30 = v10;
LABEL_52:
          sub_100771A28(v28, v29, v30, v39);
          v11 = v35;
          v8 = v36;
          if ((v39[0] & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v39[0] = *(i - 2);
        LOWORD(v39[1]) = v7;
        BYTE2(v39[1]) = BYTE2(v7);
        BYTE3(v39[1]) = BYTE3(v7);
        BYTE4(v39[1]) = BYTE4(v7);
        BYTE5(v39[1]) = BYTE5(v7);
        sub_100017D5C(v6, v7);
        sub_100017D5C(v9, v10);
        v23 = v9;
        v24 = v10;
      }

      sub_100771A28(v39, v23, v24, &v38);
      if (!v38)
      {
LABEL_59:
        sub_100016590(v9, v10);
        sub_100016590(v6, v7);
        return 0;
      }

LABEL_56:
      sub_100016590(v9, v10);
      sub_100016590(v6, v7);
      if (v8 != v11)
      {
        return 0;
      }

      v4 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    v14 = 0;
    if (!v6 && v7 == 0xC000000000000000 && v10 >> 62 == 3)
    {
      v14 = 0;
      if (!v9 && v10 == 0xC000000000000000)
      {
        sub_100017D5C(0, 0xC000000000000000);
        v15 = 0;
        v16 = 0xC000000000000000;
        goto LABEL_35;
      }
    }

LABEL_22:
    if (v13 <= 1)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_10038F298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v15 = a1;
    v16 = a2;
    while (1)
    {
      v4 = a1 + v3;
      v5 = a2 + v3;
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
      {
        break;
      }

      v6 = *(v4 + 56);
      v7 = *(v4 + 64);
      v8 = *(v4 + 80);
      v9 = *(v4 + 88);
      v10 = *(v5 + 56);
      v11 = *(v5 + 64);
      v12 = *(v5 + 80);
      v17 = *(v5 + 72);
      v18 = *(v4 + 72);
      v13 = *(v5 + 88);
      if ((*(v4 + 40) != *(v5 + 40) || *(v4 + 48) != *(v5 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if ((v6 != v10 || v7 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if (!v12 || (v18 != v17 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v9 == 2)
      {
        if (v13 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v13 == 2 || ((v13 ^ v9) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 64;
      --v2;
      a1 = v15;
      a2 = v16;
      if (!v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10038F40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeTrackingLocation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100391338(v14, v11, type metadata accessor for WildModeTrackingLocation);
      sub_100391338(v15, v8, type metadata accessor for WildModeTrackingLocation);
      if (*v11 != *v8 || v11[1] != v8[1] || v11[2] != v8[2])
      {
        break;
      }

      v17 = *(v4 + 28);
      v18 = static Date.== infix(_:_:)();
      sub_1003913A0(v8, type metadata accessor for WildModeTrackingLocation);
      sub_1003913A0(v11, type metadata accessor for WildModeTrackingLocation);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1003913A0(v8, type metadata accessor for WildModeTrackingLocation);
    sub_1003913A0(v11, type metadata accessor for WildModeTrackingLocation);
    goto LABEL_13;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_10038F634(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v20 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = (v20 + 32 * v3);
    v6 = (v4 + 32 * v3);
    if (*v5 != *v6)
    {
      return 0;
    }

    result = v5[1];
    v7 = v5[3];
    v8 = v6[3];
    if (result != v6[1] || v5[2] != v6[2])
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v10 = *(v7 + 16);
    if (v10 != *(v8 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v7 == v8;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v7 + 64);
      v13 = (v8 + 64);
      while (v10)
      {
        if (*(v12 - 4) != *(v13 - 4))
        {
          return 0;
        }

        result = *(v12 - 3);
        v14 = *(v12 - 1);
        v15 = *v12;
        v16 = *(v13 - 1);
        v17 = *v13;
        if (result != *(v13 - 3) || *(v12 - 2) != *(v13 - 2))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v14 != v16 || v15 != v17)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v12 += 5;
        v13 += 5;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10038F7B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10038F898(uint64_t result, uint64_t a2)
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

uint64_t sub_10038F8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); *(v3 - 4) == *(i - 4); i += 5)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
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

uint64_t sub_10038F9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawSearchResult();
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_15:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_100391338(v14, v11, type metadata accessor for RawSearchResult);
      sub_100391338(v15, v8, type metadata accessor for RawSearchResult);
      if (*v11 != *v8)
      {
        break;
      }

      v17 = v4[5];
      if ((static Date.== infix(_:_:)() & 1) == 0 || *&v11[v4[6]] != *&v8[v4[6]] || *&v11[v4[7]] != *&v8[v4[7]] || *&v11[v4[8]] != *&v8[v4[8]])
      {
        break;
      }

      v18 = v4[12];
      v19 = static UUID.== infix(_:_:)();
      sub_1003913A0(v8, type metadata accessor for RawSearchResult);
      sub_1003913A0(v11, type metadata accessor for RawSearchResult);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_1003913A0(v8, type metadata accessor for RawSearchResult);
    sub_1003913A0(v11, type metadata accessor for RawSearchResult);
    goto LABEL_15;
  }

  v19 = 1;
  return v19 & 1;
}

BOOL sub_10038FC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 48);
        v12[2] = *(v3 + 32);
        v12[3] = v5;
        v13 = *(v3 + 64);
        v6 = *(v3 + 16);
        v12[0] = *v3;
        v12[1] = v6;
        v7 = *(v4 + 48);
        v14[2] = *(v4 + 32);
        v14[3] = v7;
        v15 = *(v4 + 64);
        v8 = *(v4 + 16);
        v14[0] = *v4;
        v14[1] = v8;
        sub_1003914F8(v12, v11);
        sub_1003914F8(v14, v11);
        v9 = sub_1012598A0(v12, v14);
        sub_100391554(v14);
        sub_100391554(v12);
        if (!v9)
        {
          break;
        }

        v3 += 72;
        v4 += 72;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v9;
}

uint64_t sub_10038FD28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      if (*(v4 - 2) != *(i - 2))
      {
        return 0;
      }

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
          v18 = *(v7 + 16);
          v17 = *(v7 + 24);
          v15 = __OFSUB__(v17, v18);
          v12 = v17 - v18;
          if (v15)
          {
            goto LABEL_59;
          }

          goto LABEL_24;
        }

        v12 = 0;
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

      else if (v10)
      {
        LODWORD(v12) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_58;
        }

        v12 = v12;
        if (v11 <= 1)
        {
LABEL_25:
          if (v11)
          {
            LODWORD(v16) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
            }

            v16 = v16;
          }

          else
          {
            v16 = BYTE6(v8);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v12 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

LABEL_18:
      if (v11 != 2)
      {
        if (v12)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_57;
      }

LABEL_29:
      if (v12 != v16)
      {
        return 0;
      }

      if (v12 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v29 = v3;
          v19 = *(v7 + 16);
          v28 = *(v7 + 24);
          sub_100017D5C(v7, v6);
          sub_100017D5C(v9, v8);
          v20 = __DataStorage._bytes.getter();
          if (v20)
          {
            v21 = __DataStorage._offset.getter();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_62;
            }

            v20 += v19 - v21;
          }

          if (__OFSUB__(v28, v19))
          {
            goto LABEL_61;
          }

          __DataStorage._length.getter();
          v22 = v20;
          v23 = v9;
          v24 = v8;
          v3 = v29;
          goto LABEL_50;
        }

        memset(v31, 0, 14);
        sub_100017D5C(v7, v6);
        sub_100017D5C(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_60;
          }

          sub_100017D5C(v7, v6);
          sub_100017D5C(v9, v8);
          v25 = __DataStorage._bytes.getter();
          if (v25)
          {
            v26 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v26))
            {
              goto LABEL_63;
            }

            v25 += v7 - v26;
          }

          __DataStorage._length.getter();
          v22 = v25;
          v23 = v9;
          v24 = v8;
LABEL_50:
          sub_100771A28(v22, v23, v24, v31);
          sub_100016590(v9, v8);
          sub_100016590(v7, v6);
          if ((v31[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v31[0] = *(v4 - 1);
        LOWORD(v31[1]) = v6;
        BYTE2(v31[1]) = BYTE2(v6);
        BYTE3(v31[1]) = BYTE3(v6);
        BYTE4(v31[1]) = BYTE4(v6);
        BYTE5(v31[1]) = BYTE5(v6);
        sub_100017D5C(v7, v6);
        sub_100017D5C(v9, v8);
      }

      sub_100771A28(v31, v9, v8, &v30);
      sub_100016590(v9, v8);
      sub_100016590(v7, v6);
      if (!v30)
      {
        return 0;
      }

LABEL_6:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    v12 = 0;
    if (!v7 && v6 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v12 = 0;
      if (!v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    if (v11 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_10039014C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultConfigurationLayer();
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
        sub_100391338(v14, v11, type metadata accessor for DefaultConfigurationLayer);
        sub_100391338(v15, v8, type metadata accessor for DefaultConfigurationLayer);
        v17 = sub_100904838(v11, v8);
        sub_1003913A0(v8, type metadata accessor for DefaultConfigurationLayer);
        sub_1003913A0(v11, type metadata accessor for DefaultConfigurationLayer);
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

uint64_t sub_1003902F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
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
    sub_1003912E0();
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

id MacBeaconConfig.xpcObject()()
{
  v1 = *(v0 + 6);
  v2 = *(v1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(NSNumber) initWithInteger:v4];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
  }

  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v12 = objc_allocWithZone(SPMacBeaconConfig);
  sub_100390F70();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithInitialNoBeaconDuration:isa fastRollAdvertisementDuration:v6 fastRollAdvertisementInterval:v7 slowRollAdvertisementDuration:v8 slowRollNoAdvertisementDuration:v9 noAdvertisementDurationDecayFactor:v10 postInitialDayAdvertisementTimes:v11];

  return v14;
}

uint64_t sub_100390648(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && (*(a1 + 32) == *(a2 + 32) ? (v2 = *(a1 + 40) == *(a2 + 40)) : (v2 = 0), v2))
  {
    return sub_10038F898(*(a1 + 48), *(a2 + 48));
  }

  else
  {
    return 0;
  }
}

BOOL _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    v22 = v2;
    v23 = v3;
    v6 = a1;
    if ((sub_10038F898(*(a1 + 48), *(a2 + 48)) & 1) == 0)
    {
      return 0;
    }

    v18 = *(v6 + 56);
    v8 = *(v6 + 88);
    v19 = *(v6 + 72);
    v20 = v8;
    v9 = *(v6 + 104);
    v21 = v9;
    v10 = *(a2 + 72);
    v14 = *(a2 + 56);
    v15 = v10;
    v16 = *(a2 + 88);
    v11 = *(a2 + 104);
    v17 = v11;
    if (v9)
    {
      if (v11 && *&v18 == *&v14 && *(&v18 + 1) == *(&v14 + 1) && *&v19 == *&v15 && *(&v19 + 1) == *(&v15 + 1) && *&v20 == *&v16 && *(&v20 + 1) == *(&v16 + 1))
      {
        v12 = sub_10038F898(v9, v11);
        sub_10038E168(&v18, v13);
        sub_10038E168(&v14, v13);

        return (v12 & 1) != 0;
      }
    }

    else if (!v11)
    {
      sub_10038E168(&v18, v13);
      sub_10038E168(&v14, v13);

      return 1;
    }

    sub_10038E168(&v18, v13);
    sub_10038E168(&v14, v13);

    return 0;
  }

  return result;
}

unint64_t sub_1003908AC()
{
  result = qword_10169EA20;
  if (!qword_10169EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA20);
  }

  return result;
}

unint64_t sub_100390900()
{
  result = qword_10169EA28;
  if (!qword_10169EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA28);
  }

  return result;
}

uint64_t sub_100390954@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000BC4D4(&qword_10169EA88, &qword_10139E138);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1003908AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v10 = v5;
  LOBYTE(v30) = 0;
  sub_10039146C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v53 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v8, v4);
  v18 = v49;
  v19 = v50;
  v20 = v51;
  v27 = *(&v52 + 1);
  v28 = v52;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  *&v31 = v13;
  *(&v31 + 1) = v14;
  *&v32 = v15;
  *(&v32 + 1) = v16;
  *&v33 = v17;
  *(&v33 + 1) = v49;
  v34 = v50;
  v35 = v51;
  v36 = v52;
  sub_1003914C0(&v30, &v37);
  sub_100007BAC(a1);
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = v28;
  v48 = v27;
  result = sub_10015056C(&v37);
  v22 = v35;
  v23 = v29;
  v29[4] = v34;
  v23[5] = v22;
  v23[6] = v36;
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v25 = v33;
  v23[2] = v32;
  v23[3] = v25;
  return result;
}

unint64_t sub_100390C08(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608AC8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100390C54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_10169EA78, &qword_10139E130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100390F1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v32 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v31 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v30 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v29 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v28 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  v27 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
  v26 = 6;
  sub_100391400(&qword_10169EA80);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v23 = v25[1];
  result = sub_100007BAC(a1);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v22;
  a2[6] = v23;
  return result;
}

unint64_t sub_100390F1C()
{
  result = qword_10169EA38;
  if (!qword_10169EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA38);
  }

  return result;
}

unint64_t sub_100390F70()
{
  result = qword_1016AD650;
  if (!qword_1016AD650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016AD650);
  }

  return result;
}

__n128 sub_100390FBC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

__n128 sub_100390FF0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10039100C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100391054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003910D4()
{
  result = qword_10169EA48;
  if (!qword_10169EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA48);
  }

  return result;
}

unint64_t sub_10039112C()
{
  result = qword_10169EA50;
  if (!qword_10169EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA50);
  }

  return result;
}

unint64_t sub_100391184()
{
  result = qword_10169EA58;
  if (!qword_10169EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA58);
  }

  return result;
}

unint64_t sub_1003911DC()
{
  result = qword_10169EA60;
  if (!qword_10169EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA60);
  }

  return result;
}

unint64_t sub_100391234()
{
  result = qword_10169EA68;
  if (!qword_10169EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA68);
  }

  return result;
}

unint64_t sub_10039128C()
{
  result = qword_10169EA70;
  if (!qword_10169EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA70);
  }

  return result;
}

unint64_t sub_1003912E0()
{
  result = qword_1016984A0;
  if (!qword_1016984A0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984A0);
  }

  return result;
}

uint64_t sub_100391338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003913A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100391400(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697E40, qword_1013C5620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10039146C()
{
  result = qword_10169EA90;
  if (!qword_10169EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA90);
  }

  return result;
}

uint64_t sub_1003915A8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ACB0);
  sub_1000076D4(v0, qword_10177ACB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100391628(unsigned __int16 a1)
{
  if (a1 > 0x103u)
  {
    if (a1 > 0x10Bu)
    {
      if (a1 == 268)
      {
        return 1;
      }

      if (a1 == 516)
      {
        return 7;
      }
    }

    else
    {
      if (a1 == 260)
      {
        return 6;
      }

      if (a1 == 267)
      {
        return 0;
      }
    }
  }

  else if (a1 > 0x101u)
  {
    if (a1 == 258)
    {
      return 4;
    }

    if (a1 == 259)
    {
      return 5;
    }
  }

  else
  {
    if (a1 == 256)
    {
      return 2;
    }

    if (a1 == 257)
    {
      return 3;
    }
  }

  return 8;
}

unint64_t sub_1003916FC()
{
  result = qword_10169EA98;
  if (!qword_10169EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EA98);
  }

  return result;
}

unint64_t sub_100391750@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_100100ACC(__dst);
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v19 = sub_1000479AC(__dst);
        a1[3] = &type metadata for AirPodsSWSendPairingDataCommandPayload;
        a1[4] = sub_1001019A0();
        v20 = swift_allocObject();
        *a1 = v20;
        memmove((v20 + 16), v19, 0x108uLL);
        memcpy(v30, v1, sizeof(v30));
        v16 = sub_1000479AC(v30);
        v17 = &unk_101697348;
        v18 = &unk_10138BEB0;
      }

      else
      {
        v27 = sub_1000479AC(__dst);
        a1[3] = &type metadata for AirPodsSWFinalizePairingCommandPayload;
        a1[4] = sub_100391AEC();
        v28 = swift_allocObject();
        *a1 = v28;
        memmove((v28 + 16), v27, 0x70uLL);
        memcpy(v30, v1, sizeof(v30));
        v16 = sub_1000479AC(v30);
        v17 = &unk_10169EAB0;
        v18 = &unk_1013F9C00;
      }
    }

    else
    {
      if (!v3)
      {
        v4 = sub_1000479AC(__dst);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v5 = swift_allocObject();
        *a1 = v5;
        v6 = v4[1];
        *(v5 + 16) = *v4;
        *(v5 + 32) = v6;
        memcpy(v30, v1, sizeof(v30));
        v7 = sub_1000479AC(v30);
        v8 = v7[2];
        v9 = v7[3];
        sub_100017D5C(*v7, v7[1]);
        return sub_100017D5C(v8, v9);
      }

      v21 = sub_1000479AC(__dst);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v22 = swift_allocObject();
      *a1 = v22;
      memmove((v22 + 16), v21, 0x50uLL);
      memcpy(v30, v1, sizeof(v30));
      v16 = sub_1000479AC(v30);
      v17 = &unk_10169EAC0;
      v18 = &unk_10139E338;
    }

    return sub_1000D2A70(v16, v29, v17, v18);
  }

  if (v3 <= 5)
  {
    if (v3 != 4)
    {
      v23 = sub_1000479AC(__dst);
      v24 = *v23;
      v25 = v23[1];
      a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      a1[4] = sub_100391A98();
      *a1 = v24;
      a1[1] = v25;
      memcpy(v30, v1, sizeof(v30));
      v26 = sub_1000479AC(v30);
      return sub_100017D5C(*v26, *(v26 + 8));
    }

    v11 = sub_1000479AC(__dst);
    a1[3] = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
    a1[4] = sub_100101224();
    v12 = swift_allocObject();
    *a1 = v12;
    v13 = v11[3];
    v15 = *v11;
    v14 = v11[1];
    v12[3] = v11[2];
    v12[4] = v13;
    v12[1] = v15;
    v12[2] = v14;
    memcpy(v30, v1, sizeof(v30));
    v16 = sub_1000479AC(v30);
    v17 = &unk_101697310;
    v18 = &unk_10139E330;
    return sub_1000D2A70(v16, v29, v17, v18);
  }

  if (v3 == 6)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

unint64_t sub_100391A98()
{
  result = qword_10169EAA0;
  if (!qword_10169EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAA0);
  }

  return result;
}

unint64_t sub_100391AEC()
{
  result = qword_10169EAA8;
  if (!qword_10169EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAA8);
  }

  return result;
}

unint64_t sub_100391B40()
{
  result = qword_10169EAB8;
  if (!qword_10169EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAB8);
  }

  return result;
}

unint64_t sub_100391B94()
{
  result = qword_10169EAC8;
  if (!qword_10169EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAC8);
  }

  return result;
}

uint64_t sub_100391BE8(uint64_t a1)
{
  v1 = (*(a1 + 256) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | ((*(a1 + 240) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_100391C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 184) >> 38) & 0xC00000 | (*(a1 + 200) >> 36) & 0x3000000 | (*(a1 + 208) >> 8 << 26);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100391D28(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 248) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 264) = 1;
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
      v4 = -a2;
      *a1 = 0;
      *(a1 + 8) = (-a2 & 3) << 60;
      *(a1 + 16) = 0;
      *(a1 + 24) = (v4 << 58) & 0x3000000000000000;
      *(a1 + 32) = 0;
      *(a1 + 40) = (v4 << 56) & 0x3000000000000000;
      *(a1 + 48) = 0;
      *(a1 + 56) = (v4 << 54) & 0x3000000000000000;
      *(a1 + 64) = 0;
      *(a1 + 72) = (v4 << 52) & 0x3000000000000000;
      *(a1 + 80) = 0;
      *(a1 + 88) = (v4 << 50) & 0x3000000000000000;
      *(a1 + 96) = 0;
      *(a1 + 104) = (v4 << 48) & 0x3000000000000000;
      *(a1 + 112) = 0;
      *(a1 + 120) = (v4 << 46) & 0x3000000000000000;
      *(a1 + 128) = 0;
      *(a1 + 136) = (v4 << 44) & 0x3000000000000000;
      *(a1 + 144) = 0;
      *(a1 + 152) = (v4 << 42) & 0x3000000000000000;
      *(a1 + 160) = 0;
      *(a1 + 168) = (v4 << 40) & 0x3000000000000000;
      *(a1 + 176) = 0;
      *(a1 + 184) = (v4 << 38) & 0x3000000000000000;
      *(a1 + 192) = 0;
      *(a1 + 200) = (v4 << 36) & 0x3000000000000000;
      *(a1 + 208) = (v4 >> 18) & 0x3F00;
      result = 0.0;
      *(a1 + 248) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 216) = 0u;
      return result;
    }

    *(a1 + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_100391E58(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    v3 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v11 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v12 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
    v13 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
    v14 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
    v15 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v16 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(a1 + 24) = v3;
    *(a1 + 40) = v4;
    *(a1 + 56) = v5;
    *(a1 + 72) = v6;
    *(a1 + 88) = v7;
    *(a1 + 104) = v8;
    *(a1 + 120) = v9;
    *(a1 + 136) = v10;
    *(a1 + 152) = v11;
    *(a1 + 168) = v12;
    *(a1 + 184) = v13;
    result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
    *(a1 + 200) = result;
    *(a1 + 224) = v14;
    *(a1 + 240) = v15;
    *(a1 + 256) = v16;
  }

  else
  {
    *a1 = a2 - 6;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0x3000000000000000;
  }

  return result;
}

ValueMetadata *sub_100391F98(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        sub_100391A98();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsSWFinalizePairingCommandPayload;
      sub_100391AEC();
    }

    else
    {
      v1 = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
      sub_100101224();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      sub_100391B40();
    }

    else
    {
      v1 = &type metadata for AirPodsSWSendPairingDataCommandPayload;
      sub_1001019A0();
    }
  }

  else if (a1)
  {
    v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
    sub_100391B94();
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

uint64_t sub_100392070(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  memcpy(v31, v3, 0x108uLL);
  v11 = sub_100100ACC(v31);
  if (v11 > 3)
  {
    if (v11 > 5)
    {
      if (v11 == 7)
      {
        v12 = 516;
      }

      else
      {
        v12 = 267;
      }
    }

    else if (v11 == 4)
    {
      sub_1000479AC(v31);
      v12 = 259;
    }

    else
    {
      sub_1000479AC(v31);
      v12 = 260;
    }
  }

  else if (v11 > 1)
  {
    if (v11 == 2)
    {
      sub_1000479AC(v31);
      v12 = 257;
    }

    else
    {
      sub_1000479AC(v31);
      v12 = 258;
    }
  }

  else if (v11)
  {
    sub_1000479AC(v31);
    v12 = 256;
  }

  else
  {
    sub_1000479AC(v31);
    v12 = 268;
  }

  *v25 = v12;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v9, v5);
  *v25 = *v26;
  sub_10015049C(v28, v29);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    memcpy(v30, v3, sizeof(v30));
    v13 = sub_100100ACC(v30);
    if (v13 > 3)
    {
      if (v13 > 5)
      {
        if (v13 == 6)
        {
          sub_100391750(v26);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_42;
          }

          sub_10015049C(v28, v29);
          sub_10030FB84();
        }

        else
        {
          sub_100391750(v26);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (!swift_dynamicCast())
          {
            goto LABEL_42;
          }

          sub_10015049C(v28, v29);
          sub_10027FBB8();
        }

        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v28);
      }

      if (v13 != 4)
      {
        sub_1000479AC(v30);
        sub_100391750(v26);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v20 = *v25;
          v21 = *&v25[8];
          *v26 = *v25;
          *&v26[8] = *&v25[8];
          sub_10015049C(v28, v29);
          sub_1003928F8();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v18 = v20;
          v19 = v21;
          goto LABEL_36;
        }

LABEL_42:
        sub_1003928A4();
        swift_allocError();
        *v22 = 0;
        swift_willThrow();
        return sub_100007BAC(v28);
      }

      sub_1000479AC(v30);
      sub_100391750(v27);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      *v25 = *v26;
      *&v25[16] = *&v26[16];
      *&v25[32] = *&v26[32];
      *&v25[48] = *&v26[48];
      v24[0] = *v26;
      v24[1] = *&v26[16];
      v24[2] = *&v26[32];
      v24[3] = *&v26[48];
      sub_10015049C(v28, v29);
      sub_10039294C();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_1001016B0(v25);
    }

    else if (v13 > 1)
    {
      if (v13 != 2)
      {
        sub_1000479AC(v30);
        sub_100391750(v27);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          *&v25[64] = *&v26[64];
          *&v25[80] = *&v26[80];
          *&v25[96] = *&v26[96];
          *v25 = *v26;
          *&v25[16] = *&v26[16];
          *&v25[32] = *&v26[32];
          *&v25[48] = *&v26[48];
          v24[4] = *&v26[64];
          v24[5] = *&v26[80];
          v24[6] = *&v26[96];
          v24[0] = *v26;
          v24[1] = *&v26[16];
          v24[2] = *&v26[32];
          v24[3] = *&v26[48];
          sub_10015049C(v28, v29);
          sub_1003929A0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1003929F4(v25);
          return sub_100007BAC(v28);
        }

        goto LABEL_42;
      }

      sub_1000479AC(v30);
      sub_100391750(v27);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      memcpy(v25, v26, sizeof(v25));
      memcpy(v24, v26, 0x108uLL);
      sub_10015049C(v28, v29);
      sub_100392A48();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_100101A50(v25);
    }

    else
    {
      if (!v13)
      {
        sub_1000479AC(v30);
        sub_100391750(v26);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v14 = *v25;
          v15 = *&v25[8];
          v16 = *&v25[16];
          v17 = *&v25[24];
          *v26 = *v25;
          *&v26[8] = *&v25[8];
          *&v26[16] = *&v25[16];
          *&v26[24] = *&v25[24];
          sub_10015049C(v28, v29);
          sub_100392AF0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100016590(v14, v15);
          v18 = v16;
          v19 = v17;
LABEL_36:
          sub_100016590(v18, v19);
          return sub_100007BAC(v28);
        }

        goto LABEL_42;
      }

      sub_1000479AC(v30);
      sub_100391750(v27);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      *&v25[32] = *&v26[32];
      *&v25[48] = *&v26[48];
      *&v25[64] = *&v26[64];
      *v25 = *v26;
      *&v25[16] = *&v26[16];
      v24[2] = *&v26[32];
      v24[3] = *&v26[48];
      v24[4] = *&v26[64];
      v24[0] = *v26;
      v24[1] = *&v26[16];
      sub_10015049C(v28, v29);
      sub_100392A9C();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_1001DAB9C(v25);
    }
  }

  return sub_100007BAC(v28);
}

void *sub_100392840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100392FAC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x108uLL);
  }

  return result;
}

unint64_t sub_1003928A4()
{
  result = qword_10169EAD0;
  if (!qword_10169EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAD0);
  }

  return result;
}

unint64_t sub_1003928F8()
{
  result = qword_10169EAD8;
  if (!qword_10169EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAD8);
  }

  return result;
}

unint64_t sub_10039294C()
{
  result = qword_10169EAE0;
  if (!qword_10169EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAE0);
  }

  return result;
}

unint64_t sub_1003929A0()
{
  result = qword_10169EAE8;
  if (!qword_10169EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAE8);
  }

  return result;
}

unint64_t sub_100392A48()
{
  result = qword_10169EAF0;
  if (!qword_10169EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAF0);
  }

  return result;
}

unint64_t sub_100392A9C()
{
  result = qword_10169EAF8;
  if (!qword_10169EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EAF8);
  }

  return result;
}

unint64_t sub_100392AF0()
{
  result = qword_10169EB00;
  if (!qword_10169EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EB00);
  }

  return result;
}

ValueMetadata *sub_100392B44@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100391F98(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 != 6)
        {
          sub_10001F280(a2, __src);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100393334(__dst);
            return memcpy(a3, __dst, 0x108uLL);
          }

          goto LABEL_28;
        }

        sub_10001F280(a2, v11);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:
          sub_1003928A4();
          swift_allocError();
          *v9 = 0;
          swift_willThrow();
          return sub_100007BAC(a2);
        }

        sub_100007BAC(a2);
        *__src = v10[0];
        sub_100101878(__src);
      }

      else
      {
        if (a1 != 4)
        {
          sub_10001F280(a2, v12);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v10[0] = *v11;
            v10[1] = *&v11[16];
            v10[2] = *&v11[32];
            v10[3] = *&v11[48];
            sub_100007BAC(a2);
            *__src = *v11;
            *&__src[16] = *&v11[16];
            *&__src[32] = *&v11[32];
            *&__src[48] = *&v11[48];
            sub_100393388(__src);
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        sub_10001F280(a2, v12);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_28;
        }

        v10[4] = *&v11[64];
        v10[5] = *&v11[80];
        v10[6] = *&v11[96];
        v10[0] = *v11;
        v10[1] = *&v11[16];
        v10[2] = *&v11[32];
        v10[3] = *&v11[48];
        sub_100007BAC(a2);
        *&__src[64] = *&v11[64];
        *&__src[80] = *&v11[80];
        *&__src[96] = *&v11[96];
        *__src = *v11;
        *&__src[16] = *&v11[16];
        *&__src[32] = *&v11[32];
        *&__src[48] = *&v11[48];
        sub_1001021E8(__src);
      }
    }

    else
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, __src);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100100958(__dst);
            return memcpy(a3, __dst, 0x108uLL);
          }

          goto LABEL_28;
        }

        sub_10001F280(a2, v11);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          *__src = v10[0];
          *&__src[16] = v10[1];
          sub_100393528(__src);
          goto LABEL_21;
        }

        goto LABEL_28;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v12);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          memcpy(v10, __src, 0x108uLL);
          sub_100007BAC(a2);
          memcpy(v11, v10, sizeof(v11));
          sub_100393458(v11);
          v8 = v11;
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      sub_10001F280(a2, v12);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_28;
      }

      v10[2] = *&v11[32];
      v10[3] = *&v11[48];
      v10[4] = *&v11[64];
      v10[0] = *v11;
      v10[1] = *&v11[16];
      sub_100007BAC(a2);
      *&__src[32] = *&v11[32];
      *&__src[48] = *&v11[48];
      *&__src[64] = *&v11[64];
      *__src = *v11;
      *&__src[16] = *&v11[16];
      sub_100101C00(__src);
    }

LABEL_21:
    v8 = __src;
LABEL_22:
    memcpy(__dst, v8, sizeof(__dst));
    return memcpy(a3, __dst, 0x108uLL);
  }

  __break(1u);
  return result;
}

void *sub_100392FAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  v32 = a1;
  sub_1000035D0(a1, v9);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v35, v35[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v11 = v32;
  }

  else
  {
    v12 = v31;
    v37 = v33[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v8, v4);
    v13 = v34[0];
    v14 = sub_100391628(v34[0]);
    if (v14 != 8)
    {
      v23 = v14;
      v24 = sub_100391F98(v14);
      v26 = v25;
      v27 = v32;
      sub_10001F280(v32, v33);
      v34[3] = v24;
      v34[4] = v26;
      sub_1000280DC(v34);
      v28 = *(v26 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v34, v33);
      sub_100392B44(v23, v33, v36);
      sub_100007BAC(v34);
      sub_100007BAC(v35);
      sub_100007BAC(v27);
      return memcpy(v12, v36, 0x108uLL);
    }

    static os_log_type_t.error.getter();
    v11 = v32;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    LOWORD(v34[0]) = v13;
    v16 = FixedWidthInteger.data.getter();
    v18 = v17;
    v19 = Data.hexString.getter();
    v21 = v20;
    sub_100016590(v16, v18);
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    sub_1003928A4();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v35);
  return sub_100007BAC(v11);
}

double sub_100393334(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0x3000000000000000;
  return result;
}

int8x16_t sub_100393388(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

int8x16_t sub_100393458(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

int8x16_t sub_100393528(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

unint64_t sub_100393608()
{
  result = qword_10169EB08;
  if (!qword_10169EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EB08);
  }

  return result;
}

uint64_t sub_10039365C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169EB10);
  v1 = sub_1000076D4(v0, qword_10169EB10);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A560);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100393724(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10039385C, v2, 0);
}

uint64_t sub_10039385C()
{
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 80);
    *(v0 + 192) = *(v2 + 80);
    swift_beginAccess();
    v4 = 0;
    *(v0 + 160) = *(v2 + 72);
    while (1)
    {
      *(v0 + 168) = v4;
      v5 = *(v0 + 120);
      v6 = *(v0 + 80);
      sub_10039496C(*(v0 + 64) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 160) * v4, *(v0 + 144));
      v7 = *(v6 + 112);
      *(v0 + 196) = *(v5 + 20);
      if (!*(v7 + 16))
      {
        break;
      }

      v8 = *(v0 + 88);
      v9 = *(v7 + 40);
      v33 = v7;
      sub_100394A2C(&qword_1016967B0, &type metadata accessor for UUID);

      v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v11 = v33;
      v12 = -1 << *(v33 + 32);
      v13 = v10 & ~v12;
      if (((*(v33 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
LABEL_13:

        break;
      }

      v14 = ~v12;
      v15 = *(v0 + 96);
      v16 = *(v15 + 72);
      v17 = *(v15 + 16);
      while (1)
      {
        v18 = *(v0 + 112);
        v19 = *(v0 + 88);
        v20 = *(v0 + 96);
        v17(v18, *(v11 + 48) + v13 * v16, v19);
        sub_100394A2C(&qword_1016984A0, &type metadata accessor for UUID);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v20 + 8))(v18, v19);
        if (v21)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        v11 = v33;
        if (((*(v33 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v22 = *(v0 + 144);

      sub_1003949D0(v22);
      v4 = *(v0 + 168) + 1;
      if (v4 == *(v0 + 152))
      {
        goto LABEL_10;
      }
    }

    v29 = swift_task_alloc();
    *(v0 + 176) = v29;
    *v29 = v0;
    v29[1] = sub_100393B98;
    v30 = *(v0 + 144);
    v31 = *(v0 + 72);
    v32 = *(v0 + 80);

    return sub_10039459C(v30, v31);
  }

  else
  {
LABEL_10:
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100393B98()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100394058;
  }

  else
  {
    v6 = sub_100393CC4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100393CC4()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  (*(v5 + 16))(v3, v1 + *(v0 + 196), v4);
  swift_beginAccess();
  sub_100DE8BCC(v2, v3);
  (*(v5 + 8))(v2, v4);
  swift_endAccess();
  sub_1003949D0(v1);
  v7 = *(v0 + 168) + 1;
  if (v7 == *(v0 + 152))
  {
LABEL_2:
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    while (1)
    {
      *(v0 + 168) = v7;
      v14 = *(v0 + 120);
      v15 = *(v0 + 80);
      sub_10039496C(*(v0 + 64) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 160) * v7, *(v0 + 144));
      v16 = *(v15 + 112);
      *(v0 + 196) = *(v14 + 20);
      if (!*(v16 + 16))
      {
        break;
      }

      v17 = *(v0 + 88);
      v18 = *(v16 + 40);
      v36 = v16;
      sub_100394A2C(&qword_1016967B0, &type metadata accessor for UUID);

      v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = v36;
      v21 = -1 << *(v36 + 32);
      v22 = v19 & ~v21;
      if (((*(v36 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
LABEL_13:

        break;
      }

      v23 = ~v21;
      v24 = *(v0 + 96);
      v25 = *(v24 + 72);
      v26 = *(v24 + 16);
      while (1)
      {
        v27 = *(v0 + 112);
        v28 = *(v0 + 88);
        v29 = *(v0 + 96);
        v26(v27, *(v20 + 48) + v22 * v25, v28);
        sub_100394A2C(&qword_1016984A0, &type metadata accessor for UUID);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v29 + 8))(v27, v28);
        if (v30)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        v20 = v36;
        if (((*(v36 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v31 = *(v0 + 144);

      sub_1003949D0(v31);
      v7 = *(v0 + 168) + 1;
      if (v7 == *(v0 + 152))
      {
        goto LABEL_2;
      }
    }

    v32 = swift_task_alloc();
    *(v0 + 176) = v32;
    *v32 = v0;
    v32[1] = sub_100393B98;
    v33 = *(v0 + 144);
    v34 = *(v0 + 72);
    v35 = *(v0 + 80);

    return sub_10039459C(v33, v34);
  }
}

uint64_t sub_100394058()
{
  v56 = v0;
  if (qword_1016946B8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[18];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10169EB10);
  sub_10039496C(v3, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  v10 = v0[17];
  v9 = v0[18];
  v52 = v0;
  if (v7)
  {
    v53 = v0[18];
    v11 = v0[15];
    v12 = v0[11];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55 = v15;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v16 = *(v11 + 20);
    sub_100394A2C(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1003949D0(v10);
    v20 = sub_1000136BC(v17, v19, &v55);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error hiding beacon %{private,mask.hash}s: %{public}@", v13, 0x20u);
    sub_100288C6C(v14);

    sub_100007BAC(v15);

    v22 = v53;
  }

  else
  {

    sub_1003949D0(v10);
    v22 = v9;
  }

  sub_1003949D0(v22);
  v23 = v0[21] + 1;
  if (v23 == v0[19])
  {
LABEL_7:
    v25 = v0[17];
    v24 = v0[18];
    v27 = v0[13];
    v26 = v0[14];

    v28 = v0[1];

    return v28();
  }

  else
  {
    while (1)
    {
      v0[21] = v23;
      v30 = v0[15];
      v31 = v0[10];
      sub_10039496C(v0[8] + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + v0[20] * v23, v0[18]);
      v32 = *(v31 + 112);
      *(v0 + 49) = *(v30 + 20);
      if (!*(v32 + 16))
      {
        break;
      }

      v33 = v0[11];
      v34 = *(v32 + 40);
      v54 = v32;
      sub_100394A2C(&qword_1016967B0, &type metadata accessor for UUID);

      v0 = v52;
      v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = v54;
      v37 = -1 << *(v54 + 32);
      v38 = v35 & ~v37;
      if (((*(v54 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
LABEL_18:

        break;
      }

      v39 = ~v37;
      v40 = v52[12];
      v41 = *(v40 + 72);
      v42 = *(v40 + 16);
      while (1)
      {
        v43 = v0[14];
        v44 = v0[11];
        v45 = v0[12];
        v42(v43, *(v36 + 48) + v38 * v41, v44);
        sub_100394A2C(&qword_1016984A0, &type metadata accessor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v45 + 8))(v43, v44);
        if (v46)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        v0 = v52;
        v36 = v54;
        if (((*(v54 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v0 = v52;
      v47 = v52[18];

      sub_1003949D0(v47);
      v23 = v52[21] + 1;
      if (v23 == v52[19])
      {
        goto LABEL_7;
      }
    }

    v48 = swift_task_alloc();
    v0[22] = v48;
    *v48 = v0;
    v48[1] = sub_100393B98;
    v49 = v0[18];
    v50 = v0[9];
    v51 = v0[10];

    return sub_10039459C(v49, v50);
  }
}

uint64_t sub_10039459C(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100394630, v2, 0);
}

uint64_t sub_100394630()
{
  v24 = v0;
  if (qword_1016946B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10169EB10);
  sub_10039496C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100394A2C(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1003949D0(v7);
    v15 = sub_1000136BC(v12, v14, &v23);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Hiding .automatic_legacy because we have .automatic beacon for %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_1003949D0(v7);
  }

  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[8];
  v0[5] = v0[9];
  v0[6] = sub_100394A2C(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v19 = sub_1000280DC(v0 + 2);
  sub_10039496C(v17, v19);
  type metadata accessor for Transaction();
  v20 = swift_task_alloc();
  v20[2] = v0 + 2;
  v20[3] = v18;
  v20[4] = 0;
  v20[5] = 0;
  static Transaction.named<A>(_:with:)();

  sub_100007BAC(v0 + 2);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100394910()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10039496C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003949D0(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100394A2C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100394A74@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x2000000000000000;
  return result;
}

uint64_t sub_100394A9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2 & 0xCFFFFFFFFFFFFFFFLL;
  a5[2] = a3;
  a5[3] = a4 & 0xCFFFFFFFFFFFFFFFLL;
  a5[5] = 0;
  a5[7] = 0;
  a5[9] = 0;
  sub_100017D5C(a1, a2);

  return sub_100017D5C(a3, a4);
}

double sub_100394AF8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = 1.49166815e-154;
  *(a1 + 56) = xmmword_10139BF70;
  *(a1 + 72) = 0x2000000000000000;
  return result;
}

unint64_t sub_100394B84()
{
  result = qword_10169EBF8;
  if (!qword_10169EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169EBF8);
  }

  return result;
}

uint64_t sub_100394BDC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for URLComponents();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  v7 = __chkstk_darwin(v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v50 - v9;
  v10 = type metadata accessor for FMNAccountType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v50 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMNAuthenticationProvider();
  (*(v11 + 104))(v14, enum case for FMNAccountType.ownedDeviceLocations(_:), v10);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v11 + 8))(v14, v10);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000B3A8(v18, &unk_101696AC0, &qword_101390A60);
    v24 = v5;
    v25 = v52;
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v25 = v52;
    v24 = v5;
    if ((*(v52 + 48))(v4, 1, v5) != 1)
    {
      v46 = *(v25 + 32);
      v47 = v50;
      v46(v50, v4, v24);
      v48 = URLComponents.path.modify();
      v49._countAndFlagsBits = 0x696D6275732F3276;
      v49._object = 0xE900000000000074;
      String.append(_:)(v49);
      v48(v54, 0);
      (*(v20 + 8))(v23, v19);
      return (v46)(v53, v47, v24);
    }

    (*(v20 + 8))(v23, v19);
    sub_10000B3A8(v4, &qword_101699BA8, &unk_1013926B0);
  }

  v26 = v51;
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177BFF8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "No url found in account bag.", v30, 2u);
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  v31 = [objc_opt_self() standardUserDefaults];
  v32 = [objc_opt_self() sharedInstance];
  v33 = [v32 isInternalBuild];

  if (v33 && (v34 = String._bridgeToObjectiveC()(), v35 = [v31 stringForKey:v34], v34, v35))
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000136BC(v36, v38, v54);
      _os_log_impl(&_mh_execute_header, v39, v40, "Override url found in user defaults %s. ", v41, 0xCu);
      sub_100007BAC(v42);
    }

    v54[0] = 47;
    v54[1] = 0xE100000000000000;
    v43._countAndFlagsBits = v36;
    v43._object = v38;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0x6D6275732F32762FLL;
    v44._object = 0xEA00000000007469;
    String.append(_:)(v44);
  }

  else
  {
  }

  URLComponents.path.setter();
  URLComponents.host.setter();
  return (*(v25 + 32))(v53, v26, v24);
}

uint64_t sub_100395324@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FMNAccountType();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10039538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for URLComponents();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for OwnedDeviceSubmitEndpoint()
{
  result = qword_10169EC58;
  if (!qword_10169EC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100395474()
{
  result = type metadata accessor for FMNAccountType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URLComponents();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AirPodsLEPairingLockAckResponse()
{
  result = qword_10169ECE8;
  if (!qword_10169ECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10039556C()
{
  sub_1003955F8();
  if (v0 <= 0x3F)
  {
    sub_100395648();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003955F8()
{
  if (!qword_10169A330)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169A330);
    }
  }
}

void sub_100395648()
{
  if (!qword_1016B1C20)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B1C20);
    }
  }
}

uint64_t sub_1003956A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000BC4D4(&qword_10169ED28, &qword_10139F718);
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100395B98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v7;
  v27 = 0;
  sub_1000E307C();
  v18 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *v16 = v26;
  v27 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16[1] = v26;
  v27 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = a1;
  v16[2] = v26;
  type metadata accessor for UUID();
  LOBYTE(v26) = 3;
  sub_100395BEC();
  v20 = v22;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v25 + 8))(v12, v18);
  sub_10012C154(v20, v16 + *(v13 + 28));
  sub_100395C44(v16, v23);
  sub_100007BAC(v19);
  return sub_100395CA8(v16);
}

uint64_t sub_100395A70()
{
  v1 = 1684628325;
  v2 = 0x754E6C6169726573;
  if (*v0 != 2)
  {
    v2 = 0x6449616E6D66;
  }

  if (*v0)
  {
    v1 = 0x644970696863;
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

uint64_t sub_100395AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100395E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100395B08(uint64_t a1)
{
  v2 = sub_100395B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100395B44(uint64_t a1)
{
  v2 = sub_100395B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100395B98()
{
  result = qword_10169ED30;
  if (!qword_10169ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED30);
  }

  return result;
}

unint64_t sub_100395BEC()
{
  result = qword_101698300;
  if (!qword_101698300)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698300);
  }

  return result;
}

uint64_t sub_100395C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100395CA8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100395D18()
{
  result = qword_10169ED38;
  if (!qword_10169ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED38);
  }

  return result;
}

unint64_t sub_100395D70()
{
  result = qword_10169ED40;
  if (!qword_10169ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED40);
  }

  return result;
}

unint64_t sub_100395DC8()
{
  result = qword_10169ED48;
  if (!qword_10169ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED48);
  }

  return result;
}

uint64_t sub_100395E1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000)
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

uint64_t sub_100395F7C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for AccessoryUnpairData();
  v2[14] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for HashAlgorithm();
  v2[16] = v5;
  v6 = *(v5 - 8);
  v2[17] = v6;
  v7 = *(v6 + 64) + 15;
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003960C8, 0, 0);
}

void sub_1003960C8()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v36 = v0[14];
  v9 = v0[12];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  v0[9] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[10] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  v0[22] = v25;
  v30 = type metadata accessor for JSONEncoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v0[23] = JSONEncoder.init()();
  sub_100397170();
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[24] = 0;
  v0[25] = v33;
  v0[26] = v34;
  sub_100017D5C(v33, v34);
  v35 = swift_task_alloc();
  v0[27] = v35;
  *v35 = v0;
  v35[1] = sub_100396570;

  sub_100EA1F1C();
}

uint64_t sub_100396570(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v6 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_100396670, 0, 0);
}

uint64_t sub_100396670()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 192);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  *(v0 + 56) = v2;
  v16 = *(v0 + 128);
  *(v0 + 64) = v1;
  *(v0 + 40) = &type metadata for Data;
  *(v0 + 48) = &protocol witness table for Data;
  *(v0 + 16) = *(v0 + 200);
  v6 = sub_1000035D0((v0 + 16), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 16));
  v9 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 56);
  *(v0 + 248) = v9;
  (*(v4 + 104))(v5, enum case for HashAlgorithm.sha256(_:), v16);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 256) = v10;
  *(v0 + 264) = v11;
  (*(v4 + 8))(v5, v16);
  v13 = swift_task_alloc();
  *(v0 + 272) = v13;
  *v13 = v0;
  v13[1] = sub_100396824;
  v14 = *(v0 + 104);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100396824(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v7 = sub_100396D20;
  }

  else
  {
    v8 = v4[32];
    v9 = v4[33];
    v4[36] = a1;
    sub_100016590(v8, v9);
    v7 = sub_100396954;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100396954()
{
  v48 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v47);

  sub_100016590(v4, v3);
  v7 = v47;
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v8 = v7 + 8;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v7[8];
  v12 = (63 - v10) >> 6;
  v44 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
    v15 = v44;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v45 = *v22;

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    v7 = &type metadata for String;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 64) = v25;
    *(v24 + 72) = v45;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v44;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  v27 = v43[25];
  v26 = v43[26];
  v46 = v43[23];
  v29 = v43[14];
  v28 = v43[15];
  v31 = v43[12];
  v30 = v43[13];

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  sub_1003971C8(v31, v28);
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_100008C00();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  sub_100397278(v31);

  sub_100017D5C(v27, v26);

  sub_100016590(v27, v26);
  v37 = v43[25];
  v36 = v43[26];
  v38 = v43[21];
  v39 = v43[18];
  v40 = v43[15];

  v41 = v43[1];

  return v41(v44, v37, v36);
}

uint64_t sub_100396D20()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v2, v3);
  static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v43 = v0;
  v0[11] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v45 = sub_100008C00();
  *(v4 + 64) = v45;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_10039722C();
  v8 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v9 = v0[22];
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v10 = v9 + 64;
  v11 = -1;
  v12 = -1 << *(v9 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 64);
  v14 = (63 - v12) >> 6;
  v46 = v9;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
    v17 = v46;
LABEL_11:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = (v16 << 10) | (16 * v18);
    v20 = *(v17 + 56);
    v21 = (*(v17 + 48) + v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = (v20 + v19);
    v9 = *v24;
    v25 = v24[1];

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10138BBE0;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v45;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v45;
    *(v26 + 72) = v9;
    *(v26 + 80) = v25;
    os_log(_:dso:log:_:_:)();
  }

  v17 = v46;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  v28 = v43[25];
  v27 = v43[26];
  v44 = v43[23];
  v29 = v43[14];
  v30 = v43[15];
  v31 = v43[12];
  v32 = v43[13];

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  sub_1003971C8(v31, v30);
  v34 = String.init<A>(describing:)();
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v45;
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  sub_100397278(v31);

  sub_100017D5C(v28, v27);

  sub_100016590(v28, v27);
  v37 = v43[25];
  v36 = v43[26];
  v38 = v43[21];
  v39 = v43[18];
  v40 = v43[15];

  v41 = v43[1];

  return v41(v46, v37, v36);
}

unint64_t sub_100397170()
{
  result = qword_10169ED50;
  if (!qword_10169ED50)
  {
    type metadata accessor for AccessoryUnpairData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED50);
  }

  return result;
}

uint64_t sub_1003971C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryUnpairData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10039722C()
{
  result = qword_101698160;
  if (!qword_101698160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101698160);
  }

  return result;
}

uint64_t sub_100397278(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryUnpairData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1003972E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100397308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100397350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1003974BC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100397508()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100397554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100397618(v7, v9);
}

unint64_t sub_1003975C4()
{
  result = qword_10169ED58;
  if (!qword_10169ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ED58);
  }

  return result;
}

BOOL sub_100397618(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7)
  {
    if (!v8 || (*(a1 + 40) != *(a2 + 40) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a2 + 64);
  if (v9)
  {
    if (!v10 || (*(a1 + 56) != *(a2 + 56) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 80);
  if (v11)
  {
    return v12 && (*(a1 + 72) == *(a2 + 72) && v11 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v12;
}

uint64_t sub_100397750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1000210EC(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a2, v9 + *(v11 + 72) * v8, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t sub_1003978AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100397A14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100397A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PairingPeripheralProvider.getPeripheral(for:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EmptyPairingPeripheralProvider();
  *v9 = v4;
  v9[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v10, a4);
}

uint64_t sub_100397BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to PairingPeripheralProvider.pair<A>(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EmptyPairingPeripheralProvider();
  *v11 = v5;
  v11[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v12, a3, a5);
}

uint64_t sub_100397D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to PairingPeripheralProvider.unpair(_:)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for EmptyPairingPeripheralProvider();
  *v7 = v3;
  v7[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v8, a3);
}

uint64_t sub_100397EB4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5B2CC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100397FD4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5BE68(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100398180(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5C1F8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100398324(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5B734(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100398488(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v57 = a2;
  v9 = type metadata accessor for OwnedDeviceKeyRecord();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v55 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v56 = v49 - v18;
  __chkstk_darwin(v17);
  v19 = v49;
  v21 = v49 - v20;
  v22 = (a4 >> 1);
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v59 = a1;
  v5 = *v4;
  v25 = *(*v4 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = (v5[3] >> 1), v19 < v26))
  {
    if (v25 <= v26)
    {
      v29 = v25 + v24;
    }

    else
    {
      v29 = v25;
    }

    v5 = sub_100A5C8CC(isUniquelyReferenced_nonNull_native, v29, 1, v5);
    v19 = (v5[3] >> 1);
  }

  v30 = v5[2];
  v31 = v19 - v30;
  if (v22 == a3)
  {
    if (v24 <= 0)
    {
      v24 = 0;
      v19 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v31 < v24)
  {
    __break(1u);
    goto LABEL_29;
  }

  v32 = v5 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30;
  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_16:
    v19 = v22;
LABEL_17:
    if (v24 != v31)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v54 = v19;
    v24 = v5[2];
    v36 = v58;
    v49[0] = *(v58 + 56);
    v49[1] = v58 + 56;
    (v49[0])(v21, 1, 1, v9);
    v37 = v56;
    sub_1000D2A70(v21, v56, &qword_10169EF98, &unk_1013D66D0);
    v38 = v36;
    v26 = v37;
    v52 = *(v38 + 48);
    v53 = v38 + 48;
    if (v52(v37, 1, v9) == 1)
    {
LABEL_24:
      sub_10000B3A8(v21, &qword_10169EF98, &unk_1013D66D0);
      swift_unknownObjectRelease();
      result = sub_10000B3A8(v26, &qword_10169EF98, &unk_1013D66D0);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_10000B3A8(v26, &qword_10169EF98, &unk_1013D66D0);
      v40 = v5[3];
      v41 = v40 >> 1;
      if ((v40 >> 1) < v24 + 1)
      {
        v5 = sub_100A5C8CC(v40 > 1, v24 + 1, 1, v5);
        v41 = v5[3] >> 1;
      }

      v42 = *(v58 + 80);
      sub_1000D2A70(v21, v16, &qword_10169EF98, &unk_1013D66D0);
      if (v52(v16, 1, v9) == 1)
      {
LABEL_32:
        sub_10000B3A8(v16, &qword_10169EF98, &unk_1013D66D0);
        v39 = v24;
      }

      else
      {
        v50 = v5 + ((v42 + 32) & ~v42);
        if (v24 <= v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v24;
        }

        v51 = v43;
        v44 = v55;
        while (1)
        {
          sub_1003CBBBC(v16, v44, type metadata accessor for OwnedDeviceKeyRecord);
          if (v51 == v24)
          {
            break;
          }

          sub_10000B3A8(v21, &qword_10169EF98, &unk_1013D66D0);
          v46 = *(v58 + 72);
          result = sub_1003CBBBC(v44, &v50[v46 * v24], type metadata accessor for OwnedDeviceKeyRecord);
          if (v54 == v22)
          {
            v45 = 1;
            v54 = v22;
          }

          else
          {
            if (v54 < a3 || v54 >= v22)
            {
              goto LABEL_45;
            }

            v47 = v57 + v46 * v54;
            v48 = v54;
            sub_10002FDC4(v47, v21, type metadata accessor for OwnedDeviceKeyRecord);
            v45 = 0;
            v54 = v48 + 1;
          }

          (v49[0])(v21, v45, 1, v9);
          sub_1000D2A70(v21, v16, &qword_10169EF98, &unk_1013D66D0);
          ++v24;
          if (v52(v16, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10002FE88(v44, type metadata accessor for OwnedDeviceKeyRecord);
        v39 = v51;
        v24 = v51;
      }

      v5[2] = v39;
      v26 = v56;
      sub_1000D2A70(v21, v56, &qword_10169EF98, &unk_1013D66D0);
    }

    while (v52(v26, 1, v9) != 1);
    goto LABEL_24;
  }

  v34 = v5[2];
  v23 = __OFADD__(v34, v24);
  v35 = v34 + v24;
  if (!v23)
  {
    v5[2] = v35;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100398A38(int64_t a1)
{
  v3 = v1;
  v51 = type metadata accessor for OwnedDeviceKeyRecord();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v51);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v50 = v47 - v15;
  __chkstk_darwin(v14);
  v52 = v47 - v16;
  inited = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v18 = *v1;
  v19 = *(*v1 + 16);
  v20 = v19 + inited;
  if (__OFADD__(v19, inited))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = inited;
  v22 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v8;
  v54 = v13;
  if (!isUniquelyReferenced_nonNull_native || (v24 = *(v18 + 24) >> 1, v24 < v20))
  {
    if (v19 <= v20)
    {
      v25 = v20;
    }

    else
    {
      v25 = v19;
    }

    v18 = sub_100A5C8CC(isUniquelyReferenced_nonNull_native, v25, 1, v18);
    v24 = *(v18 + 24) >> 1;
  }

  v13 = ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v2 = *(v5 + 72);
  v26 = v24 - *(v18 + 16);
  v27 = dispatch thunk of _AnySequenceBox.__copyContents(initializing:)();
  v29 = v28;

  sub_1000BC4D4(&qword_10169EFA0, &qword_10139FD10);
  inited = swift_initStackObject();
  *(inited + 16) = v27;
  if (v29 < v21)
  {
    goto LABEL_16;
  }

  if (v29 >= 1)
  {
    v30 = *(v18 + 16);
    v31 = __OFADD__(v30, v29);
    v32 = v30 + v29;
    if (v31)
    {
      __break(1u);
      goto LABEL_23;
    }

    *(v18 + 16) = v32;
  }

  if (v29 == v26)
  {
LABEL_17:
    v47[1] = inited;
    a1 = *(v18 + 16);
    v34 = v52;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v35 = v34;
    v29 = v50;
    sub_1000D2A70(v35, v50, &qword_10169EF98, &unk_1013D66D0);
    v49 = *(v5 + 48);
    if (v49(v29, 1, v51) == 1)
    {
LABEL_18:
      sub_10000B3A8(v52, &qword_10169EF98, &unk_1013D66D0);

      result = sub_10000B3A8(v29, &qword_10169EF98, &unk_1013D66D0);
      goto LABEL_14;
    }

    do
    {
LABEL_23:
      sub_10000B3A8(v29, &qword_10169EF98, &unk_1013D66D0);
      v36 = *(v18 + 24);
      v37 = v36 >> 1;
      v38 = a1;
      if ((v36 >> 1) < a1 + 1)
      {
        v18 = sub_100A5C8CC(v36 > 1, a1 + 1, 1, v18);
        v37 = *(v18 + 24) >> 1;
      }

      v39 = v54;
      sub_1000D2A70(v52, v54, &qword_10169EF98, &unk_1013D66D0);
      if (v49(v39, 1, v51) == 1)
      {
        a1 = v38;
LABEL_32:
        sub_10000B3A8(v54, &qword_10169EF98, &unk_1013D66D0);
        v37 = a1;
      }

      else
      {
        a1 = v38;
        if (v38 > v37)
        {
          v37 = v38;
        }

        v40 = &v13[v18 + v2 * v38];
        v48 = v37;
        while (1)
        {
          sub_1003CBBBC(v54, v53, type metadata accessor for OwnedDeviceKeyRecord);
          if (v37 == a1)
          {
            break;
          }

          v41 = a1;
          v42 = v52;
          sub_10000B3A8(v52, &qword_10169EF98, &unk_1013D66D0);
          sub_1003CBBBC(v53, v40, type metadata accessor for OwnedDeviceKeyRecord);
          v43 = v41 + 1;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v44 = v42;
          v37 = v48;
          v45 = v54;
          sub_1000D2A70(v44, v54, &qword_10169EF98, &unk_1013D66D0);
          v46 = v45;
          a1 = v43;
          v40 += v2;
          if (v49(v46, 1, v51) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10002FE88(v53, type metadata accessor for OwnedDeviceKeyRecord);
        a1 = v37;
      }

      *(v18 + 16) = v37;
      v29 = v50;
      sub_1000D2A70(v52, v50, &qword_10169EF98, &unk_1013D66D0);
    }

    while (v49(v29, 1, v51) != 1);
    goto LABEL_18;
  }

LABEL_14:
  *v3 = v18;
  return result;
}

uint64_t sub_100398F60(uint64_t a1)
{
  v79 = type metadata accessor for UUID();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v61 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_1003AB114(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_1000128F8();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_1000D2A70(v16, v77, &qword_1016980D0, &unk_10138F3B0);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_10000B3A8(v39, &qword_1016980D0, &unk_10138F3B0);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_100A5BFE0(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_1000D2A70(v16, v78, &qword_1016980D0, &unk_10138F3B0);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_10000B3A8(v45, &qword_1016980D0, &unk_10138F3B0);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_1000D2A70(v16, v77, &qword_1016980D0, &unk_10138F3B0);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_1000D2A70(v16, v78, &qword_1016980D0, &unk_10138F3B0);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    sub_1000128F8();
    result = sub_10000B3A8(v39, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003996FC(uint64_t a1)
{
  v79 = type metadata accessor for UUID();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v61 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_1003A9D58(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_1000128F8();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_1000D2A70(v16, v77, &qword_1016980D0, &unk_10138F3B0);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_10000B3A8(v39, &qword_1016980D0, &unk_10138F3B0);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_100A5BFE0(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_1000D2A70(v16, v78, &qword_1016980D0, &unk_10138F3B0);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_10000B3A8(v45, &qword_1016980D0, &unk_10138F3B0);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_1000D2A70(v16, v77, &qword_1016980D0, &unk_10138F3B0);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_1000D2A70(v16, v78, &qword_1016980D0, &unk_10138F3B0);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    sub_1000128F8();
    result = sub_10000B3A8(v39, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_100399E48(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5D350(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100399F4C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5D670(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10039A158(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5CBA0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10039A2A8(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v4[3] >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100A5DE40(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = v4[3] >> 1;
  }

  v12 = v4[2];
  v13 = v10 - v12;
  result = sub_1000364B4(&v39, &v4[v12 + 4], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = v4[2];
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v42 = v24;
          v43 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v37 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    v4[2] = v19;
  }

  result = v39;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = v4[2];
  v14 = v40;
  v15 = v41;
  v2 = v42;
  v38 = v40;
  if (!v43)
  {
    goto LABEL_19;
  }

  v20 = (v43 - 1) & v43;
  v21 = __clz(__rbit64(v43)) | (v42 << 6);
  v37 = v41;
  v22 = (v41 + 64) >> 6;
LABEL_27:
  v27 = result;
  v28 = *(*(result + 56) + 8 * v21);

  v29 = v38;
LABEL_29:
  while (1)
  {
    v30 = v4[3];
    v31 = v30 >> 1;
    if ((v30 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v13;
  }

  v35 = sub_100A5DE40((v30 > 1), v13 + 1, 1, v4);
  v29 = v38;
  v4 = v35;
  v31 = v35[3] >> 1;
  if (v13 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v4[v13++ + 4] = v28;
    if (!v20)
    {
      break;
    }

    result = v27;
LABEL_38:
    v34 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = *(*(result + 56) + ((v2 << 9) | (8 * v34)));

    v29 = v38;
    if (v13 == v31)
    {
      v13 = v31;
      v4[2] = v31;
      goto LABEL_29;
    }
  }

  v32 = v2;
  result = v27;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v33 >= v22)
    {
      break;
    }

    v20 = *(v29 + 8 * v33);
    ++v32;
    if (v20)
    {
      v2 = v33;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v36 = v2 + 1;
  }

  else
  {
    v36 = v22;
  }

  v41 = v37;
  v42 = v36 - 1;
  v43 = 0;
  v4[2] = v13;
LABEL_13:
  result = sub_1000128F8();
  *v1 = v4;
  return result;
}

uint64_t sub_10039A5A8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1000BC4D4(a3, a4);
  v14 = *(result - 8);
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = *(v14 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v17 = *(v6 + 16);
  v18 = __OFADD__(v17, v5);
  v19 = v17 + v5;
  if (!v18)
  {
    *(v6 + 16) = v19;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10039A6F8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5DF68(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10039A7F0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5E090(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_10169F020, &qword_10139FE08);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10039A94C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v72 = a2;
  v8 = type metadata accessor for Bit();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v70 = &v56 - v19;
  __chkstk_darwin(v18);
  v20 = &v56;
  v22 = &v56 - v21;
  v23 = (a4 >> 1);
  v24 = __OFSUB__(a4 >> 1, a3);
  v25 = (a4 >> 1) - a3;
  if (v24)
  {
    __break(1u);
    goto LABEL_21;
  }

  v71 = v12;
  v73 = v9;
  v74 = a1;
  v12 = *v4;
  v26 = *(*v4 + 16);
  v27 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = (v12[3] >> 1), v20 < v27))
  {
    if (v26 <= v27)
    {
      v30 = v26 + v25;
    }

    else
    {
      v30 = v26;
    }

    v12 = sub_100A5E6F8(isUniquelyReferenced_nonNull_native, v30, 1, v12);
    v20 = (v12[3] >> 1);
  }

  v31 = v12[2];
  v32 = &v20[-v31];
  if (v23 == a3)
  {
    if (v25 <= 0)
    {
      v25 = 0;
      v20 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v32 < v25)
  {
    __break(1u);
    goto LABEL_27;
  }

  v33 = v12 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v31;
  result = swift_arrayInitWithCopy();
  if (v25 <= 0)
  {
LABEL_16:
    v20 = v23;
LABEL_17:
    if (v25 != v32)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v12;
      return result;
    }

LABEL_23:
    v69 = v20;
    v25 = v12[2];
    v27 = v73;
    v58 = *(v73 + 56);
    v59 = v73 + 56;
    v58(v22, 1, 1, v8);
    v37 = v70;
    sub_1000D2A70(v22, v70, &qword_10169F068, &unk_1013A00E0);
    v66 = *(v27 + 48);
    v67 = v27 + 48;
    if (v66(v37, 1, v8) == 1)
    {
      v38 = v70;
LABEL_25:
      sub_10000B3A8(v22, &qword_10169F068, &unk_1013A00E0);
      swift_unknownObjectRelease();
      result = sub_10000B3A8(v38, &qword_10169F068, &unk_1013A00E0);
      goto LABEL_19;
    }

LABEL_27:
    v62 = (v27 + 32);
    v56 = (v27 + 8);
    v57 = (v27 + 16);
    v39 = v25;
    v38 = v70;
    v64 = v22;
    v65 = v17;
    do
    {
      sub_10000B3A8(v38, &qword_10169F068, &unk_1013A00E0);
      v41 = v12[3];
      v42 = v41 >> 1;
      v43 = v39;
      if ((v41 >> 1) < v39 + 1)
      {
        v12 = sub_100A5E6F8(v41 > 1, v39 + 1, 1, v12);
        v42 = v12[3] >> 1;
      }

      v44 = *(v73 + 80);
      sub_1000D2A70(v22, v17, &qword_10169F068, &unk_1013A00E0);
      if (v66(v17, 1, v8) == 1)
      {
        v39 = v43;
        v45 = v65;
LABEL_34:
        sub_10000B3A8(v45, &qword_10169F068, &unk_1013A00E0);
        v40 = v39;
        v38 = v70;
        v17 = v45;
      }

      else
      {
        v61 = v12 + ((v44 + 32) & ~v44);
        v46 = *v62;
        v39 = v43;
        if (v43 <= v42)
        {
          v47 = v42;
        }

        else
        {
          v47 = v43;
        }

        v63 = v47;
        v45 = v65;
        v60 = v46;
        while (1)
        {
          v51 = v71;
          v46(v71, v45, v8);
          if (v63 == v39)
          {
            break;
          }

          v52 = v64;
          sub_10000B3A8(v64, &qword_10169F068, &unk_1013A00E0);
          v53 = v39;
          v54 = *(v73 + 72);
          v68 = v53;
          result = (v46)(&v61[v54 * v53], v51, v8);
          if (v69 == v23)
          {
            v48 = 1;
            v69 = v23;
            v49 = v65;
          }

          else
          {
            v49 = v65;
            if (v69 < a3 || v69 >= v23)
            {
              goto LABEL_47;
            }

            v55 = v69;
            (*v57)(v52, v72 + v54 * v69, v8);
            v48 = 0;
            v69 = v55 + 1;
          }

          v58(v52, v48, 1, v8);
          sub_1000D2A70(v52, v49, &qword_10169F068, &unk_1013A00E0);
          v50 = v66(v49, 1, v8);
          v39 = v68 + 1;
          v45 = v49;
          v46 = v60;
          if (v50 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v56)(v51, v8);
        v40 = v63;
        v39 = v63;
        v38 = v70;
        v17 = v65;
      }

      v22 = v64;
      v12[2] = v40;
      sub_1000D2A70(v22, v38, &qword_10169F068, &unk_1013A00E0);
    }

    while (v66(v38, 1, v8) != 1);
    goto LABEL_25;
  }

  v35 = v12[2];
  v24 = __OFADD__(v35, v25);
  v36 = v35 + v25;
  if (!v24)
  {
    v12[2] = v36;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_10039AF9C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v57 = a2;
  v9 = type metadata accessor for OwnedBeaconRecord();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v55 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v56 = v49 - v18;
  __chkstk_darwin(v17);
  v19 = v49;
  v21 = v49 - v20;
  v22 = (a4 >> 1);
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v59 = a1;
  v5 = *v4;
  v25 = *(*v4 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = (v5[3] >> 1), v19 < v26))
  {
    if (v25 <= v26)
    {
      v29 = v25 + v24;
    }

    else
    {
      v29 = v25;
    }

    v5 = sub_100A5C050(isUniquelyReferenced_nonNull_native, v29, 1, v5);
    v19 = (v5[3] >> 1);
  }

  v30 = v5[2];
  v31 = v19 - v30;
  if (v22 == a3)
  {
    if (v24 <= 0)
    {
      v24 = 0;
      v19 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v31 < v24)
  {
    __break(1u);
    goto LABEL_29;
  }

  v32 = v5 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30;
  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_16:
    v19 = v22;
LABEL_17:
    if (v24 != v31)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v54 = v19;
    v24 = v5[2];
    v36 = v58;
    v49[0] = *(v58 + 56);
    v49[1] = v58 + 56;
    (v49[0])(v21, 1, 1, v9);
    v37 = v56;
    sub_1000D2A70(v21, v56, &unk_1016A9A20, &qword_10138B280);
    v38 = v36;
    v26 = v37;
    v52 = *(v38 + 48);
    v53 = v38 + 48;
    if (v52(v37, 1, v9) == 1)
    {
LABEL_24:
      sub_10000B3A8(v21, &unk_1016A9A20, &qword_10138B280);
      swift_unknownObjectRelease();
      result = sub_10000B3A8(v26, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_10000B3A8(v26, &unk_1016A9A20, &qword_10138B280);
      v40 = v5[3];
      v41 = v40 >> 1;
      if ((v40 >> 1) < v24 + 1)
      {
        v5 = sub_100A5C050(v40 > 1, v24 + 1, 1, v5);
        v41 = v5[3] >> 1;
      }

      v42 = *(v58 + 80);
      sub_1000D2A70(v21, v16, &unk_1016A9A20, &qword_10138B280);
      if (v52(v16, 1, v9) == 1)
      {
LABEL_32:
        sub_10000B3A8(v16, &unk_1016A9A20, &qword_10138B280);
        v39 = v24;
      }

      else
      {
        v50 = v5 + ((v42 + 32) & ~v42);
        if (v24 <= v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v24;
        }

        v51 = v43;
        v44 = v55;
        while (1)
        {
          sub_1003CBBBC(v16, v44, type metadata accessor for OwnedBeaconRecord);
          if (v51 == v24)
          {
            break;
          }

          sub_10000B3A8(v21, &unk_1016A9A20, &qword_10138B280);
          v46 = *(v58 + 72);
          result = sub_1003CBBBC(v44, &v50[v46 * v24], type metadata accessor for OwnedBeaconRecord);
          if (v54 == v22)
          {
            v45 = 1;
            v54 = v22;
          }

          else
          {
            if (v54 < a3 || v54 >= v22)
            {
              goto LABEL_45;
            }

            v47 = v57 + v46 * v54;
            v48 = v54;
            sub_10002FDC4(v47, v21, type metadata accessor for OwnedBeaconRecord);
            v45 = 0;
            v54 = v48 + 1;
          }

          (v49[0])(v21, v45, 1, v9);
          sub_1000D2A70(v21, v16, &unk_1016A9A20, &qword_10138B280);
          ++v24;
          if (v52(v16, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10002FE88(v44, type metadata accessor for OwnedBeaconRecord);
        v39 = v51;
        v24 = v51;
      }

      v5[2] = v39;
      v26 = v56;
      sub_1000D2A70(v21, v56, &unk_1016A9A20, &qword_10138B280);
    }

    while (v52(v26, 1, v9) != 1);
    goto LABEL_24;
  }

  v34 = v5[2];
  v23 = __OFADD__(v34, v24);
  v35 = v34 + v24;
  if (!v23)
  {
    v5[2] = v35;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10039B5D0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10039B714(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5F0A0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10039B818(uint64_t result)
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

  result = sub_100A5D2EC(result, v12, 1, v3);
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

void *sub_10039B904(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_101123F20(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = v2[2];
      v8 = v2[3];

      if (v7 >= v8 >> 1)
      {
        sub_101123F20((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = sub_100008C00();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v7 + 1;
      sub_10000A748(&v10, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10039BA14(uint64_t a1)
{
  v2 = type metadata accessor for OwnerPeerTrust();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_101124434(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for OwnerPeerTrust);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_101124434((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_100019420(&qword_10169EEF8, type metadata accessor for OwnerPeerTrust);
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for OwnerPeerTrust);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for OwnerPeerTrust);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039BC18(uint64_t a1)
{
  v2 = type metadata accessor for MemberPeerTrust();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_101124434(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for MemberPeerTrust);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_101124434((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_100019420(&qword_10169EEF0, type metadata accessor for MemberPeerTrust);
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for MemberPeerTrust);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for MemberPeerTrust);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039BE1C(uint64_t a1)
{
  v2 = type metadata accessor for SharingCircleSecret();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_101124434(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for SharingCircleSecret);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_101124434((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_100019420(&qword_10169EEE8, type metadata accessor for SharingCircleSecret);
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for SharingCircleSecret);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for SharingCircleSecret);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039C020(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_101124434(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for SharedBeaconRecord);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_101124434((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_100019420(&unk_1016CAC90, type metadata accessor for SharedBeaconRecord);
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for SharedBeaconRecord);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for SharedBeaconRecord);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039C224(uint64_t a1)
{
  v2 = type metadata accessor for BeaconNamingRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_101124434(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for BeaconNamingRecord);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_101124434((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_100019420(&qword_10169EEE0, type metadata accessor for BeaconNamingRecord);
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for BeaconNamingRecord);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for BeaconNamingRecord);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039C43C(uint64_t a1)
{
  v2 = type metadata accessor for SPCachedAdvertisement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1011246DC(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for SPCachedAdvertisement);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1011246DC((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_10161A368;
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for SPCachedAdvertisement);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for SPCachedAdvertisement);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039C60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1011248C0(0, v1, 0);
    v3 = (a1 + 32);
    type metadata accessor for SPPairingSessionError(0);
    sub_100019420(&qword_101695F60, type metadata accessor for SPPairingSessionError);
    do
    {
      v4 = *v3;
      v5 = swift_allocError();
      *v6 = v4;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      v9 = v4;
      if (v7 >= v8 >> 1)
      {
        sub_1011248C0((v8 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      _swiftEmptyArrayStorage[v7 + 4] = v5;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10039C740(uint64_t a1)
{
  v2 = type metadata accessor for BeaconEstimatedLocation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1011249E4(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for BeaconEstimatedLocation);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1011249E4((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_10161A418;
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for BeaconEstimatedLocation);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for BeaconEstimatedLocation);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039C910(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1011242E8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_1011242E8((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_1001E6224(&v9, &v2[4 * v7 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10039CA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_101124D64(0, v1, 0);
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v11 = *(v3 - 32);
      v12 = *(v3 - 3);
      v13 = *(v3 - 2);

      sub_10002E98C(v4, v5);
      sub_1000BC4D4(&qword_10169EFD8, &qword_10139FD88);
      sub_1000BC4D4(&qword_10169EFE0, &qword_10139FD90);
      swift_dynamicCast();
      v6 = v17;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_101124D64((v7 > 1), v8 + 1, 1);
        v6 = v17;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[5 * v8];
      *(v9 + 32) = v14;
      v3 += 5;
      v9[5] = v15;
      v9[6] = v16;
      *(v9 + 7) = v6;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10039CB64(uint64_t a1)
{
  v18 = sub_1000BC4D4(&qword_10169EF20, &qword_10139FC08);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v18);
  v5 = &v18 - v4;
  v6 = sub_1000BC4D4(&qword_10169EF28, &unk_10139FC10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_101124DE4(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1000D2A70(v13, v5, &qword_10169EF20, &qword_10139FC08);
      swift_dynamicCast();
      v19 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_101124DE4(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      v12[2] = v16 + 1;
      sub_1000D2AD8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_10169EF28, &unk_10139FC10);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void *sub_10039CD9C(uint64_t a1)
{
  v2 = type metadata accessor for RawSearchResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1011249E4(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v9, v6, type metadata accessor for RawSearchResult);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1011249E4((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_10161A440;
      v13 = sub_1000280DC(&v15);
      sub_10002FDC4(v6, v13, type metadata accessor for RawSearchResult);
      v8[2] = v12 + 1;
      sub_10000A748(&v15, &v8[5 * v12 + 4]);
      sub_10002FE88(v6, type metadata accessor for RawSearchResult);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_10039CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1011244F8(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v8 = (a1 + 32);
    do
    {
      v10 = *v8++;
      v9 = v10;
      v17 = v4;
      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        sub_1011244F8((v11 > 1), v12 + 1, 1);
        v4 = v17;
      }

      v15 = a2;
      v16 = a3;
      LOBYTE(v14) = v9;
      v4[2] = v12 + 1;
      sub_10000A748(&v14, &v4[5 * v12 + 4]);
      --v3;
    }

    while (v3);
  }

  return v4;
}

void *sub_10039D068(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_101125290(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v14 = *v4;
      v15 = v5;
      v16 = v4[2];
      v17 = *(v4 + 6);
      sub_1003CA224(&v14, &v11);
      v18 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_101125290((v6 > 1), v7 + 1, 1);
        v2 = v18;
      }

      v12 = &type metadata for OwnSubmitPayload;
      v13 = sub_1000D271C();
      v8 = swift_allocObject();
      *&v11 = v8;
      v9 = v15;
      *(v8 + 16) = v14;
      *(v8 + 32) = v9;
      *(v8 + 48) = v16;
      *(v8 + 64) = v17;
      v2[2] = v7 + 1;
      sub_10000A748(&v11, &v2[5 * v7 + 4]);
      v4 = (v4 + 56);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10039D1A4(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_1011256C4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_1011256C4((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_100019420(&qword_10169EF58, &type metadata accessor for Device);
      v15 = sub_1000280DC(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      v22[2] = v14 + 1;
      sub_10000A748(&v19, &v8[5 * v14 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

char *sub_10039D3B0(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1011242E8(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100008BB8(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_1011242E8((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_1001E6224(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_100008BB8(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_1011242E8((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_1001E6224(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_10039D59C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1011257A8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1011257A8((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100008BB8(0, &qword_10169F050, RTLocationOfInterest_ptr);
        v16 = &off_101658B68;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000A748(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1011257A8((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100008BB8(0, &qword_10169F050, RTLocationOfInterest_ptr);
        v16 = &off_101658B68;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000A748(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10039D77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_1011242E8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1011242E8((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_1001E6224(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10039D87C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 24 * (v11 | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);

      sub_100DEA8E0(&v16, v13, v14, v15);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039D990(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100DEB5CC(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039DA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v26 - v11;
  result = __chkstk_darwin(v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_100DE8BCC(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039DC8C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 24 * (v11 | (v10 << 6)));
      v13 = *(v12 + 1);
      v14 = *(v12 + 2);
      v15 = *v12;

      sub_100DEB438(&v16, v15, v13, v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10039DDA0(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_100DEF808(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10039DE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = 0;
  v27 = a1;
  v28 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_1000D2A70(*(v27 + 48) + *(v26 + 72) * (v24 | (v23 << 6)), v14, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2AD8(v14, v8, &qword_1016980D0, &unk_10138F3B0);
      sub_100DF0448(v11, v8);
      result = sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v28;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10039E0E8(unint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, a3, a4);
    sub_100009CC8(a5, a3, a4);
    Set.Iterator.init(_cocoa:)();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_1000128F8();
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10039E2E4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10039E400, 0, 0);
}

uint64_t sub_10039E400()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10039E4A4;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_10039E4A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {
    sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_10039E75C, 0, 0);
  }

  else
  {
    sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);
    v7 = swift_task_alloc();
    v4[18] = v7;
    *v7 = v6;
    v7[1] = sub_10039E648;
    v8 = v4[7];
    v9 = v4[8];

    return sub_1005AEC0C(v8, v9);
  }
}

uint64_t sub_10039E648()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10039EAF4;
  }

  else
  {
    v3 = sub_10039E7CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10039E75C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039E7CC()
{
  v38 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177A560);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v18 = v0[10];
  if (v12)
  {
    v36 = v0[16];
    v35 = v11;
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v20 = 136315651;
    log = v10;
    v21 = URL.absoluteString.getter();
    v23 = v22;
    (*(v14 + 8))(v15, v17);
    v24 = sub_1000136BC(v21, v23, &v37);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v18 + 8))(v16, v19);
    v28 = sub_1000136BC(v25, v27, &v37);

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, log, v35, "URL is: %s for beacon ID %{private,mask.hash}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v29 = v0[16];

    (*(v18 + 8))(v16, v19);
    (*(v14 + 8))(v15, v17);
  }

  v30 = v0[14];
  v31 = v0[11];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10039EAF4()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "checkDelegatedShare error: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[19];
  v10 = v0[16];

  swift_willThrow();

  v11 = v0[19];
  v12 = v0[14];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10039ECAC(uint64_t a1)
{
  *(v1 + 424) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 432) = v3;
  *v3 = v1;
  v3[1] = sub_10039ED40;

  return daemon.getter();
}

uint64_t sub_10039ED40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v12 = *v1;
  v3[55] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[56] = v6;
  v7 = type metadata accessor for Daemon();
  v3[57] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[58] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10039EF20;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10039EF20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v8 = *v2;
  v3[59] = a1;
  v3[60] = v1;

  if (v1)
  {
    v5 = sub_10039F41C;
  }

  else
  {
    v6 = v3[55];

    v5 = sub_10039F03C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10039F03C()
{
  v1 = v0[59];
  v0[61] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[62] = v2;

  swift_defaultActor_initialize();
  v0[63] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[64] = v5;
  *v5 = v0;
  v5[1] = sub_10039F130;

  return daemon.getter();
}

uint64_t sub_10039F130(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v5 = *v1;
  v3[65] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[66] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[67] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  v3[68] = v9;
  *v7 = v5;
  v7[1] = sub_10039F2EC;
  v10 = v3[58];
  v11 = v3[57];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10039F2EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  *(*v2 + 552) = v1;

  if (v1)
  {
    v7 = sub_10039F814;
  }

  else
  {
    v8 = *(v4 + 520);

    *(v4 + 560) = a1;
    v7 = sub_10039F480;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10039F41C()
{
  v1 = v0[55];

  v2 = v0[60];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10039F480()
{
  v1 = v0[70];
  v0[11] = v0[67];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_10039F528;

  return daemon.getter();
}

uint64_t sub_10039F528(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 568);
  v5 = *v1;
  v3[72] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[73] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[74] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  v3[75] = v9;
  *v7 = v5;
  v7[1] = sub_10039F6E4;
  v10 = v3[58];
  v11 = v3[57];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10039F6E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v7 = sub_10039FF60;
  }

  else
  {
    v8 = *(v4 + 576);

    *(v4 + 616) = a1;
    v7 = sub_10039F890;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10039F814()
{
  v1 = v0[65];
  v2 = v0[62];
  v3 = v0[59];

  v4 = v0[69];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10039F890()
{
  v1 = *(v0 + 592);
  v28 = *(v0 + 616);
  v2 = *(v0 + 536);
  v3 = *(v0 + 504);
  v31 = *(v0 + 488);
  v32 = *(v0 + 496);
  v29 = *(v0 + 472);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v30 = swift_task_alloc();
  v7 = *(v5 + 16);
  v7();
  v8 = *v30;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v8;
  *(v0 + 144) = v28;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v31;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v32;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 624) = v9;
  v10 = sub_10015049C(v0 + 104, v2);
  v27 = swift_task_alloc();
  (v7)(v27, v10, v2);
  v11 = *(v0 + 168);
  v12 = sub_10015049C(v0 + 144, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  v16 = *(v0 + 208);
  v17 = sub_10015049C(v0 + 184, v16);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v16);
  v21 = *v27;
  v22 = *v15;
  v23 = *v20;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 224) = v21;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v22;
  *(v0 + 328) = v31;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v23;

  swift_defaultActor_initialize();
  *(v9 + 112) = v29;
  sub_10000A748((v0 + 224), v9 + 120);
  sub_10000A748((v0 + 264), v9 + 160);
  sub_1000BB3F0((v0 + 16), (v9 + 200));
  sub_10000A748((v0 + 304), v9 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  *(v0 + 632) = v25;
  *v25 = v0;
  v25[1] = sub_10039FCA4;

  return daemon.getter();
}