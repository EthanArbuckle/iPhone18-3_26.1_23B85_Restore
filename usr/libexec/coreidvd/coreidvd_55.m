void sub_1005C3B08(uint64_t a1)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v53 = &v49 - v4;
  v5 = type metadata accessor for URLRequest();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = URLRequest.httpBody.getter();
  if (v16 >> 60 == 15)
  {
LABEL_6:
    v54 = 0;
    v21 = 0xE000000000000000;
    if (URLRequest.allHTTPHeaderFields.getter())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = v15;
  v18 = v16;
  static String.Encoding.utf8.getter();
  v19 = String.init(data:encoding:)();
  if (!v20)
  {
    sub_10000BD94(v17, v18);
    goto LABEL_6;
  }

  v21 = v20;
  v54 = v19;
  sub_10000BD94(v17, v18);
  if (URLRequest.allHTTPHeaderFields.getter())
  {
    goto LABEL_8;
  }

LABEL_7:
  sub_10003D21C(_swiftEmptyArrayStorage);
LABEL_8:
  v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (qword_100832D00 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10003170C(v23, qword_1008490C0);
  v24 = v6[2];
  v24(v12, a1, v5);
  v24(v10, a1, v5);
  v25 = v22.super.isa;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v50 = v27;
    v51 = v25;
    v28 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = v49;
    *v28 = 136315906;
    v29 = URLRequest.httpMethod.getter();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    v32 = v10;
    if (v30)
    {
      v33 = v30;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = v6[1];
    v34(v12, v5);
    v35 = sub_100141FE4(v31, v33, &v58);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    v36 = v53;
    v52 = v32;
    URLRequest.url.getter();
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      sub_10000BE18(v36, &unk_100844540, &unk_1006BFBC0);
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    else
    {
      v42 = URL.absoluteString.getter();
      v43 = v36;
      v39 = v42;
      v40 = v44;
      (*(v38 + 8))(v43, v37);
    }

    v34(v52, v5);
    v45 = sub_100141FE4(v39, v40, &v58);

    *(v28 + 14) = v45;
    *(v28 + 22) = 2080;
    v56 = 0;
    v57 = 0xE000000000000000;
    v46 = v51;
    v55 = v51;
    _print_unlocked<A, B>(_:_:)();
    v47 = sub_100141FE4(v56, v57, &v58);

    *(v28 + 24) = v47;
    *(v28 + 32) = 2080;
    v48 = sub_100141FE4(v54, v21, &v58);

    *(v28 + 34) = v48;
    _os_log_impl(&_mh_execute_header, v26, v50, "Performing request:\n%s %s\n%s\n%s\n", v28, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v41 = v6[1];
    v41(v10, v5);
    v41(v12, v5);
  }
}

void sub_1005C4094(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  if (a3 >> 60 != 15)
  {
    sub_10000B8B8(a2, a3);
    static String.Encoding.utf8.getter();
    v15 = String.init(data:encoding:)();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      sub_10000BD94(a2, a3);
      goto LABEL_6;
    }

    sub_10000BD94(a2, a3);
  }

  v17 = 0;
  v18 = 0xE000000000000000;
LABEL_6:
  v19 = [a1 allHeaderFields];
  if (v19)
  {
    v20 = v19;
    if (qword_100832D00 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10003170C(v21, qword_1008490C0);
    v22 = a1;
    v23 = v20;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v42 = v25;
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v26 = 136315906;
      v27 = [v22 URL];
      v43 = v17;
      if (v27)
      {
        v28 = v27;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = type metadata accessor for URL();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v10, v29, 1, v30);
      sub_1000B1FC8(v10, v12, &unk_100844540, &unk_1006BFBC0);
      if ((*(v31 + 48))(v12, 1, v30) == 1)
      {
        sub_10000BE18(v12, &unk_100844540, &unk_1006BFBC0);
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v34 = URL.absoluteString.getter();
        v33 = v35;
        (*(v31 + 8))(v12, v30);
        v32 = v34;
      }

      v36 = sub_100141FE4(v32, v33, &v47);

      *(v26 + 4) = v36;
      *(v26 + 12) = 2048;
      v37 = [v22 statusCode];

      *(v26 + 14) = v37;
      *(v26 + 22) = 2080;
      v45 = 0;
      v46 = 0xE000000000000000;
      v44 = v23;
      _print_unlocked<A, B>(_:_:)();
      v38 = sub_100141FE4(v45, v46, &v47);

      *(v26 + 24) = v38;
      *(v26 + 32) = 2080;
      v39 = sub_100141FE4(v43, v18, &v47);

      *(v26 + 34) = v39;
      _os_log_impl(&_mh_execute_header, v24, v42, "Response:\n%s %ld\n%s\n%s\n", v26, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005C4570(void *a1, uint64_t a2)
{
  v65 = a1;
  v64 = type metadata accessor for DIPError.Code();
  v66 = *(v64 - 8);
  v3 = *(v66 + 64);
  v4 = __chkstk_darwin(v64);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v61 - v6;
  v8 = type metadata accessor for Logger();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceHTTPStatus.getter();
  v14 = NSUserDefaults.internalString(forKey:)(v13);

  if (!v14.value._object)
  {
    goto LABEL_65;
  }

  v15 = (v14.value._object >> 56) & 0xF;
  v16 = v14.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v14.value._object & 0x2000000000000000) != 0)
  {
    v17 = (v14.value._object >> 56) & 0xF;
  }

  else
  {
    v17 = v14.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

LABEL_65:
    v20 = [v65 statusCode];
    goto LABEL_66;
  }

  if ((v14.value._object & 0x1000000000000000) != 0)
  {
    v20 = sub_1000FFDD8(v14.value._countAndFlagsBits, v14.value._object, 10);
    v57 = v56;

    if (v57)
    {
      goto LABEL_65;
    }

    goto LABEL_89;
  }

  if ((v14.value._object & 0x2000000000000000) != 0)
  {
    v67[0] = v14.value._countAndFlagsBits;
    v67[1] = v14.value._object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(v14.value._countAndFlagsBits) == 43)
    {
      if (v15)
      {
        if (--v15)
        {
          v20 = 0;
          v30 = v67 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_96:
      __break(1u);
      JUMPOUT(0x1005C4E7CLL);
    }

    if (LOBYTE(v14.value._countAndFlagsBits) != 45)
    {
      if (v15)
      {
        v20 = 0;
        v35 = v67;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v20 = 0;
        v24 = v67 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_94;
  }

  if ((v14.value._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    v18 = ((v14.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v18 = _StringObject.sharedUTF8.getter();
  }

  v19 = *v18;
  if (v19 == 43)
  {
    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v20 = 0;
        if (v18)
        {
          v27 = v18 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_63;
            }

            v29 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_63;
            }

            v20 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_63;
            }

            ++v27;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if (v19 == 45)
  {
    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v20 = 0;
        if (v18)
        {
          v21 = v18 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              goto LABEL_63;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_63;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              goto LABEL_63;
            }

            ++v21;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v16)
  {
    v20 = 0;
    if (v18)
    {
      while (1)
      {
        v33 = *v18 - 48;
        if (v33 > 9)
        {
          goto LABEL_63;
        }

        v34 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          goto LABEL_63;
        }

        v20 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          goto LABEL_63;
        }

        ++v18;
        if (!--v16)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v20 = 0;
  LOBYTE(v15) = 1;
LABEL_64:
  v68 = v15;
  v38 = v15;

  if (v38)
  {
    goto LABEL_65;
  }

LABEL_89:
  defaultLogger()();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134349056;
    *(v60 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v58, v59, "Forcing HTTP status code to %{public}ld due to user setting", v60, 0xCu);
  }

  (*(v61 + 8))(v11, v62);
LABEL_66:
  v67[0] = a2;

  sub_10031D34C(&off_1007FC2A0);
  v39 = sub_100697A28(v67[0]);

  v40 = sub_100693DEC(v20, v39);

  if (!v40)
  {
    v42 = *(v66 + 104);
    v65 = v20;
    switch(v20)
    {
      case 400:
        v43 = &enum case for DIPError.Code.httpBadRequest(_:);
        break;
      case 401:
        v43 = &enum case for DIPError.Code.httpUnauthorized(_:);
        break;
      case 402:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 430:
      case 431:
      case 432:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
        goto LABEL_72;
      case 403:
        v43 = &enum case for DIPError.Code.httpForbidden(_:);
        break;
      case 404:
        v43 = &enum case for DIPError.Code.httpNotFound(_:);
        break;
      case 428:
        v43 = &enum case for DIPError.Code.httpPreconditionRequired(_:);
        break;
      case 429:
        v43 = &enum case for DIPError.Code.httpTooManyRequests(_:);
        break;
      case 433:
        v43 = &enum case for DIPError.Code.httpAuthKitReprovision(_:);
        break;
      case 434:
        v43 = &enum case for DIPError.Code.httpAuthKitResync(_:);
        break;
      case 500:
        v43 = &enum case for DIPError.Code.httpInternalServerError(_:);
        break;
      case 501:
        v43 = &enum case for DIPError.Code.httpNotImplemented(_:);
        break;
      case 502:
        v43 = &enum case for DIPError.Code.httpBadGateway(_:);
        break;
      case 503:
        v43 = &enum case for DIPError.Code.httpServiceUnavailable(_:);
        break;
      case 504:
        v43 = &enum case for DIPError.Code.httpGatewayTimeout(_:);
        break;
      default:
        if (v20 == 301)
        {
          v43 = &enum case for DIPError.Code.httpMovedPermanently(_:);
        }

        else if (v20 == 304)
        {
          v43 = &enum case for DIPError.Code.httpNotModified(_:);
        }

        else
        {
LABEL_72:
          v43 = &enum case for DIPError.Code.httpUnknownStatus(_:);
        }

        break;
    }

    v44 = v7;
    v45 = v7;
    v46 = v64;
    v42(v45, *v43, v64);
    v62 = "ut no data cached";
    v47 = v66;
    (*(v66 + 16))(v63, v44, v46);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v48 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v49 = *(*v48 + 72);
    v50 = (*(*v48 + 80) + 32) & ~*(*v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1006BF520;
    v52 = v51 + v50;
    v53 = (v52 + v48[14]);
    v54 = enum case for DIPError.PropertyKey.serverStatusCode(_:);
    v55 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v55 - 8) + 104))(v52, v54, v55);
    v53[3] = &type metadata for Int;
    v53[4] = &protocol witness table for Int;
    *v53 = v65;
    sub_10003C9C0(v51);
    swift_setDeallocating();
    sub_10000BE18(v52, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v47 + 8))(v44, v46);
  }

  return result;
}

uint64_t sub_1005C5020(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005C5068()
{
  result = qword_100849410;
  if (!qword_100849410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100849410);
  }

  return result;
}

uint64_t sub_1005C50B4(__SecTrust *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableSSLPinning.getter();
  v9 = NSUserDefaults.internalBool(forKey:)(v8);

  if (v9)
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Skipping SSL/TLS verification due to user defaults setting", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 1;
  }

  else
  {
    error = 0;
    v14 = SecTrustEvaluateWithError(a1, &error);
    if (error)
    {
      v15 = error;
      v16 = CFErrorCopyDescription(v15);
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (qword_100832D00 != -1)
      {
        swift_once();
      }

      sub_10003170C(v2, qword_1008490C0);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28 = v24;
        *v23 = 136315138;
        if (v20)
        {
          v25 = v18;
        }

        else
        {
          v25 = 7104878;
        }

        if (!v20)
        {
          v20 = 0xE300000000000000;
        }

        v26 = sub_100141FE4(v25, v20, &v28);

        *(v23 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "Invalid server certificate, error: %s", v23, 0xCu);
        sub_10000BB78(v24);
      }

      else
      {
      }
    }

    return v14;
  }
}

void sub_1005C5404(void *a1)
{
  v2 = sub_100007224(&qword_100849428, &qword_1006E9430);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  if (qword_100832D00 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10003170C(v13, qword_1008490C0);
  v14 = a1;
  v33 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315138;
    v18 = [v14 currentRequest];
    if (v18)
    {
      v19 = v18;
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = type metadata accessor for URLRequest();
      (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
    }

    else
    {
      v20 = type metadata accessor for URLRequest();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    }

    sub_1000B1FC8(v6, v8, &qword_100849428, &qword_1006E9430);
    type metadata accessor for URLRequest();
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v8, 1, v20) == 1)
    {
      v23 = &qword_100849428;
      v24 = &qword_1006E9430;
      v25 = v8;
    }

    else
    {
      URLRequest.url.getter();
      (*(v22 + 8))(v8, v20);
      v26 = type metadata accessor for URL();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v12, 1, v26) != 1)
      {
        v30 = URL.absoluteString.getter();
        v29 = v31;
        (*(v27 + 8))(v12, v26);
        v28 = v30;
        goto LABEL_16;
      }

      v23 = &unk_100844540;
      v24 = &unk_1006BFBC0;
      v25 = v12;
    }

    sub_10000BE18(v25, v23, v24);
    v28 = 0;
    v29 = 0xE000000000000000;
LABEL_16:
    v32 = sub_100141FE4(v28, v29, &v34);

    *(v16 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v33, v15, "Task for URL %s is waiting for connectivity", v16, 0xCu);
    sub_10000BB78(v17);

    return;
  }

  v21 = v33;
}

void sub_1005C5844(uint64_t a1)
{
  if (!a1)
  {
    if (qword_100832D00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003170C(v6, qword_1008490C0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "URL session did become invalid", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100832D00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003170C(v1, qword_1008490C0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "URL session became invalid with error %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);

LABEL_10:

    return;
  }
}

void sub_1005C5A8C(void *a1, uint64_t a2)
{
  v13 = [a1 protectionSpace];
  v3 = [v13 authenticationMethod];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v7 == v6)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      (*(a2 + 16))(a2, 1, 0);
      goto LABEL_13;
    }
  }

  v10 = [v13 serverTrust];
  if (v10)
  {
    v11 = v10;
    if (sub_1005C50B4(v10))
    {
      v12 = [objc_allocWithZone(NSURLCredential) initWithTrust:v11];
      (*(a2 + 16))(a2, 0, v12);

      v13 = v12;
      goto LABEL_13;
    }
  }

  (*(a2 + 16))(a2, 2, 0);
LABEL_13:
}

uint64_t sub_1005C5C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100849428, &qword_1006E9430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1005C5C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = &v3[OBJC_IVAR____TtC8coreidvd15DIPSPWebService_IDENTITY_SHARE_ENDPOINT];
  *v14 = 0xD000000000000012;
  *(v14 + 1) = 0x8000000100724080;
  sub_1002BEB48(a3, &v22 - v12);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v15 = &v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *v15 = a1;
  *(v15 + 1) = a2;
  sub_100020260(v24, v23);
  sub_1002BEB48(v13, v11);
  v16 = type metadata accessor for DIPHTTPSession(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v23, v11);
  v19 = type metadata accessor for DIPWebService();
  v22.receiver = v3;
  v22.super_class = v19;
  v20 = objc_msgSendSuper2(&v22, "init");
  sub_1005CABD4(a3, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v24);
  sub_1005CABD4(v13, type metadata accessor for DIPHTTPSession.Configuration);
  return v20;
}

uint64_t sub_1005C5E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[27] = v9;
  v10 = *(v9 - 8);
  v7[28] = v10;
  v11 = *(v10 + 64) + 15;
  v7[29] = swift_task_alloc();
  v12 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v13 = type metadata accessor for DIPSignpost();
  v7[31] = v13;
  v14 = *(v13 - 8);
  v7[32] = v14;
  v15 = *(v14 + 64) + 15;
  v7[33] = swift_task_alloc();

  return _swift_task_switch(sub_1005C5FC8, 0, 0);
}

uint64_t sub_1005C5FC8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[21];
  v4 = v0[22];
  static DaemonSignposts.inputValidationRequest.getter();
  DIPSignpost.init(_:)();
  v5 = v3[3];
  v6 = sub_10000BA08(v3, v5);
  v0[13] = v5;
  v7 = sub_100032DBC(v0 + 10);
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_1005C60F0;
  v9 = v0[24];
  v10 = v0[19];
  v11 = v0[20];

  return sub_1005C9474((v0 + 10), v10, v11, v4, &off_1007FC2D0);
}

uint64_t sub_1005C60F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = (*v4)[34];
  v9 = *v4;
  v5[35] = a1;
  v5[36] = a2;
  v5[37] = a3;
  v5[38] = v3;

  if (v3)
  {
    v7 = sub_1005C69AC;
  }

  else
  {
    sub_10000BB78(v5 + 10);
    v7 = sub_1005C6210;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005C6210()
{
  v1 = *(v0 + 296);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || [v2 statusCode] != 403)
  {
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);
    v27 = *(v0 + 280);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v30 = *(v0 + 248);
    v31 = *(v0 + 184);
    v32._countAndFlagsBits = 0x3032373065323933;
    v33._countAndFlagsBits = 0xD000000000000021;
    v33._object = 0x8000000100724300;
    v32._object = 0xE800000000000000;
    logMilestone(tag:description:)(v32, v33);
    v34.value._countAndFlagsBits = sub_1000CB118();
    DIPSignpost.end(workflowID:isBackground:)(v34, 2);
    sub_10000B90C(v27, v25);

    (*(v29 + 8))(v28, v30);
    v35 = xmmword_1006D1BF0;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
LABEL_8:
    v39 = *(v0 + 264);
    v40 = *(v0 + 232);
    v41 = *(v0 + 240);
    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v44 = *(v0 + 144);
    *v44 = v36;
    v44[1] = v35;
    v44[2] = v37;
    v44[3] = v38;

    v45 = *(v0 + 8);
    goto LABEL_9;
  }

  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005CAC98();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v9 = v3;
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 280);
  if (!v9)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    sub_10000B90C(v12, v11);
    v36 = *(v0 + 16);
    v35 = *(v0 + 32);
    v37 = *(v0 + 48);
    v38 = *(v0 + 64);
    goto LABEL_8;
  }

  v67 = *(v0 + 288);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 216);

  (*(v14 + 104))(v13, enum case for DIPError.Code.serverResponseInconsistent(_:), v15);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v12, v67);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 208);
  swift_getErrorValue();
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 128);
  Error.dipErrorCode.getter();
  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
LABEL_14:
    swift_willThrow();
    goto LABEL_15;
  }

  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 200);
  sub_100044D38(*(v0 + 208), v24);
  if ((*(v22 + 88))(v24, v23) != enum case for DIPError.Code.httpTooManyRequests(_:))
  {
    (*(*(v0 + 224) + 8))(*(v0 + 200), *(v0 + 216));
    goto LABEL_14;
  }

  (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), *(v0 + 216));
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_15:
  v63 = *(v0 + 256);
  v64 = *(v0 + 248);
  v66 = *(v0 + 240);
  v60 = *(v0 + 224);
  v61 = *(v0 + 232);
  v62 = *(v0 + 216);
  v65 = *(v0 + 264);
  v68 = *(v0 + 200);
  v59 = *(v0 + 192);
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v47 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v48 = *(*(v47 - 8) + 72);
  v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1006BF740;
  v51 = v50 + v49;
  v52 = (v50 + v49 + *(v47 + 48));
  v53 = enum case for DIPError.PropertyKey.serverURL(_:);
  v54 = type metadata accessor for DIPError.PropertyKey();
  v55 = *(*(v54 - 8) + 104);
  v55(v51, v53, v54);
  v52[3] = &type metadata for String;
  v52[4] = &protocol witness table for String;
  *v52 = 0xD000000000000013;
  v52[1] = 0x80000001007242C0;
  v56 = (v51 + v48 + *(v47 + 48));
  v55(v51 + v48, enum case for DIPError.PropertyKey.conversationID(_:), v54);
  v57 = *(v59 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v58 = *(v59 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v56[3] = &type metadata for String;
  v56[4] = &protocol witness table for String;
  *v56 = v57;
  v56[1] = v58;
  swift_errorRetain();
  swift_errorRetain();

  sub_10003C9C0(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v60 + 104))(v61, enum case for DIPError.Code.internalError(_:), v62);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v63 + 8))(v65, v64);

  v45 = *(v0 + 8);
LABEL_9:

  return v45();
}

uint64_t sub_1005C69AC()
{
  sub_10000BB78(v0 + 10);
  v1 = v0[38];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  swift_getErrorValue();
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[16];
  Error.dipErrorCode.getter();
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[25];
    sub_100044D38(v0[26], v10);
    if ((*(v8 + 88))(v10, v9) == enum case for DIPError.Code.httpTooManyRequests(_:))
    {
      (*(v0[28] + 104))(v0[29], enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), v0[27]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      goto LABEL_6;
    }

    (*(v0[28] + 8))(v0[25], v0[27]);
  }

  swift_willThrow();
LABEL_6:
  v29 = v0[32];
  v30 = v0[31];
  v31 = v0[33];
  v26 = v0[28];
  v27 = v0[29];
  v28 = v0[27];
  v32 = v0[30];
  v33 = v0[25];
  v25 = v0[24];
  sub_10000BE18(v0[26], &qword_10083B020, &unk_1006D8ED0);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v11 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF740;
  v15 = v14 + v13;
  v16 = (v14 + v13 + *(v11 + 48));
  v17 = enum case for DIPError.PropertyKey.serverURL(_:);
  v18 = type metadata accessor for DIPError.PropertyKey();
  v19 = *(*(v18 - 8) + 104);
  v19(v15, v17, v18);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = 0xD000000000000013;
  v16[1] = 0x80000001007242C0;
  v20 = (v15 + v12 + *(v11 + 48));
  v19(v15 + v12, enum case for DIPError.PropertyKey.conversationID(_:), v18);
  v21 = *(v25 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v22 = *(v25 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = v21;
  v20[1] = v22;
  swift_errorRetain();
  swift_errorRetain();

  sub_10003C9C0(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v26 + 104))(v27, enum case for DIPError.Code.internalError(_:), v28);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v29 + 8))(v31, v30);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1005C6EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[57] = a6;
  v7[58] = v6;
  v7[55] = a4;
  v7[56] = a5;
  v7[53] = a2;
  v7[54] = a3;
  v7[52] = a1;
  v8 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[61] = v9;
  v10 = *(v9 - 8);
  v7[62] = v10;
  v11 = *(v10 + 64) + 15;
  v7[63] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v7[64] = v12;
  v13 = *(v12 - 8);
  v7[65] = v13;
  v14 = *(v13 + 64) + 15;
  v7[66] = swift_task_alloc();
  v15 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v7[67] = swift_task_alloc();
  v16 = type metadata accessor for DIPSignpost();
  v7[68] = v16;
  v17 = *(v16 - 8);
  v7[69] = v17;
  v18 = *(v17 + 64) + 15;
  v7[70] = swift_task_alloc();

  return _swift_task_switch(sub_1005C70E8, 0, 0);
}

uint64_t sub_1005C70E8()
{
  v1 = v0[70];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];
  v7 = v0[55];
  v6 = v0[56];
  static DaemonSignposts.spNonceRequest.getter();
  DIPSignpost.init(_:)();
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v0[71] = v8;
  v0[72] = v9;
  (*(v4 + 8))(v3, v5);
  v0[47] = &type metadata for NonceRequest;
  v11 = swift_allocObject();
  v0[44] = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0xE000000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = v7;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = 0u;

  v12 = swift_task_alloc();
  v0[73] = v12;
  *v12 = v0;
  v12[1] = sub_1005C7260;
  v13 = v0[58];
  v14 = v0[53];
  v15 = v0[54];

  return sub_1005C9474((v0 + 44), v14, v15, v6, _swiftEmptyArrayStorage);
}

uint64_t sub_1005C7260(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[73];
  v11 = *v4;
  v6[74] = a1;
  v6[75] = a2;
  v6[76] = v3;

  if (v3)
  {
    v8 = v6[72];

    v9 = sub_1005C7B48;
  }

  else
  {
    sub_10000BB78(v6 + 44);

    v9 = sub_1005C739C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005C739C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A780C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v7 = *(v0 + 576);
  if (v1)
  {
    v8 = *(v0 + 496);
    v9 = *(v0 + 576);

    v10 = enum case for DIPError.Code.internalError(_:);
    v11 = *(v8 + 104);
LABEL_5:
    v25 = *(v0 + 600);
    v26 = *(v0 + 592);
    v11(*(v0 + 504), v10, *(v0 + 488));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v26, v25);
    v63 = *(v0 + 552);
    v64 = *(v0 + 544);
    v65 = *(v0 + 560);
    v66 = *(v0 + 536);
    v67 = *(v0 + 528);
    v60 = *(v0 + 496);
    v61 = *(v0 + 504);
    v62 = *(v0 + 488);
    v71 = *(v0 + 480);
    v69 = *(v0 + 472);
    v59 = *(v0 + 464);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v27 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v28 = *(*(v27 - 8) + 72);
    v29 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1006BF740;
    v31 = v30 + v29;
    v32 = (v30 + v29 + *(v27 + 48));
    v33 = enum case for DIPError.PropertyKey.conversationID(_:);
    v34 = type metadata accessor for DIPError.PropertyKey();
    v35 = *(*(v34 - 8) + 104);
    v35(v31, v33, v34);
    v36 = *(v59 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v37 = *(v59 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v32[3] = &type metadata for String;
    v32[4] = &protocol witness table for String;
    *v32 = v36;
    v32[1] = v37;
    v38 = v31 + v28;
    v39 = (v31 + v28 + *(v27 + 48));
    v35(v38, enum case for DIPError.PropertyKey.serverURL(_:), v34);
    v39[3] = &type metadata for String;
    v39[4] = &protocol witness table for String;
    *v39 = 0x69726168732D7073;
    v39[1] = 0xEA0000000000676ELL;
    swift_errorRetain();
    swift_errorRetain();

    sub_10003C9C0(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v60 + 104))(v61, enum case for DIPError.Code.internalError(_:), v62);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v63 + 8))(v65, v64);

    v40 = *(v0 + 8);
    goto LABEL_6;
  }

  v12 = *(v0 + 568);
  v13 = *(v0 + 464);

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  *(v0 + 200) = v14;
  *(v0 + 216) = v15;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = *(v0 + 128);
  v16 = *(v0 + 16);
  v17 = *(v0 + 32);
  *(v0 + 136) = v16;
  *(v0 + 152) = v17;
  v18 = *(v0 + 48);
  v19 = *(v0 + 64);
  *(v0 + 168) = v18;
  *(v0 + 184) = v19;
  *(v0 + 256) = v16;
  *(v0 + 272) = v17;
  *(v0 + 288) = v18;
  *(v0 + 304) = v19;
  *(v0 + 320) = v14;
  *(v0 + 336) = v15;
  v20 = sub_10060A770(0, 0xE000000000000000, v12, v7, (v0 + 256), 0);

  if (v20)
  {
    v22 = *(v0 + 496);
    v21 = *(v0 + 504);
    v23 = *(v0 + 488);
    sub_1000AD0A8(v0 + 136);
    v24 = enum case for DIPError.Code.internalError(_:);
    v11 = *(v22 + 104);
    v11(v21, enum case for DIPError.Code.internalError(_:), v23);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = v24;
    goto LABEL_5;
  }

  v42 = *(v0 + 600);
  v43 = *(v0 + 592);
  v44 = *(v0 + 560);
  v45 = *(v0 + 552);
  v46 = *(v0 + 544);
  v47 = *(v0 + 536);
  v68 = *(v0 + 528);
  v70 = *(v0 + 504);
  v72 = *(v0 + 480);
  v73 = *(v0 + 472);
  v48 = *(v0 + 456);
  v49._countAndFlagsBits = 0xD000000000000019;
  v50 = *(v0 + 416);
  v51._countAndFlagsBits = 0x3361656436313837;
  v49._object = 0x8000000100724280;
  v51._object = 0xE800000000000000;
  logMilestone(tag:description:)(v51, v49);
  v52.value._countAndFlagsBits = sub_1000CB118();
  DIPSignpost.end(workflowID:isBackground:)(v52, 2);

  sub_10000B90C(v43, v42);
  (*(v45 + 8))(v44, v46);
  v53 = *(v0 + 136);
  v54 = *(v0 + 152);
  v55 = *(v0 + 184);
  *(v50 + 32) = *(v0 + 168);
  *(v50 + 48) = v55;
  *v50 = v53;
  *(v50 + 16) = v54;
  v56 = *(v0 + 200);
  v57 = *(v0 + 216);
  v58 = *(v0 + 232);
  *(v50 + 112) = *(v0 + 248);
  *(v50 + 80) = v57;
  *(v50 + 96) = v58;
  *(v50 + 64) = v56;

  v40 = *(v0 + 8);
LABEL_6:

  return v40();
}

uint64_t sub_1005C7B48()
{
  v1 = v0[76];
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[60];
  sub_10000BB78(v0 + 44);
  swift_getErrorValue();
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[50];
  Error.dipErrorCode.getter();
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v8 = v0[61];
    v9 = v0[62];
    v10 = v0[59];
    sub_100044D38(v0[60], v10);
    if ((*(v9 + 88))(v10, v8) == enum case for DIPError.Code.httpTooManyRequests(_:))
    {
      v11 = v0[76];
      v12 = v0[60];
      (*(v0[62] + 104))(v0[63], enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), v0[61]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BE18(v12, &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_6;
    }

    (*(v0[62] + 8))(v0[59], v0[61]);
  }

  v13 = v0[76];
  v14 = v0[60];
  swift_willThrow();
  sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
  v40 = v0[76];
LABEL_6:
  v34 = v0[68];
  v35 = v0[70];
  v36 = v0[67];
  v37 = v0[66];
  v30 = v0[62];
  v31 = v0[63];
  v32 = v0[61];
  v33 = v0[69];
  v38 = v0[59];
  v39 = v0[60];
  v29 = v0[58];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v15 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006BF740;
  v19 = v18 + v17;
  v20 = (v18 + v17 + *(v15 + 48));
  v21 = enum case for DIPError.PropertyKey.conversationID(_:);
  v22 = type metadata accessor for DIPError.PropertyKey();
  v23 = *(*(v22 - 8) + 104);
  v23(v19, v21, v22);
  v24 = *(v29 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v25 = *(v29 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = v24;
  v20[1] = v25;
  v26 = (v19 + v16 + *(v15 + 48));
  v23(v19 + v16, enum case for DIPError.PropertyKey.serverURL(_:), v22);
  v26[3] = &type metadata for String;
  v26[4] = &protocol witness table for String;
  *v26 = 0x69726168732D7073;
  v26[1] = 0xEA0000000000676ELL;
  swift_errorRetain();
  swift_errorRetain();

  sub_10003C9C0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v30 + 104))(v31, enum case for DIPError.Code.internalError(_:), v32);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v33 + 8))(v35, v34);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1005C80E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[80] = v6;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  v7[76] = a3;
  v7[75] = a2;
  v7[74] = a1;
  v8 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[83] = v9;
  v10 = *(v9 - 8);
  v7[84] = v10;
  v11 = *(v10 + 64) + 15;
  v7[85] = swift_task_alloc();
  v12 = *(*(type metadata accessor for IdentitySharingRequest(0) - 8) + 64) + 15;
  v7[86] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v7[87] = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  v7[88] = v14;
  v15 = *(v14 - 8);
  v7[89] = v15;
  v16 = *(v15 + 64) + 15;
  v7[90] = swift_task_alloc();

  return _swift_task_switch(sub_1005C82B0, 0, 0);
}

uint64_t sub_1005C82B0()
{
  v1 = v0[90];
  v2 = v0[87];
  v3 = v0[78];
  v4 = v0[75];
  static DaemonSignposts.identitySharingRequest.getter();
  DIPSignpost.init(_:)();
  v5 = sub_100007224(&qword_1008494C0, &qword_1006E9470);
  v0[91] = v5;
  v0[69] = v5;
  v6 = sub_100032DBC(v0 + 66);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  v7 = swift_task_alloc();
  v0[92] = v7;
  *v7 = v0;
  v7[1] = sub_1005C83E8;
  v8 = v0[80];
  v9 = v0[77];
  v10 = v0[76];

  return sub_1005C9474((v0 + 66), v10, v9, v3, _swiftEmptyArrayStorage);
}

uint64_t sub_1005C83E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[92];
  v8 = *v4;
  v6[93] = a1;
  v6[94] = a2;
  v6[95] = v3;

  if (v3)
  {
    v9 = sub_1005C8E20;
  }

  else
  {
    sub_10000BB78(v6 + 66);

    v9 = sub_1005C8520;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005C8520()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 592);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v8 = sub_100007224(&qword_1008494D0, &unk_1006E9DE0);
  sub_1000BA30C(&qword_1008494D8, &qword_1008494D0, &unk_1006E9DE0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v9 = *(v0 + 672);

    v10 = enum case for DIPError.Code.internalError(_:);
    v11 = *(v9 + 104);
LABEL_5:
    v35 = *(v0 + 752);
    v36 = *(v0 + 744);
    (v11)(*(v0 + 680), v10, *(v0 + 664));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v36, v35);
    v67 = *(v0 + 728);
    v71 = *(v0 + 712);
    v72 = *(v0 + 704);
    v73 = *(v0 + 720);
    v74 = *(v0 + 696);
    v79 = *(v0 + 688);
    v68 = *(v0 + 672);
    v69 = *(v0 + 680);
    v70 = *(v0 + 664);
    v75 = *(v0 + 656);
    v76 = *(v0 + 648);
    v64 = *(v0 + 640);
    v66 = *(v0 + 600);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v37 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v38 = *(*(v37 - 8) + 72);
    v39 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
    v65 = 2 * v38;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006BFF90;
    v41 = (v40 + v39 + *(v37 + 48));
    v42 = enum case for DIPError.PropertyKey.conversationID(_:);
    v43 = type metadata accessor for DIPError.PropertyKey();
    v44 = *(*(v43 - 8) + 104);
    v44(v40 + v39, v42, v43);
    v45 = *(v64 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v46 = *(v64 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v41[3] = &type metadata for String;
    v41[4] = &protocol witness table for String;
    *v41 = v45;
    v41[1] = v46;
    v47 = (v40 + v39 + v38 + *(v37 + 48));
    v44(v40 + v39 + v38, enum case for DIPError.PropertyKey.requestID(_:), v43);
    swift_errorRetain();
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v49 = *(v79 + 16);
    v48 = *(v79 + 24);

    sub_1005CABD4(v79, type metadata accessor for IdentitySharingRequest);
    v47[3] = &type metadata for String;
    v47[4] = &protocol witness table for String;
    *v47 = v49;
    v47[1] = v48;
    v50 = (v40 + v39 + v65 + *(v37 + 48));
    v44(v40 + v39 + v65, enum case for DIPError.PropertyKey.serverURL(_:), v43);
    v50[3] = &type metadata for String;
    v50[4] = &protocol witness table for String;
    *v50 = 0x69726168732D7073;
    v50[1] = 0xEA0000000000676ELL;
    sub_10003C9C0(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v68 + 104))(v69, enum case for DIPError.Code.internalError(_:), v70);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v71 + 8))(v73, v72);

    v51 = *(v0 + 8);
    goto LABEL_6;
  }

  v12 = *(v0 + 728);
  v13 = *(v0 + 688);
  v14 = *(v0 + 640);
  v15 = *(v0 + 600);
  v16 = *(v0 + 592);

  JWSSignedJSON.payload.getter();
  v18 = *v13;
  v17 = v13[1];
  v20 = v13[2];
  v19 = v13[3];

  sub_1005CABD4(v13, type metadata accessor for IdentitySharingRequest);
  JWSSignedJSON.payload.getter();
  v21 = *(v0 + 288);
  v22 = *(v0 + 304);
  v23 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v21;
  v24 = *(v0 + 320);
  *(v0 + 144) = v22;
  *(v0 + 160) = v24;
  v26 = *(v0 + 208);
  v25 = *(v0 + 224);
  v27 = *(v0 + 192);
  *(v0 + 48) = v26;
  *(v0 + 64) = v25;
  v28 = *(v0 + 224);
  v30 = *(v0 + 240);
  v29 = *(v0 + 256);
  *(v0 + 80) = v30;
  *(v0 + 96) = v29;
  v31 = *(v0 + 192);
  v32 = *(v0 + 176);
  *(v0 + 16) = v32;
  *(v0 + 32) = v31;
  *(v0 + 368) = v26;
  *(v0 + 384) = v28;
  *(v0 + 400) = v30;
  *(v0 + 416) = v23;
  *(v0 + 336) = v32;
  *(v0 + 352) = v27;
  sub_1000B1478(v0 + 16, v0 + 432);
  sub_1000B28AC(v0 + 16);
  v33 = sub_10060A770(v18, v17, v20, v19, (v0 + 336), 0);

  sub_1000ACC70(v0 + 16);
  if (v33)
  {
    v34 = *(v0 + 664);
    v81 = *(v0 + 592);
    v78 = enum case for DIPError.Code.internalError(_:);
    v11 = *(*(v0 + 672) + 104);
    v11(*(v0 + 680));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v8 - 8) + 8))(v81, v8);
    v10 = v78;
    goto LABEL_5;
  }

  v53 = *(v0 + 752);
  v54 = *(v0 + 744);
  v55 = *(v0 + 720);
  v56 = *(v0 + 712);
  v57 = *(v0 + 704);
  v58 = *(v0 + 696);
  v59 = *(v0 + 688);
  v77 = *(v0 + 680);
  v80 = *(v0 + 656);
  v82 = *(v0 + 648);
  v60 = *(v0 + 632);
  v61._countAndFlagsBits = 0x6561373163616336;
  v62._countAndFlagsBits = 0xD00000000000001BLL;
  v62._object = 0x80000001007241E0;
  v61._object = 0xE800000000000000;
  logMilestone(tag:description:)(v61, v62);
  v63.value._countAndFlagsBits = sub_1000CB118();
  DIPSignpost.end(workflowID:isBackground:)(v63, 2);

  sub_10000B90C(v54, v53);
  (*(v56 + 8))(v55, v57);

  v51 = *(v0 + 8);
LABEL_6:

  return v51();
}

uint64_t sub_1005C8E20()
{
  v1 = v0[95];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  sub_10000BB78(v0 + 66);
  swift_getErrorValue();
  v5 = v0[70];
  v6 = v0[71];
  v7 = v0[72];
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v4, 1, v3) != 1)
  {
    v8 = v0[84];
    v9 = v0[83];
    v10 = v0[81];
    sub_100044D38(v0[82], v10);
    if ((*(v8 + 88))(v10, v9) == enum case for DIPError.Code.httpTooManyRequests(_:))
    {
      v11 = v0[95];
      v12 = v0[82];
      (*(v0[84] + 104))(v0[85], enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), v0[83]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BE18(v12, &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_6;
    }

    (*(v0[84] + 8))(v0[81], v0[83]);
  }

  v13 = v0[95];
  v14 = v0[82];
  swift_willThrow();
  sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
  v46 = v0[95];
LABEL_6:
  v35 = v0[91];
  v39 = v0[89];
  v40 = v0[88];
  v41 = v0[90];
  v42 = v0[87];
  v45 = v0[86];
  v36 = v0[84];
  v37 = v0[85];
  v38 = v0[83];
  v43 = v0[82];
  v44 = v0[81];
  v32 = v0[80];
  v34 = v0[75];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v15 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v33 = 2 * v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006BFF90;
  v19 = v18 + v17;
  v20 = (v18 + v17 + *(v15 + 48));
  v21 = enum case for DIPError.PropertyKey.conversationID(_:);
  v22 = type metadata accessor for DIPError.PropertyKey();
  v23 = *(*(v22 - 8) + 104);
  v23(v19, v21, v22);
  v24 = *(v32 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v25 = *(v32 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = v24;
  v20[1] = v25;
  v26 = (v19 + v16 + *(v15 + 48));
  v23(v19 + v16, enum case for DIPError.PropertyKey.requestID(_:), v22);
  swift_errorRetain();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v28 = *(v45 + 16);
  v27 = *(v45 + 24);

  sub_1005CABD4(v45, type metadata accessor for IdentitySharingRequest);
  v26[3] = &type metadata for String;
  v26[4] = &protocol witness table for String;
  *v26 = v28;
  v26[1] = v27;
  v29 = (v19 + v33 + *(v15 + 48));
  v23(v19 + v33, enum case for DIPError.PropertyKey.serverURL(_:), v22);
  v29[3] = &type metadata for String;
  v29[4] = &protocol witness table for String;
  *v29 = 0x69726168732D7073;
  v29[1] = 0xEA0000000000676ELL;
  sub_10003C9C0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v36 + 104))(v37, enum case for DIPError.Code.internalError(_:), v38);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v39 + 8))(v41, v40);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1005C9474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[120] = v5;
  v6[119] = a5;
  v6[118] = a4;
  v6[117] = a3;
  v6[116] = a2;
  v6[115] = a1;
  v7 = type metadata accessor for URLRequest();
  v6[121] = v7;
  v8 = *(v7 - 8);
  v6[122] = v8;
  v9 = *(v8 + 64) + 15;
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v6[128] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[129] = v11;
  v12 = *(v11 - 8);
  v6[130] = v12;
  v13 = *(v12 + 64) + 15;
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  v6[133] = v14;
  v15 = *(v14 - 8);
  v6[134] = v15;
  v16 = *(v15 + 64) + 15;
  v6[135] = swift_task_alloc();
  v17 = sub_100007224(&qword_1008494C0, &qword_1006E9470);
  v6[136] = v17;
  v18 = *(v17 - 8);
  v6[137] = v18;
  v19 = *(v18 + 64) + 15;
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v6[140] = v20;
  v21 = *(v20 - 8);
  v6[141] = v21;
  v22 = *(v21 + 64) + 15;
  v6[142] = swift_task_alloc();

  return _swift_task_switch(sub_1005C9744, 0, 0);
}

uint64_t sub_1005CA6C4()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v4 = *v1;
  *(*v1 + 1192) = v0;

  v5 = *(v2 + 1176);

  if (v0)
  {
    v6 = sub_1005CA9B4;
  }

  else
  {
    v6 = sub_1005CA7F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005CA7F8()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 992);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v27 = *(v0 + 880);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v24 = *(v0 + 904);
  v7 = *(v0 + 1136);
  v8 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1080);
  v9 = *(v0 + 1056);
  v10 = *(v0 + 1040);
  v11 = *(v0 + 1032);
  v18 = *(v0 + 1048);
  v19 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v20 = *(v0 + 1008);
  v21 = *(v0 + 1000);
  v22 = *(v0 + 992);
  v23 = *(v0 + 984);
  v13 = *(v0 + 968);
  sub_10000B90C(*(v0 + 1152), *(v0 + 1144));
  v6(v12, v13);
  (*(v10 + 8))(v9, v11);

  v14 = *(v0 + 8);

  return v14(v27, v26, v25, v24);
}

uint64_t sub_1005CA9B4()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[143];
  v26 = v0[132];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[127];
  v8 = v0[124];
  v9 = v0[122];
  v10 = v0[121];

  v11 = *(v9 + 8);
  v11(v8, v10);
  sub_10000B90C(v3, v4);
  v11(v7, v10);
  (*(v5 + 8))(v26, v6);
  v12 = v0[142];
  v13 = v0[139];
  v14 = v0[138];
  v15 = v0[135];
  v16 = v0[132];
  v17 = v0[131];
  v18 = v0[128];
  v19 = v0[127];
  v20 = v0[126];
  v21 = v0[125];
  v24 = v0[124];
  v25 = v0[123];
  v27 = v0[149];

  v22 = v0[1];

  return v22();
}

id sub_1005CAB68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIPSPWebService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005CABD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005CAC34()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  if (v0[10])
  {

    v4 = v0[12];

    v5 = v0[14];
  }

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_1005CAC98()
{
  result = qword_1008494E0;
  if (!qword_1008494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008494E0);
  }

  return result;
}

uint64_t sub_1005CACEC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005CAE7C, 0, 0);
}

uint64_t sub_1005CB13C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);

  if (v0)
  {
    v6 = sub_1005CB270;
  }

  else
  {
    v6 = sub_1005CB518;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005CB270()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v16 = v0[18];
  v5 = v0[15];
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  v15 = v0[8];
  v10 = v0[6];

  v11 = *(v5 + 8);
  v11(v4, v6);
  _StringGuts.grow(_:)(30);

  sub_1002A7708(&qword_1008418B0, &type metadata accessor for URL);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v9 + 104))(v7, enum case for DIPError.Code.internalError(_:), v15);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11(v16, v6);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005CB518()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v14 = *(v0 + 80);

  v9 = *(v6 + 8);
  v9(v3, v7);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  v9(v4, v7);

  v12 = *(v0 + 8);

  return v12(v10, v11);
}

uint64_t sub_1005CB61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for DIPError();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v5[18] = v16;
  v17 = *(v16 - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v5[22] = v19;
  v20 = *(v19 - 8);
  v5[23] = v20;
  v21 = *(v20 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005CB8BC, 0, 0);
}

void sub_1005CB8BC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v28 = v0[20];
  v6 = v0[6];
  v29 = v0[5];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  Date.init()();
  static Date.- infix(_:_:)();
  v10 = *(v4 + 8);
  v0[27] = v10;
  v0[28] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v5);
  Date.init()();
  static Date.+ infix(_:_:)();
  v10(v1, v5);
  sub_1005CEE7C(v6 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL, v9, v8, v7, v29, v28);
  (*(v0[19] + 32))(v0[21], v0[20], v0[18]);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[6];
  v26 = v0[3];
  v27 = v0[5];
  v17 = *(v12 + 16);
  v17(v14, v0[26], v13);
  v18 = *(v12 + 56);
  v18(v14, 0, 1, v13);
  v17(v15, v11, v13);
  v18(v15, 0, 1, v13);

  v19 = swift_task_alloc();
  v0[29] = v19;
  *v19 = v0;
  v19[1] = sub_1005CBF30;
  v20 = v0[21];
  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[6];
  v24 = v0[3];
  v25 = v0[2];
  v31 = v0[4];
  v32 = v0[5];

  JUMPOUT(0x100602B64);
}

uint64_t sub_1005CBF30()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 24);
  v8 = *v0;

  sub_10000BE18(v3, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005CC0E8, 0, 0);
}

uint64_t sub_1005CC0E8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
  (*(v0[19] + 8))(v0[21], v0[18]);
  v2(v4, v5);
  v2(v3, v5);
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005CC204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = v6;
  *(v7 + 41) = a5;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  v8 = type metadata accessor for Logger();
  *(v7 + 144) = v8;
  v9 = *(v8 - 8);
  *(v7 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v11 = sub_100007224(&qword_1008495D0, &qword_1006E9530);
  *(v7 + 176) = v11;
  v12 = *(v11 - 8);
  *(v7 + 184) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  *(v7 + 208) = v14;
  v15 = *(v14 - 8);
  *(v7 + 216) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  v17 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v18 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v19 = type metadata accessor for URLRequest();
  *(v7 + 256) = v19;
  v20 = *(v19 - 8);
  *(v7 + 264) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v22 = type metadata accessor for URL();
  *(v7 + 296) = v22;
  v23 = *(v22 - 8);
  *(v7 + 304) = v23;
  v24 = *(v23 + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  v25 = type metadata accessor for DIPSignpost.Config();
  *(v7 + 328) = v25;
  v26 = *(v25 - 8);
  *(v7 + 336) = v26;
  v27 = *(v26 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  v28 = type metadata accessor for DIPSignpost();
  *(v7 + 360) = v28;
  v29 = *(v28 - 8);
  *(v7 + 368) = v29;
  v30 = *(v29 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();

  return _swift_task_switch(sub_1005CC5D4, 0, 0);
}

uint64_t sub_1005CD354()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 416);

  if (v0)
  {
    v6 = sub_1005CDDC8;
  }

  else
  {
    v6 = sub_1005CD488;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005CD488()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);

  v112 = *(v5 + 8);
  v112(v3, v4);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v114 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 432);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v12 = *(v0 + 248);
  if ((*(v11 + 48))(v12, 1, v10))
  {
    if (*(v0 + 41))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v36 = *(v0 + 376);
  (*(v11 + 16))(v36, v12, v10);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v11 + 8))(v36, v10);
  if ((*(v0 + 41) & 1) == 0)
  {
LABEL_3:
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendStaticAssetFetchedEvent(wasLoadedFromCache:)();
  }

LABEL_4:
  v13 = *(v0 + 200);
  v14 = *(v0 + 176);
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_1008495D8, &qword_1008495D0, &qword_1006E9530);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v110 = v6;
  if (v9)
  {

    if (v8)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 288);
      v19 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v19 removeCachedResponseForRequest:isa];
    }

    v21 = *(v0 + 392);
    v22 = *(v0 + 368);
    v102 = *(v0 + 360);
    v105 = *(v0 + 384);
    v23 = *(v0 + 304);
    v96 = *(v0 + 296);
    v98 = *(v0 + 320);
    v90 = *(v0 + 264);
    v92 = *(v0 + 256);
    v94 = *(v0 + 288);
    v100 = *(v0 + 248);
    (*(*(v0 + 216) + 104))(*(v0 + 224), enum case for DIPError.Code.internalError(_:), *(v0 + 208));
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v7, v6);

    v112(v94, v92);
    (*(v23 + 8))(v98, v96);
    (*(v22 + 8))(v105, v102);
    sub_10000BE18(v100, &qword_10083B038, &unk_1006D9160);
    v25 = *(v0 + 376);
    v24 = *(v0 + 384);
    v27 = *(v0 + 344);
    v26 = *(v0 + 352);
    v29 = *(v0 + 312);
    v28 = *(v0 + 320);
    v30 = *(v0 + 280);
    v31 = *(v0 + 288);
    v32 = *(v0 + 272);
    v33 = *(v0 + 248);
    v101 = *(v0 + 240);
    v103 = *(v0 + 232);
    v106 = *(v0 + 224);
    v109 = *(v0 + 200);
    v111 = *(v0 + 192);
    v113 = *(v0 + 168);
    v115 = *(v0 + 160);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v37 = *(v0 + 392);

    if ((v8 & 1) == 0)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v38 = qword_100882498;
      v39 = objc_allocWithZone(NSCachedURLResponse);
      v40 = Data._bridgeToObjectiveC()().super.isa;
      v41 = [v39 initWithResponse:v114 data:v40];

      v42 = sub_100600EC4(v41, 0, 1);
      if (v42)
      {
        v43 = v42;
        v44 = *(v0 + 288);
        v45 = URLRequest._bridgeToObjectiveC()().super.isa;
        v46 = type metadata accessor for DIPURLCache();
        *(v0 + 80) = v38;
        *(v0 + 88) = v46;
        objc_msgSendSuper2((v0 + 80), "storeCachedResponse:forRequest:", v43, v45);

        v41 = v45;
      }

      v47 = *(v0 + 168);

      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Identity Proofing Static asset response stored in the cache", v50, 2u);
      }

      v51 = *(v0 + 384);
      v52 = *(v0 + 168);
      v53 = *(v0 + 144);
      v54 = *(v0 + 152);

      (*(v54 + 8))(v52, v53);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v55 = *(v0 + 192);
    v56 = *(v0 + 200);
    v57 = *(v0 + 176);
    v58 = *(v0 + 184);
    v59 = *(v0 + 160);
    defaultLogger()();
    (*(v58 + 16))(v55, v56, v57);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v108 = v60;
    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v0 + 176);
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      JWSSignedJSON.payload.getter();
      v64 = *(v0 + 64);

      v65 = *(v0 + 72);
      if (v65)
      {
        v66 = *(v65 + 16);
      }

      else
      {
        v66 = 0;
      }

      v89 = *(*(v0 + 184) + 8);
      v89(*(v0 + 192), *(v0 + 176));
      *(v63 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v108, v61, "Image assets count -> %ld", v63, 0xCu);
    }

    else
    {
      v89 = *(*(v0 + 184) + 8);
      v89(*(v0 + 192), *(v0 + 176));
    }

    v84 = *(v0 + 384);
    v85 = *(v0 + 376);
    v67 = *(v0 + 368);
    v83 = *(v0 + 360);
    v86 = *(v0 + 352);
    v87 = *(v0 + 344);
    v88 = *(v0 + 312);
    v68 = *(v0 + 304);
    v80 = *(v0 + 296);
    v81 = *(v0 + 320);
    v69 = *(v0 + 264);
    v91 = *(v0 + 280);
    v93 = *(v0 + 272);
    v78 = *(v0 + 256);
    v79 = *(v0 + 288);
    v82 = *(v0 + 248);
    v95 = *(v0 + 240);
    v97 = *(v0 + 232);
    v99 = *(v0 + 224);
    v70 = *(v0 + 200);
    v71 = *(v0 + 176);
    v104 = *(v0 + 192);
    v107 = *(v0 + 168);
    v73 = *(v0 + 152);
    v72 = *(v0 + 160);
    v74 = *(v0 + 144);

    (*(v73 + 8))(v72, v74);
    JWSSignedJSON.payload.getter();

    sub_10000B90C(v7, v110);
    v89(v70, v71);
    v112(v79, v78);
    (*(v68 + 8))(v81, v80);
    (*(v67 + 8))(v84, v83);
    v75 = *(v0 + 48);
    v76 = *(v0 + 56);
    sub_10000BE18(v82, &qword_10083B038, &unk_1006D9160);

    v77 = *(v0 + 8);

    return v77(v75, v76);
  }
}

uint64_t sub_1005CDDC8()
{
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];
  v24 = v0[49];
  v37 = v0[48];
  v25 = v0[46];
  v35 = v0[45];
  v4 = v0[38];
  v29 = v0[37];
  v31 = v0[40];
  v5 = v0[35];
  v27 = v0[36];
  v6 = v0[32];
  v7 = v0[33];
  v33 = v0[31];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];

  v11 = *(v7 + 8);
  v11(v5, v6);
  (*(v8 + 104))(v9, enum case for DIPError.Code.internalError(_:), v10);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11(v27, v6);
  (*(v4 + 8))(v31, v29);
  (*(v25 + 8))(v37, v35);
  sub_10000BE18(v33, &qword_10083B038, &unk_1006D9160);
  v13 = v0[47];
  v12 = v0[48];
  v15 = v0[43];
  v14 = v0[44];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[35];
  v19 = v0[36];
  v20 = v0[34];
  v21 = v0[31];
  v26 = v0[30];
  v28 = v0[29];
  v30 = v0[28];
  v32 = v0[25];
  v34 = v0[24];
  v36 = v0[21];
  v38 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005CE0D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005CE288, 0, 0);
}

uint64_t sub_1005CE288()
{
  v31 = v0;
  v1 = v0[14];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v30);
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to download for url %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[2];
  v17 = v0[3];
  URL.init(string:)();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v18 = v0[7];
    v19 = v0[5];
    v20 = v0[6];
    sub_10000BE18(v0[8], &unk_100844540, &unk_1006BFBC0);
    (*(v20 + 104))(v18, enum case for DIPError.Code.invalidImageAssetDownloadURL(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v21 = v0[14];
    v22 = v0[11];
    v24 = v0[7];
    v23 = v0[8];

    v25 = v0[1];

    return v25();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v27 = swift_task_alloc();
    v0[15] = v27;
    *v27 = v0;
    v27[1] = sub_1005CE608;
    v28 = v0[11];
    v29 = v0[4];

    return sub_1005D4B54(v28);
  }
}

uint64_t sub_1005CE608(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = sub_1005CE7E8;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v9 = sub_1005CE73C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005CE73C()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v4 = v0[1];
  v6 = v0[17];
  v5 = v0[18];

  return v4(v5, v6);
}

uint64_t sub_1005CE7E8()
{
  v1 = v0[16];
  v2 = v0[10];
  v10 = v0[11];
  v3 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v2 + 8))(v10, v3);
  v4 = v0[14];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005CE9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v39._countAndFlagsBits = a4;
  v39._object = a5;
  v42 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v35 = &v34 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v34 - v21;
  v23 = type metadata accessor for URLComponents();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v41 = a3;

  v28._countAndFlagsBits = 47;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  String.append(_:)(v39);
  URL.appendingPathComponent(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v15 + 8))(v18, v14);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v29 = &qword_100848FA0;
    v30 = &qword_1006E94D0;
    v31 = v22;
LABEL_5:
    sub_10000BE18(v31, v29, v30);
    (*(v36 + 104))(v38, enum case for DIPError.Code.invalidStaticWorkflowBaseURL(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v24 + 32))(v27, v22, v23);
  v32 = v35;
  URLComponents.url.getter();
  (*(v24 + 8))(v27, v23);
  if ((*(v15 + 48))(v32, 1, v14) == 1)
  {
    v29 = &unk_100844540;
    v30 = &unk_1006BFBC0;
    v31 = v32;
    goto LABEL_5;
  }

  return (*(v15 + 32))(v34, v32, v14);
}

uint64_t sub_1005CEE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v39._countAndFlagsBits = a4;
  v39._object = a5;
  v42 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v35 = &v34 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v34 - v21;
  v23 = type metadata accessor for URLComponents();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v41 = a3;

  v28._countAndFlagsBits = 47;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  String.append(_:)(v39);
  URL.appendingPathComponent(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v15 + 8))(v18, v14);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v29 = &qword_100848FA0;
    v30 = &qword_1006E94D0;
    v31 = v22;
LABEL_5:
    sub_10000BE18(v31, v29, v30);
    (*(v36 + 104))(v38, enum case for DIPError.Code.invalidStaticAssetsBaseURL(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v24 + 32))(v27, v22, v23);
  v32 = v35;
  URLComponents.url.getter();
  (*(v24 + 8))(v27, v23);
  if ((*(v15 + 48))(v32, 1, v14) == 1)
  {
    v29 = &unk_100844540;
    v30 = &unk_1006BFBC0;
    v31 = v32;
    goto LABEL_5;
  }

  return (*(v15 + 32))(v34, v32, v14);
}

uint64_t sub_1005CF338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v39._countAndFlagsBits = a4;
  v39._object = a5;
  v42 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v35 = &v34 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v34 - v21;
  v23 = type metadata accessor for URLComponents();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v41 = a3;

  v28._countAndFlagsBits = 47;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  String.append(_:)(v39);
  URL.appendingPathComponent(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v15 + 8))(v18, v14);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v29 = &qword_100848FA0;
    v30 = &qword_1006E94D0;
    v31 = v22;
LABEL_5:
    sub_10000BE18(v31, v29, v30);
    (*(v36 + 104))(v38, enum case for DIPError.Code.invalidStaticAssetsBaseURL(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v24 + 32))(v27, v22, v23);
  v32 = v35;
  URLComponents.url.getter();
  (*(v24 + 8))(v27, v23);
  if ((*(v15 + 48))(v32, 1, v14) == 1)
  {
    v29 = &unk_100844540;
    v30 = &unk_1006BFBC0;
    v31 = v32;
    goto LABEL_5;
  }

  return (*(v15 + 32))(v34, v32, v14);
}

uint64_t sub_1005CF7F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v3 + v14, a1, v15);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v10 + 8))(v13, v9);
  v20 = (v3 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_conversation);
  *v20 = v17;
  v20[1] = v19;
  v21 = v27;
  sub_1002BEB48(v27, v8);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v22 = type metadata accessor for DIPHTTPSession(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1005BE690(v28, v8);
  sub_1005D7B6C(v21, type metadata accessor for DIPHTTPSession.Configuration);
  (*(v16 + 8))(a1, v15);
  *(v3 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession) = v25;
  return v3;
}

uint64_t sub_1005CFA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = v7;
  *(v8 + 41) = a6;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 64) = a1;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 144) = v12;
  v13 = *(v12 - 8);
  *(v8 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v15 = sub_100007224(&qword_1008495C0, &unk_1006E94C0);
  *(v8 + 168) = v15;
  v16 = *(v15 - 8);
  *(v8 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v18 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v19 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v20 = type metadata accessor for URLRequest();
  *(v8 + 216) = v20;
  v21 = *(v20 - 8);
  *(v8 + 224) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v23 = type metadata accessor for URL();
  *(v8 + 256) = v23;
  v24 = *(v23 - 8);
  *(v8 + 264) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v26 = type metadata accessor for DIPSignpost.Config();
  *(v8 + 288) = v26;
  v27 = *(v26 - 8);
  *(v8 + 296) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v29 = type metadata accessor for DIPSignpost();
  *(v8 + 320) = v29;
  v30 = *(v29 - 8);
  *(v8 + 328) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_1005CFDE4, 0, 0);
}

uint64_t sub_1005D0A98()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 376);

  if (v0)
  {
    v6 = sub_1005D1430;
  }

  else
  {
    v6 = sub_1005D0BCC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005D0BCC()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);

  v95 = *(v5 + 8);
  v95(v3, v4);
  v6 = *(v0 + 16);
  v97 = *(v0 + 32);
  v100 = *(v0 + 24);
  v7 = *(v0 + 40);
  v8 = *(v0 + 392);
  v9 = *(v0 + 320);
  v10 = *(v0 + 328);
  v11 = *(v0 + 208);
  if ((*(v10 + 48))(v11, 1, v9))
  {
    if (*(v0 + 41))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v38 = *(v0 + 336);
  (*(v10 + 16))(v38, v11, v9);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v10 + 8))(v38, v9);
  if ((*(v0 + 41) & 1) == 0)
  {
LABEL_3:
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendStaticWorkflowFetchedEvent(workflowID:wasLoadedFromCache:)();
  }

LABEL_4:
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);
  v16 = type metadata accessor for JSONDecoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_1008495C8, &qword_1008495C0, &unk_1006E94C0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v8)
  {

    if (v7)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 248);
      v20 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v20 removeCachedResponseForRequest:isa];
    }

    v22 = *(v0 + 352);
    v23 = *(v0 + 120);
    v89 = enum case for DIPError.Code.internalError(_:);
    v86 = *(*(v0 + 128) + 104);
    v86(*(v0 + 136));
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    swift_errorRetain();

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v6, v100);
    v24 = *(v0 + 352);
    v98 = *(v0 + 344);
    v25 = *(v0 + 328);
    v92 = *(v0 + 320);
    v26 = *(v0 + 264);
    v76 = *(v0 + 256);
    v78 = *(v0 + 280);
    v70 = *(v0 + 224);
    v72 = *(v0 + 216);
    v74 = *(v0 + 248);
    v82 = *(v0 + 208);
    (v86)(*(v0 + 136), v89, *(v0 + 120));
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v95(v74, v72);
    (*(v26 + 8))(v78, v76);
    (*(v25 + 8))(v98, v92);
    sub_10000BE18(v82, &qword_10083B038, &unk_1006D9160);
    v28 = *(v0 + 336);
    v27 = *(v0 + 344);
    v30 = *(v0 + 304);
    v29 = *(v0 + 312);
    v32 = *(v0 + 272);
    v31 = *(v0 + 280);
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 232);
    v36 = *(v0 + 208);
    v87 = *(v0 + 200);
    v90 = *(v0 + 192);
    v93 = *(v0 + 184);
    v96 = *(v0 + 160);
    v99 = *(v0 + 136);

    v37 = *(v0 + 8);
  }

  else
  {
    v39 = *(v0 + 352);

    if ((v7 & 1) == 0)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v40 = qword_100882498;
      v41 = objc_allocWithZone(NSCachedURLResponse);
      v42 = Data._bridgeToObjectiveC()().super.isa;
      v43 = [v41 initWithResponse:v97 data:v42];

      v44 = sub_100600EC4(v43, 0, 1);
      if (v44)
      {
        v45 = v44;
        v46 = *(v0 + 248);
        v47 = URLRequest._bridgeToObjectiveC()().super.isa;
        v48 = type metadata accessor for DIPURLCache();
        *(v0 + 48) = v40;
        *(v0 + 56) = v48;
        objc_msgSendSuper2((v0 + 48), "storeCachedResponse:forRequest:", v45, v47);

        v43 = v47;
      }

      v49 = *(v0 + 160);

      defaultLogger()();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Identity Proofing Static workflow response stored in the cache", v52, 2u);
      }

      v53 = *(v0 + 344);
      v55 = *(v0 + 152);
      v54 = *(v0 + 160);
      v56 = *(v0 + 144);

      (*(v55 + 8))(v54, v56);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v75 = *(v0 + 344);
    v77 = *(v0 + 336);
    v57 = *(v0 + 328);
    v79 = *(v0 + 312);
    v80 = *(v0 + 304);
    v58 = *(v0 + 264);
    v68 = *(v0 + 256);
    v69 = *(v0 + 280);
    v59 = *(v0 + 248);
    v81 = *(v0 + 272);
    v83 = *(v0 + 240);
    v60 = *(v0 + 224);
    v61 = *(v0 + 216);
    v71 = *(v0 + 208);
    v73 = *(v0 + 320);
    v84 = *(v0 + 232);
    v85 = *(v0 + 200);
    v88 = *(v0 + 192);
    v62 = v6;
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v65 = *(v0 + 168);
    v91 = *(v0 + 160);
    v94 = *(v0 + 136);
    v66 = *(v0 + 64);
    JWSSignedJSON.payload.getter();

    sub_10000B90C(v62, v100);
    (*(v64 + 8))(v63, v65);
    v95(v59, v61);
    (*(v58 + 8))(v69, v68);
    (*(v57 + 8))(v75, v73);
    sub_10000BE18(v71, &qword_10083B038, &unk_1006D9160);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_1005D1430()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[16];

  v7 = *(v5 + 8);
  v7(v3, v4);
  v8 = v0[49];
  v23 = v0[44];
  v35 = v0[43];
  v9 = v0[41];
  v10 = v0[33];
  v27 = v0[32];
  v29 = v0[35];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[31];
  v31 = v0[26];
  v33 = v0[40];
  (*(v6 + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7(v26, v25);
  (*(v10 + 8))(v29, v27);
  (*(v9 + 8))(v35, v33);
  sub_10000BE18(v31, &qword_10083B038, &unk_1006D9160);
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[34];
  v15 = v0[35];
  v18 = v0[30];
  v17 = v0[31];
  v19 = v0[29];
  v20 = v0[26];
  v28 = v0[25];
  v30 = v0[24];
  v32 = v0[23];
  v34 = v0[20];
  v36 = v0[17];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005D1720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for DIPError();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v5[18] = v16;
  v17 = *(v16 - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v5[22] = v19;
  v20 = *(v19 - 8);
  v5[23] = v20;
  v21 = *(v20 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005D19C0, 0, 0);
}

void sub_1005D19C0()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v28 = v0[20];
  v6 = v0[6];
  v29 = v0[5];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  Date.init()();
  static Date.- infix(_:_:)();
  v10 = *(v4 + 8);
  v0[27] = v10;
  v0[28] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v5);
  Date.init()();
  static Date.+ infix(_:_:)();
  v10(v1, v5);
  sub_1005CE9C0(v6 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL, v9, v8, v7, v29, v28);
  (*(v0[19] + 32))(v0[21], v0[20], v0[18]);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[6];
  v26 = v0[3];
  v27 = v0[5];
  v17 = *(v12 + 16);
  v17(v14, v0[26], v13);
  v18 = *(v12 + 56);
  v18(v14, 0, 1, v13);
  v17(v15, v11, v13);
  v18(v15, 0, 1, v13);

  v19 = swift_task_alloc();
  v0[29] = v19;
  *v19 = v0;
  v19[1] = sub_1005D2034;
  v20 = v0[21];
  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[6];
  v24 = v0[3];
  v25 = v0[2];
  v31 = v0[4];
  v32 = v0[5];

  JUMPOUT(0x1006015BCLL);
}

uint64_t sub_1005D2034()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 24);
  v8 = *v0;

  sub_10000BE18(v3, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005D7BCC, 0, 0);
}

uint64_t sub_1005D21EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v5[15] = v14;
  v15 = *(v14 - 8);
  v5[16] = v15;
  v16 = *(v15 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005D23E8, 0, 0);
}

uint64_t sub_1005D23E8()
{
  v1 = v0[19];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing static workflow cache", v4, 2u);
  }

  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[13];

  v9 = *(v7 + 8);
  v0[20] = v9;
  v9(v5, v6);
  v10 = type metadata accessor for DIPSignpost.Config();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1005D257C;
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[5];
  v15 = v0[6];
  v16 = v0[3];
  v17 = v0[4];
  v18 = v0[2];

  return sub_1005CFA28(v12, v16, v17, v14, v15, 1, v13);
}

uint64_t sub_1005D257C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 176) = v0;

  sub_10000BE18(v4, &unk_10084A260, &qword_1006EA050);
  if (v0)
  {
    v5 = sub_1005D2834;
  }

  else
  {
    sub_1005D7B6C(*(v2 + 112), type metadata accessor for IdentityProofingStaticWorkflow);
    v5 = sub_1005D26E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005D26E0()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing static workflow cache", v9, 2u);
  }

  v5(v6, v7);
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005D2834()
{
  v1 = v0[22];
  v2 = v0[17];
  v28 = v0[15];
  v29 = v0[20];
  v3 = v0[11];
  v4 = v0[9];
  v26 = v0[10];
  v27 = v0[16];
  v25 = v0[12];
  v5 = v0[8];
  v24 = v0[7];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v6 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = v9 + v8;
  v11 = v10 + v6[14];
  v12 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v13 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  *(v11 + 24) = &type metadata for DIPState;
  *(v11 + 32) = sub_10053B8D4();
  *v11 = 9;
  swift_errorRetain();
  sub_10003C9C0(v9);
  swift_setDeallocating();
  sub_10000BE18(v10, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v24);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v14, v25, v26);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v29(v2, v28);
  (*(v3 + 8))(v25, v26);

  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[17];
  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  v21 = v0[9];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005D2BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005D2DA8, 0, 0);
}

uint64_t sub_1005D2DA8()
{
  v1 = v0[19];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing static asset cache", v4, 2u);
  }

  v5 = v0[19];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];

  v9 = *(v7 + 8);
  v0[20] = v9;
  v9(v5, v6);
  v10 = type metadata accessor for DIPSignpost.Config();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1005D2F3C;
  v12 = v0[13];
  v13 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];
  v17 = v0[2];

  return sub_1005CC204(v16, v15, v13, v14, 1, v12);
}

uint64_t sub_1005D2F3C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 168);
  v6 = *(*v3 + 104);
  v9 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  sub_10000BE18(v6, &unk_10084A260, &qword_1006EA050);
  if (v2)
  {
    v7 = sub_1005D344C;
  }

  else
  {
    v7 = sub_1005D3084;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005D3084()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing static asset cache", v4, 2u);
  }

  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[14];
  v8 = v0[15];

  v5(v6, v7);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_1005D31C8;
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[2];

  return sub_1005D37E0(v11, v10);
}

uint64_t sub_1005D31C8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return _swift_task_switch(sub_1005D32FC, 0, 0);
}

uint64_t sub_1005D32FC()
{
  v1 = v0[17];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing precache config data", v9, 2u);
  }

  v5(v6, v7);
  v11 = v0[18];
  v10 = v0[19];
  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005D344C()
{
  v1 = v0[24];
  v2 = v0[16];
  v28 = v0[14];
  v29 = v0[20];
  v3 = v0[11];
  v4 = v0[9];
  v26 = v0[10];
  v27 = v0[15];
  v25 = v0[12];
  v5 = v0[8];
  v24 = v0[7];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v6 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = v9 + v8;
  v11 = v10 + v6[14];
  v12 = enum case for DIPError.PropertyKey.daemonSessionState(_:);
  v13 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  *(v11 + 24) = &type metadata for DIPState;
  *(v11 + 32) = sub_10053B8D4();
  *v11 = 9;
  swift_errorRetain();
  sub_10003C9C0(v9);
  swift_setDeallocating();
  sub_10000BE18(v10, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v24);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v14, v25, v26);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v29(v2, v28);
  (*(v3 + 8))(v25, v26);

  v16 = v0[18];
  v15 = v0[19];
  v18 = v0[16];
  v17 = v0[17];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[9];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005D37E0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005D390C, 0, 0);
}

uint64_t sub_1005D390C()
{
  v51 = v0;
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[7];
    if (v2)
    {
      v3 = v1[2];
      v0[16] = v3;
      if (!v3)
      {
        v41 = v0[12];
        defaultLogger()();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        v44 = os_log_type_enabled(v42, v43);
        v45 = v0[12];
        v46 = v0[9];
        v47 = v0[10];
        if (v44)
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Downloading precached config data complete", v48, 2u);
        }

        (*(v47 + 8))(v45, v46);
        goto LABEL_15;
      }

      v0[17] = 0;
      v5 = v1[4];
      v4 = v1[5];
      v6 = *(v2 + 16);

      if (v6)
      {
        v7 = sub_10003ADCC(v5, v4);
        if (v8)
        {
          v9 = v7;
          v10 = v0[7];

          v11 = (*(v10 + 56) + 32 * v9);
          v13 = *v11;
          v12 = v11[1];
          v0[18] = v12;
          v0[19] = v11[2];
          v0[20] = v11[3];

          v14 = swift_task_alloc();
          v0[21] = v14;
          *v14 = v0;
          v14[1] = sub_1005D3FA4;
          v15 = v0[8];

          return sub_1005CE0D4(v13, v12);
        }
      }

      v18 = v0[14];
      v17 = v0[15];
      v19 = v0[13];
      _StringGuts.grow(_:)(49);

      v50[0] = 0x3E2D207465737361;
      v50[1] = 0xE900000000000020;
      v20._countAndFlagsBits = v5;
      v20._object = v4;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD000000000000026;
      v21._object = 0x80000001007245A0;
      String.append(_:)(v21);
      (*(v18 + 104))(v17, enum case for DIPError.Code.internalError(_:), v19);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    else
    {
      (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.imageAssetsUnavailable(_:), v0[13]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }
  }

  else
  {
    (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.precachedConfigDoesntExist(_:), v0[13]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v22 = v0[11];
  defaultLogger()();
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v27 = v0[10];
  v26 = v0[11];
  v28 = v0[9];
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50[0] = v30;
    *v29 = 136315138;
    swift_getErrorValue();
    v49 = v26;
    v32 = v0[2];
    v31 = v0[3];
    v33 = v0[4];
    v34 = Error.localizedDescription.getter();
    v36 = sub_100141FE4(v34, v35, v50);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v23, v24, "Unable to download the precached config %s", v29, 0xCu);
    sub_10000BB78(v30);

    (*(v27 + 8))(v49, v28);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

LABEL_15:
  v37 = v0[15];
  v38 = v0[11];
  v39 = v0[12];

  v40 = v0[1];

  return v40();
}

uint64_t sub_1005D3FA4(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 168);
  v7 = *v3;
  v7[22] = v2;

  if (v2)
  {
    v8 = v7[20];
    v9 = v7[18];

    return _swift_task_switch(sub_1005D4784, 0, 0);
  }

  else
  {
    v10 = v7[18];
    sub_10000B90C(a1, a2);

    v11 = swift_task_alloc();
    v7[23] = v11;
    *v11 = v7;
    v11[1] = sub_1005D4158;
    v12 = v7[20];
    v13 = v7[8];
    v14 = v7[19];

    return sub_1005CE0D4(v14, v12);
  }
}

uint64_t sub_1005D4158(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  *(*v3 + 192) = v2;

  v9 = *(v6 + 160);
  if (v2)
  {

    v10 = sub_1005D496C;
  }

  else
  {
    sub_10000B90C(a1, a2);

    v10 = sub_1005D42B4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1005D42B4()
{
  v50 = v0;
  v1 = v0[17] + 1;
  if (v1 == v0[16])
  {
    v2 = v0[12];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Downloading precached config data complete", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);
    goto LABEL_13;
  }

  v0[17] = v1;
  v10 = v0[6] + 16 * v1;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = *(v0[7] + 16);

  if (!v13 || (v14 = sub_10003ADCC(v12, v11), (v15 & 1) == 0))
  {
    v25 = v0[14];
    v24 = v0[15];
    v26 = v0[13];
    _StringGuts.grow(_:)(49);

    v49[0] = 0x3E2D207465737361;
    v49[1] = 0xE900000000000020;
    v27._countAndFlagsBits = v12;
    v27._object = v11;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0xD000000000000026;
    v28._object = 0x80000001007245A0;
    String.append(_:)(v28);
    (*(v25 + 104))(v24, enum case for DIPError.Code.internalError(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v29 = v0[11];
    defaultLogger()();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[10];
    v33 = v0[11];
    v35 = v0[9];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49[0] = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v48 = v33;
      v39 = v0[2];
      v38 = v0[3];
      v40 = v0[4];
      v41 = Error.localizedDescription.getter();
      v43 = sub_100141FE4(v41, v42, v49);

      *(v36 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to download the precached config %s", v36, 0xCu);
      sub_10000BB78(v37);

      (*(v34 + 8))(v48, v35);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

LABEL_13:
    v44 = v0[15];
    v45 = v0[11];
    v46 = v0[12];

    v47 = v0[1];

    return v47();
  }

  v16 = v14;
  v17 = v0[7];

  v18 = (*(v17 + 56) + 32 * v16);
  v20 = *v18;
  v19 = v18[1];
  v0[18] = v19;
  v0[19] = v18[2];
  v0[20] = v18[3];

  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_1005D3FA4;
  v22 = v0[8];

  return sub_1005CE0D4(v20, v19);
}

uint64_t sub_1005D4784()
{
  v25 = v0;
  v1 = v0[22];
  v2 = v0[11];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v23 = v0[11];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to download the precached config %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v23, v6);
  }

  else
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005D496C()
{
  v25 = v0;
  v1 = v0[24];
  v2 = v0[11];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v23 = v0[11];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to download the precached config %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v23, v6);
  }

  else
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005D4B54(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005D4D64, 0, 0);
}

uint64_t sub_1005D52F0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_1005D5804;
  }

  else
  {
    v6 = sub_1005D5424;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005D5424()
{
  v64 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = *(v0 + 16);
  v8 = *(v0 + 32);
  v62 = *(v0 + 24);
  if (*(v0 + 40))
  {
    v6(*(v0 + 136), *(v0 + 104));
  }

  else
  {
    v61 = v6;
    if (qword_100832D20 != -1)
    {
      swift_once();
    }

    v9 = qword_100882498;
    v10 = objc_allocWithZone(NSCachedURLResponse);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = [v10 initWithResponse:v8 data:isa];

    v13 = sub_100600EC4(v12, 0, 1);
    v60 = v8;
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 136);
      v16 = URLRequest._bridgeToObjectiveC()().super.isa;
      v17 = type metadata accessor for DIPURLCache();
      *(v0 + 48) = v9;
      *(v0 + 56) = v17;
      objc_msgSendSuper2((v0 + 48), "storeCachedResponse:forRequest:", v14, v16);

      v12 = v16;
    }

    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 200);
    v21 = *(v0 + 160);
    v22 = *(v0 + 144);
    v23 = *(v0 + 64);

    defaultLogger()();
    v19(v21, v23, v22);
    v24 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v24, v55);
    v26 = *(v0 + 232);
    v27 = *(v0 + 200);
    v56 = *(v0 + 240);
    v57 = *(v0 + 192);
    v28 = *(v0 + 184);
    v29 = *(v0 + 152);
    v30 = *(v0 + 160);
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);
    v58 = v28;
    v59 = *(v0 + 104);
    if (v25)
    {
      v53 = *(v0 + 232);
      v33 = swift_slowAlloc();
      v52 = v27;
      v34 = swift_slowAlloc();
      v63 = v34;
      *v33 = 136315138;
      v51 = v32;
      v35 = URL.absoluteString.getter();
      v54 = v7;
      v37 = v36;
      v56(v30, v31);
      v38 = sub_100141FE4(v35, v37, &v63);
      v7 = v54;

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v24, v55, "Image data successully cached for URL %s", v33, 0xCu);
      sub_10000BB78(v34);

      v53(v52, v58);
      v39 = v51;
    }

    else
    {

      v56(v30, v31);
      v26(v27, v58);
      v39 = v32;
    }

    v61(v39, v59);
  }

  v41 = *(v0 + 200);
  v40 = *(v0 + 208);
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v44 = *(v0 + 160);
  v46 = *(v0 + 128);
  v45 = *(v0 + 136);
  v47 = *(v0 + 120);
  v48 = *(v0 + 96);

  v49 = *(v0 + 8);

  return v49(v7, v62);
}

uint64_t sub_1005D5804()
{
  v2 = v0[31];
  v1 = v0[32];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[21];
  v3 = v0[16];
  v14 = v0[17];
  v15 = v0[35];
  v4 = v0[14];
  v20 = v0[20];
  v21 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[8];

  v10 = *(v4 + 8);
  v10(v3, v6);
  _StringGuts.grow(_:)(46);

  v11._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v11);

  (*(v8 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10(v14, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005D5A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = sub_100007224(&qword_1008495E0, &qword_1006E9558);
  v6[17] = v10;
  v11 = *(v10 - 8);
  v6[18] = v11;
  v12 = *(v11 + 64) + 15;
  v6[19] = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v15 = type metadata accessor for URLRequest();
  v6[23] = v15;
  v16 = *(v15 - 8);
  v6[24] = v16;
  v17 = *(v16 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v18 = type metadata accessor for URL();
  v6[28] = v18;
  v19 = *(v18 - 8);
  v6[29] = v19;
  v20 = *(v19 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v21 = type metadata accessor for DIPSignpost.Config();
  v6[32] = v21;
  v22 = *(v21 - 8);
  v6[33] = v22;
  v23 = *(v22 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v24 = type metadata accessor for DIPSignpost();
  v6[36] = v24;
  v25 = *(v24 - 8);
  v6[37] = v25;
  v26 = *(v25 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1005D5DE8, 0, 0);
}

uint64_t sub_1005D6480()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);

  if (v0)
  {
    v6 = sub_1005D65B4;
  }

  else
  {
    v6 = sub_1005D6894;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005D65B4()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];

  v27 = *(v5 + 8);
  v27(v3, v4);
  v6 = v0[45];
  v22 = v0[40];
  v33 = v0[39];
  v7 = v0[37];
  v8 = v0[29];
  v25 = v0[28];
  v26 = v0[31];
  v9 = v0[23];
  v23 = v9;
  v24 = v0[27];
  v29 = v0[22];
  v31 = v0[36];
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v27(v24, v23);
  (*(v8 + 8))(v26, v25);
  (*(v7 + 8))(v33, v31);
  sub_10000BE18(v29, &qword_10083B038, &unk_1006D9160);
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[30];
  v14 = v0[31];
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[25];
  v19 = v0[22];
  v28 = v0[21];
  v30 = v0[20];
  v32 = v0[19];
  v34 = v0[16];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005D6894()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  v71 = *(v7 + 8);
  v71(v5, v6);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  if (!(*(v4 + 48))(v8, 1, v3))
  {
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = *(v0 + 288);
    (*(v12 + 16))(v11, *(v0 + 176), v13);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 360);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = type metadata accessor for JSONDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_1008495E8, &qword_1008495E0, &qword_1006E9558);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v14)
  {
    sub_10000B90C(v9, v10);

    v51 = *(v0 + 320);
    v20 = *(v0 + 296);
    v65 = *(v0 + 288);
    v68 = *(v0 + 312);
    v21 = *(v0 + 232);
    v57 = *(v0 + 224);
    v59 = *(v0 + 248);
    v22 = *(v0 + 184);
    v53 = v22;
    v55 = *(v0 + 216);
    v62 = *(v0 + 176);
    (*(*(v0 + 120) + 104))(*(v0 + 128), enum case for DIPError.Code.internalError(_:), *(v0 + 112));
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v71(v55, v53);
    (*(v21 + 8))(v59, v57);
    (*(v20 + 8))(v68, v65);
    sub_10000BE18(v62, &qword_10083B038, &unk_1006D9160);
    v24 = *(v0 + 304);
    v23 = *(v0 + 312);
    v26 = *(v0 + 272);
    v25 = *(v0 + 280);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(v0 + 200);
    v32 = *(v0 + 176);
    v63 = *(v0 + 168);
    v66 = *(v0 + 160);
    v69 = *(v0 + 152);
    v72 = *(v0 + 128);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v36 = *(v0 + 312);
    v35 = *(v0 + 320);
    v37 = *(v0 + 296);
    v50 = *(v0 + 288);
    v52 = *(v0 + 304);
    v54 = *(v0 + 280);
    v56 = *(v0 + 272);
    v38 = *(v0 + 232);
    v47 = *(v0 + 224);
    v48 = *(v0 + 248);
    v58 = *(v0 + 240);
    v60 = *(v0 + 208);
    v61 = *(v0 + 200);
    v45 = *(v0 + 184);
    v46 = *(v0 + 216);
    v49 = *(v0 + 176);
    v64 = *(v0 + 168);
    v67 = *(v0 + 160);
    v40 = *(v0 + 144);
    v39 = *(v0 + 152);
    v41 = *(v0 + 136);
    v70 = *(v0 + 128);

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    JWSSignedJSON.payload.getter();
    sub_10000B90C(v9, v10);
    (*(v40 + 8))(v39, v41);
    v71(v46, v45);
    (*(v38 + 8))(v48, v47);
    (*(v37 + 8))(v36, v50);
    v43 = *(v0 + 48);
    v42 = *(v0 + 56);
    sub_10000BE18(v49, &qword_10083B038, &unk_1006D9160);

    v44 = *(v0 + 8);

    return v44(v43, v42);
  }
}

uint64_t sub_1005D6E44()
{
  v1 = OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_conversation + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DIPTopekaStaticWebService()
{
  result = qword_100849528;
  if (!qword_100849528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005D6F58()
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

uint64_t sub_1005D7000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_10084A260, &qword_1006EA050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D7070(char a1)
{
  *(v1 + 880) = a1;
  v2 = type metadata accessor for Logger();
  *(v1 + 744) = v2;
  v3 = *(v2 - 8);
  *(v1 + 752) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 760) = swift_task_alloc();
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  v5 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v1 + 800) = v6;
  v7 = *(v6 - 8);
  *(v1 + 808) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 816) = swift_task_alloc();
  *(v1 + 824) = swift_task_alloc();
  v9 = type metadata accessor for DIPHTTPSession.Configuration(0);
  *(v1 + 832) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_1005D7230, 0, 0);
}

uint64_t sub_1005D7230()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 63));
  os_unfair_lock_unlock(v1 + 54);
  sub_100020260((v0 + 63), (v0 + 88));
  sub_100031918((v0 + 63));
  v0[107] = *sub_10000BA08(v0 + 88, v0[91]);
  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = sub_1005D7368;

  return sub_10050886C((v0 + 2));
}

uint64_t sub_1005D7368()
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v7 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v4 = *(v2 + 856);
    v5 = sub_1005D7914;
  }

  else
  {
    v5 = sub_1005D7484;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005D7484()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 880);
  sub_10000BB78((v0 + 704));
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 312);
  v53 = *(v0 + 304);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = v2[6];
  *&v1[v9] = *(v0 + 72);
  v10 = enum case for DIPBackoffStrategy.exponential(_:);
  v11 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = v4;
  *(v1 + 1) = v5;
  v1[v2[7]] = 0;
  v1[v2[8]] = 0;
  v1[v2[9]] = 1;
  v12 = &v1[v2[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  if (v3)
  {
    if (v7)
    {
    }

    v13 = *(v0 + 808);
    v14 = *(v0 + 800);
    v15 = *(v0 + 784);
    sub_1000F2758(v0 + 16);
    URL.init(string:)();

    if ((*(v13 + 48))(v15, 1, v14) == 1)
    {
      v16 = *(v0 + 768);
      sub_10000BE18(*(v0 + 784), &unk_100844540, &unk_1006BFBC0);
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 848);
      v21 = *(v0 + 768);
      v22 = *(v0 + 752);
      v23 = *(v0 + 744);
      if (v19)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = "EnvironmentManager: topeka server resourcesBaseURL url is not a valid url";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v17, v18, v25, v24, 2u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v26 = (v0 + 784);
  }

  else
  {
    if (v6)
    {
    }

    v27 = *(v0 + 808);
    v28 = *(v0 + 800);
    v29 = *(v0 + 792);
    sub_1000F2758(v0 + 16);
    URL.init(string:)();

    if ((*(v27 + 48))(v29, 1, v28) == 1)
    {
      v30 = *(v0 + 776);
      sub_10000BE18(*(v0 + 792), &unk_100844540, &unk_1006BFBC0);
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      v31 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 848);
      v21 = *(v0 + 776);
      v22 = *(v0 + 752);
      v23 = *(v0 + 744);
      if (v31)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = "EnvironmentManager: topeka server getWorkflow url is not a valid url";
        goto LABEL_13;
      }

LABEL_14:

      (*(v22 + 8))(v21, v23);
      sub_1005D7B6C(v20, type metadata accessor for DIPHTTPSession.Configuration);
      v32 = 0;
      goto LABEL_17;
    }

    v26 = (v0 + 792);
  }

  v33 = *(v0 + 848);
  v34 = *(v0 + 840);
  v35 = *(v0 + 824);
  v36 = *(v0 + 816);
  v37 = *(v0 + 808);
  v38 = *(v0 + 800);
  (*(v37 + 32))(v35, *v26, v38);
  (*(v37 + 16))(v36, v35, v38);
  sub_1002BEB48(v33, v34);
  v39 = type metadata accessor for DIPTopekaStaticWebService();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v32 = swift_allocObject();
  sub_1005CF7F4(v36, v34);
  (*(v37 + 8))(v35, v38);
  sub_1005D7B6C(v33, type metadata accessor for DIPHTTPSession.Configuration);
LABEL_17:
  v42 = *(v0 + 848);
  v43 = *(v0 + 840);
  v44 = *(v0 + 824);
  v45 = *(v0 + 816);
  v46 = *(v0 + 792);
  v47 = *(v0 + 784);
  v48 = *(v0 + 776);
  v49 = *(v0 + 768);
  v50 = *(v0 + 760);

  v51 = *(v0 + 8);

  return v51(v32);
}

uint64_t sub_1005D7914()
{
  v1 = *(v0 + 872);

  return _swift_task_switch(sub_1005D797C, 0, 0);
}

uint64_t sub_1005D797C()
{
  v1 = v0[95];
  sub_10000BB78(v0 + 88);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "unable to fetch the baseURL from the config", v8, 2u);
  }

  (*(v6 + 8))(v5, v7);
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[96];
  v17 = v0[95];

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1005D7AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B038, &unk_1006D9160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D7B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005D7BD0(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v7 = *i;

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    v26 = *a2;
    *a2 = 0x8000000000000000;
    v12 = sub_10003ADCC(v8, v7);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_100165FC0(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_10003ADCC(v8, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v20 = v26;
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v12;
    sub_10016F53C();
    v12 = v25;
    v20 = v26;
    if (v18)
    {
LABEL_3:
      v5 = (v20[7] + 16 * v12);
      v6 = v5[1];
      *v5 = 1702195828;
      v5[1] = 0xE400000000000000;

      goto LABEL_4;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v8;
    v21[1] = v7;
    v22 = (v20[7] + 16 * v12);
    *v22 = 1702195828;
    v22[1] = 0xE400000000000000;
    v23 = v20[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    v20[2] = v24;

LABEL_4:
    *a2 = v20;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1005D7D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v54 = a3;
  v50 = a1;
  v51 = a2;
  v6 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v52 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = v45 - v11;
  v12 = type metadata accessor for DIPBackoffStrategy();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPRetrier();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = *(v56 + 8);
  v23 = *(v7 + 32);
  v47 = v13;
  v24 = *(v13 + 16);
  v49 = v12;
  v24(v16, v56 + v23, v12);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v25 = *(v18 + 32);
  v55 = v5;
  v48 = v17;
  v45[1] = v18 + 32;
  v46 = v25;
  v25(&v5[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_retrier], v21, v17);
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v26 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v26 + 126);
  memcpy(v60, &v26[4], sizeof(v60));
  sub_10000BBC4(v60, v61, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v26 + 126);
  memcpy(v61, v60, 0x1E8uLL);
  if (sub_1000A257C(v61) != 1)
  {
    sub_10000BE18(v60, &qword_100839998, &qword_1006DCAA0);
  }

  v27 = enum case for DIPBackoffStrategy.noBackoff(_:);
  v28 = *(v47 + 104);
  v29 = v49;
  v28(v16, enum case for DIPBackoffStrategy.noBackoff(_:), v49);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v30 = v48;
  v31 = v46;
  v46(&v55[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_redirectRetrier], v21, v48);
  v28(v16, v27, v29);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v32 = v55;
  v31(&v55[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_authRetrier], v21, v30);
  v33 = v54;
  sub_100020260(v54, v59);
  v34 = v56;
  v35 = v53;
  sub_1005FEB1C(v56, v53, type metadata accessor for DIPHTTPSession.Configuration);
  v36 = &v32[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  v37 = v51;
  *v36 = v50;
  *(v36 + 1) = v37;
  sub_100020260(v59, v58);
  v38 = v52;
  sub_1005FEB1C(v35, v52, type metadata accessor for DIPHTTPSession.Configuration);
  v39 = type metadata accessor for DIPHTTPSession(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *&v32[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v58, v38);
  v42 = type metadata accessor for DIPWebService();
  v57.receiver = v32;
  v57.super_class = v42;
  v43 = objc_msgSendSuper2(&v57, "init");
  sub_1005FEB84(v34, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v33);
  sub_1005FEB84(v35, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v59);
  return v43;
}

uint64_t sub_1005D8250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DeviceInformationProvider();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    sub_100020260(*(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v20);
    sub_10000BA08(v20, v20[3]);
    a1 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
    v12 = v13;
    sub_10000BB78(v20);
  }

  DeviceInformationProvider.init()();
  v14 = DeviceInformationProvider.uniqueDeviceID.getter();
  v16 = v15;
  (*(v8 + 8))(v11, v7);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v17 = xmmword_100882478;

  *a3 = a1;
  a3[1] = v12;
  a3[2] = v14;
  a3[3] = v16;
  a3[4] = v17;
  a3[5] = result;
  return result;
}

uint64_t sub_1005D8408(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 632) = v5;
  *(v6 + 857) = a5;
  *(v6 + 624) = a4;
  *(v6 + 856) = a3;
  *(v6 + 616) = a2;
  *(v6 + 608) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 640) = v7;
  v8 = *(v7 - 8);
  *(v6 + 648) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 656) = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v6 + 664) = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  *(v6 + 672) = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  v13 = type metadata accessor for DIPSignpost.Config();
  *(v6 + 696) = v13;
  v14 = *(v13 - 8);
  *(v6 + 704) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  v16 = type metadata accessor for DIPSignpost();
  *(v6 + 728) = v16;
  v17 = *(v16 - 8);
  *(v6 + 736) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();

  return _swift_task_switch(sub_1005D8660, 0, 0);
}

uint64_t sub_1005D8660()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 720);
  v3 = *(v0 + 856);
  static DaemonSignposts.workflowRecommendationRequest.getter();
  DIPSignpost.init(_:)();
  if (!v3)
  {
    v5 = 0x726F772F312F312FLL;

    goto LABEL_5;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    v5 = 0x726F772F312F312FLL;
LABEL_5:
    v6 = 0xED0000776F6C666BLL;
    goto LABEL_7;
  }

  v6 = 0x8000000100725760;
  v5 = 0xD000000000000016;
LABEL_7:
  *(v0 + 768) = v6;
  *(v0 + 760) = v5;
  *(v0 + 600) = &_swiftEmptyDictionarySingleton;
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.userAgent.getter();
  v10 = NSUserDefaults.internalString(forKey:)(v9);

  if (v10.value._object)
  {
    sub_10014BC18(v10.value._countAndFlagsBits, v10.value._object, 0x6567412D72657355, 0xEA0000000000746ELL);
  }

  v11 = [v7 standardUserDefaults];
  v12._countAndFlagsBits = static DaemonInternalDefaultsKeys.iqCriteriaEnvOverride.getter();
  v13 = NSUserDefaults.internalString(forKey:)(v12);

  if (v13.value._object)
  {
    sub_10014BC18(v13.value._countAndFlagsBits, v13.value._object, 0x564F2D564E452D58, 0xEE00454449525245);
  }

  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = *(v0 + 672);
  v17 = *(v0 + 624);
  v18 = *(*(v0 + 736) + 56);
  v18(*(v0 + 688), 1, 1, *(v0 + 728));
  sub_10000BBC4(v17, v16, &unk_10084A260, &qword_1006EA050);
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    sub_10000BE18(*(v0 + 672), &unk_10084A260, &qword_1006EA050);
  }

  else
  {
    v19 = *(v0 + 720);
    v20 = *(v0 + 712);
    v21 = v5;
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v46 = *(v0 + 688);
    v47 = *(v0 + 728);
    v24 = v6;
    v25 = *(v0 + 680);
    (*(v22 + 32))(v20, *(v0 + 672), v23);
    (*(v22 + 16))(v19, v20, v23);
    DIPSignpost.init(_:)();
    (*(v22 + 8))(v20, v23);
    v5 = v21;
    v18(v25, 0, 1, v47);
    v26 = v25;
    v6 = v24;
    sub_1005D7AFC(v26, v46);
  }

  v27 = *(v0 + 664);
  v28 = *(v0 + 608);
  *(v0 + 560) = &type metadata for WorkflowRecommendationRequest;
  v29 = swift_allocObject();
  *(v0 + 536) = v29;
  v30 = *v28;
  v31 = *(v28 + 16);
  v32 = *(v28 + 48);
  *(v29 + 48) = *(v28 + 32);
  *(v29 + 64) = v32;
  *(v29 + 16) = v30;
  *(v29 + 32) = v31;
  v33 = *(v28 + 64);
  v34 = *(v28 + 80);
  v35 = *(v28 + 112);
  *(v29 + 112) = *(v28 + 96);
  *(v29 + 128) = v35;
  *(v29 + 80) = v33;
  *(v29 + 96) = v34;
  v36 = *(v28 + 128);
  v37 = *(v28 + 144);
  v38 = *(v28 + 160);
  *(v29 + 192) = *(v28 + 176);
  *(v29 + 160) = v37;
  *(v29 + 176) = v38;
  *(v29 + 144) = v36;
  v39 = *(v0 + 600);
  *(v0 + 776) = v39;
  v40 = type metadata accessor for URL();
  (*(*(v40 - 8) + 56))(v27, 1, 1, v40);
  sub_1000B2030(v28, v0 + 16);
  v41 = swift_task_alloc();
  *(v0 + 784) = v41;
  *v41 = v0;
  v41[1] = sub_1005D8AF8;
  v42 = *(v0 + 664);
  v43 = *(v0 + 632);
  v44 = *(v0 + 857);

  return sub_1005F4FEC(v0 + 536, v5, v6, v39, v44, v42);
}

uint64_t sub_1005D8AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[98];
  v12 = *v4;
  v6[99] = a1;
  v6[100] = a2;
  v6[101] = v3;

  if (v3)
  {
    v8 = v6[97];
    sub_10000BE18(v6[83], &unk_100844540, &unk_1006BFBC0);

    v9 = sub_1005DA43C;
  }

  else
  {
    v10 = v6[97];
    sub_10000BE18(v6[83], &unk_100844540, &unk_1006BFBC0);

    sub_10000BB78(v6 + 67);

    v9 = sub_1005D8C74;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005D8C74()
{
  v1 = (v0 + 200);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 688);
  if (!(*(v2 + 48))(v4, 1, v3))
  {
    v5 = *(v0 + 744);
    (*(v2 + 16))(v5, v4, v3);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v2 + 8))(v5, v3);
  }

  v6 = *(v0 + 808);
  v7 = *(v0 + 800);
  v8 = *(v0 + 792);
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A7CAC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v6)
  {

    v12 = *(v0 + 800);
    v13 = *(v0 + 792);
    (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 640));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v13, v12);
    v49 = *(v0 + 760);
    v50 = *(v0 + 768);
    v56 = *(v0 + 752);
    v58 = *(v0 + 744);
    v54 = *(v0 + 736);
    v55 = *(v0 + 728);
    v59 = *(v0 + 720);
    v60 = *(v0 + 712);
    v57 = *(v0 + 688);
    v61 = *(v0 + 680);
    v62 = *(v0 + 672);
    v63 = *(v0 + 664);
    v51 = *(v0 + 648);
    v52 = *(v0 + 656);
    v53 = *(v0 + 640);
    v47 = *(v0 + 632);
    v48 = *(v0 + 608);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v14 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v15 = *(*(v14 - 8) + 72);
    v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v46 = 2 * v15;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006BFF90;
    v18 = v17 + v16;
    v19 = (v18 + *(v14 + 48));
    v20 = enum case for DIPError.PropertyKey.conversationID(_:);
    v21 = type metadata accessor for DIPError.PropertyKey();
    v22 = *(*(v21 - 8) + 104);
    v22(v18, v20, v21);
    v23 = *(v47 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v24 = *(v47 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v19[3] = &type metadata for String;
    v19[4] = &protocol witness table for String;
    *v19 = v23;
    v19[1] = v24;
    v25 = v18 + v15;
    v26 = v18 + v15 + *(v14 + 48);
    v22(v25, enum case for DIPError.PropertyKey.requestID(_:), v21);
    *(v0 + 568) = *(v48 + 16);
    *(v26 + 24) = &type metadata for String;
    *(v26 + 32) = &protocol witness table for String;
    *v26 = *(v48 + 16);
    v27 = (v18 + v46 + *(v14 + 48));
    v22(v18 + v46, enum case for DIPError.PropertyKey.serverURL(_:), v21);
    v27[3] = &type metadata for String;
    v27[4] = &protocol witness table for String;
    *v27 = v49;
    v27[1] = v50;
    swift_errorRetain();

    sub_10004D7A0(v0 + 568, v0 + 584);
    sub_10003C9C0(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v51 + 104))(v52, enum case for DIPError.Code.internalError(_:), v53);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v54 + 8))(v56, v55);
    sub_10000BE18(v57, &qword_10083B038, &unk_1006D9160);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v30 = *(v0 + 608);

    v32 = *(v0 + 264);
    v31 = *(v0 + 280);
    v33 = *(v0 + 248);
    *(v0 + 384) = v32;
    *(v0 + 400) = v31;
    v34 = *(v0 + 280);
    *(v0 + 416) = *(v0 + 296);
    v35 = *(v0 + 216);
    v36 = *v1;
    v37 = v35;
    *(v0 + 320) = *v1;
    *(v0 + 336) = v35;
    v39 = *(v0 + 232);
    v38 = *(v0 + 248);
    *(v0 + 352) = v39;
    *(v0 + 368) = v38;
    *(v0 + 432) = *(v0 + 312);
    v40 = *v30;
    v41 = v30[1];
    v42 = v30[2];
    v43 = v30[3];
    *(v0 + 504) = v32;
    *(v0 + 520) = v34;
    *(v0 + 472) = v39;
    *(v0 + 488) = v33;
    *(v0 + 440) = v36;
    *(v0 + 456) = v37;
    v44 = swift_task_alloc();
    *(v0 + 816) = v44;
    *v44 = v0;
    v44[1] = sub_1005D93DC;
    v45 = *(v0 + 632);

    return sub_1005F7D7C(v40, v41, v42, v43, v0 + 440, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005D93DC(uint64_t a1)
{
  v2 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = a1;

  return _swift_task_switch(sub_1005D94DC, 0, 0);
}

uint64_t sub_1005D94DC()
{
  if (*(v0 + 824))
  {
    v1 = *(v0 + 640);
    v42 = enum case for DIPError.Code.internalError(_:);
    (*(*(v0 + 648) + 104))(*(v0 + 656));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000AD164(v0 + 320);
    v40 = *(v0 + 800);
    v2 = *(v0 + 792);
    (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 640));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v2, v40);
    v26 = *(v0 + 760);
    v27 = *(v0 + 768);
    v33 = *(v0 + 752);
    v35 = *(v0 + 744);
    v31 = *(v0 + 736);
    v32 = *(v0 + 728);
    v36 = *(v0 + 720);
    v37 = *(v0 + 712);
    v34 = *(v0 + 688);
    v38 = *(v0 + 680);
    v39 = *(v0 + 672);
    v41 = *(v0 + 664);
    v28 = *(v0 + 648);
    v29 = *(v0 + 656);
    v30 = *(v0 + 640);
    v24 = *(v0 + 632);
    v25 = *(v0 + 608);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v4 = *(*(v3 - 8) + 72);
    v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
    v23 = 2 * v4;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1006BFF90;
    v7 = v6 + v5;
    v8 = (v6 + v5 + *(v3 + 48));
    v9 = enum case for DIPError.PropertyKey.conversationID(_:);
    v10 = type metadata accessor for DIPError.PropertyKey();
    v11 = *(*(v10 - 8) + 104);
    v11(v7, v9, v10);
    v12 = *(v24 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v13 = *(v24 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v8[3] = &type metadata for String;
    v8[4] = &protocol witness table for String;
    *v8 = v12;
    v8[1] = v13;
    v14 = v7 + v4;
    v15 = v7 + v4 + *(v3 + 48);
    v11(v14, enum case for DIPError.PropertyKey.requestID(_:), v10);
    *(v0 + 568) = *(v25 + 16);
    *(v15 + 24) = &type metadata for String;
    *(v15 + 32) = &protocol witness table for String;
    *v15 = *(v25 + 16);
    v16 = (v7 + v23 + *(v3 + 48));
    v11(v7 + v23, enum case for DIPError.PropertyKey.serverURL(_:), v10);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = v26;
    v16[1] = v27;
    swift_errorRetain();

    sub_10004D7A0(v0 + 568, v0 + 584);
    sub_10003C9C0(v6);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v28 + 104))(v29, v42, v30);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v31 + 8))(v33, v32);
    sub_10000BE18(v34, &qword_10083B038, &unk_1006D9160);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 616);
    v20 = *(v0 + 432);
    type metadata accessor for LegacySynthesizedWorkflows();
    swift_allocObject();

    v21 = swift_task_alloc();
    *(v0 + 832) = v21;
    *v21 = v0;
    v21[1] = sub_1005D9BDC;
    v22 = *(v0 + 616);

    return sub_1000C6188(v20, v22);
  }
}

uint64_t sub_1005D9BDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 832);
  v6 = *v2;
  *(*v2 + 840) = v1;

  if (v1)
  {
    v7 = sub_1005D9EA8;
  }

  else
  {
    v8 = *(v4 + 768);

    *(v4 + 848) = a1;
    v7 = sub_1005D9D0C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005D9D0C()
{
  v1 = v0[106];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[92];
  v7 = v0[91];
  v15 = v0[90];
  v16 = v0[89];
  v8 = v0[86];
  v17 = v0[85];
  v18 = v0[84];
  v19 = v0[83];
  v20 = v0[82];
  v9.value._countAndFlagsBits = sub_1000CB118();
  DIPSignpost.end(workflowID:isBackground:)(v9, 2);

  v10._countAndFlagsBits = 0x3462386632356263;
  v11._object = 0x8000000100725740;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0xD000000000000019;
  logMilestone(tag:description:)(v10, v11);
  sub_10000B90C(v3, v2);
  sub_1000AD164((v0 + 40));
  (*(v6 + 8))(v4, v7);
  sub_10000BE18(v8, &qword_10083B038, &unk_1006D9160);

  v12 = v0[1];
  v13 = v0[106];

  return v12(v13);
}

uint64_t sub_1005D9EA8()
{
  sub_1000AD164(v0 + 320);
  v1 = *(v0 + 840);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  (*(*(v0 + 648) + 104))(*(v0 + 656), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 640));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v3, v2);
  v23 = *(v0 + 760);
  v24 = *(v0 + 768);
  v30 = *(v0 + 752);
  v32 = *(v0 + 744);
  v28 = *(v0 + 736);
  v29 = *(v0 + 728);
  v33 = *(v0 + 720);
  v34 = *(v0 + 712);
  v31 = *(v0 + 688);
  v35 = *(v0 + 680);
  v36 = *(v0 + 672);
  v37 = *(v0 + 664);
  v25 = *(v0 + 648);
  v26 = *(v0 + 656);
  v27 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 608);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v20 = 2 * v5;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BFF90;
  v8 = v7 + v6;
  v9 = (v8 + *(v4 + 48));
  v10 = enum case for DIPError.PropertyKey.conversationID(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  v12 = *(*(v11 - 8) + 104);
  v12(v8, v10, v11);
  v13 = *(v21 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v14 = *(v21 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  *v9 = v13;
  v9[1] = v14;
  v15 = v8 + v5;
  v16 = v8 + v5 + *(v4 + 48);
  v12(v15, enum case for DIPError.PropertyKey.requestID(_:), v11);
  *(v0 + 568) = *(v22 + 16);
  *(v16 + 24) = &type metadata for String;
  *(v16 + 32) = &protocol witness table for String;
  *v16 = *(v22 + 16);
  v17 = (v8 + v20 + *(v4 + 48));
  v12(v8 + v20, enum case for DIPError.PropertyKey.serverURL(_:), v11);
  v17[3] = &type metadata for String;
  v17[4] = &protocol witness table for String;
  *v17 = v23;
  v17[1] = v24;
  swift_errorRetain();

  sub_10004D7A0(v0 + 568, v0 + 584);
  sub_10003C9C0(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v25 + 104))(v26, enum case for DIPError.Code.internalError(_:), v27);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v28 + 8))(v30, v29);
  sub_10000BE18(v31, &qword_10083B038, &unk_1006D9160);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1005DA43C()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  sub_10000BB78((v0 + 536));
  v38 = enum case for DIPError.Code.internalError(_:);
  (*(v3 + 104))(v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v24 = *(v0 + 760);
  v25 = *(v0 + 768);
  v31 = *(v0 + 752);
  v33 = *(v0 + 744);
  v29 = *(v0 + 736);
  v30 = *(v0 + 728);
  v34 = *(v0 + 720);
  v35 = *(v0 + 712);
  v32 = *(v0 + 688);
  v36 = *(v0 + 680);
  v37 = *(v0 + 672);
  v39 = *(v0 + 664);
  v26 = *(v0 + 648);
  v27 = *(v0 + 656);
  v28 = *(v0 + 640);
  v22 = *(v0 + 632);
  v23 = *(v0 + 608);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v21 = 2 * v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BFF90;
  v9 = v8 + v7;
  v10 = (v8 + v7 + *(v5 + 48));
  v11 = enum case for DIPError.PropertyKey.conversationID(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  v13 = *(*(v12 - 8) + 104);
  v13(v9, v11, v12);
  v14 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v15 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = v14;
  v10[1] = v15;
  v16 = v9 + v6;
  v17 = v9 + v6 + *(v5 + 48);
  v13(v16, enum case for DIPError.PropertyKey.requestID(_:), v12);
  *(v0 + 568) = *(v23 + 16);
  *(v17 + 24) = &type metadata for String;
  *(v17 + 32) = &protocol witness table for String;
  *v17 = *(v23 + 16);
  v18 = (v9 + v21 + *(v5 + 48));
  v13(v9 + v21, enum case for DIPError.PropertyKey.serverURL(_:), v12);
  v18[3] = &type metadata for String;
  v18[4] = &protocol witness table for String;
  *v18 = v24;
  v18[1] = v25;
  swift_errorRetain();

  sub_10004D7A0(v0 + 568, v0 + 584);
  sub_10003C9C0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v26 + 104))(v27, v38, v28);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v29 + 8))(v31, v30);
  sub_10000BE18(v32, &qword_10083B038, &unk_1006D9160);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1005DA9C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 608) = v5;
  *(v6 + 841) = a5;
  *(v6 + 600) = a4;
  *(v6 + 840) = a3;
  *(v6 + 592) = a2;
  *(v6 + 584) = a1;
  v7 = type metadata accessor for WorkflowRecommendationResponse();
  *(v6 + 616) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 624) = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  *(v6 + 632) = v9;
  v10 = *(v9 - 8);
  *(v6 + 640) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 648) = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v6 + 656) = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  *(v6 + 664) = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_10083B038, &unk_1006D9160) - 8) + 64) + 15;
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost.Config();
  *(v6 + 688) = v15;
  v16 = *(v15 - 8);
  *(v6 + 696) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  v18 = type metadata accessor for DIPSignpost();
  *(v6 + 720) = v18;
  v19 = *(v18 - 8);
  *(v6 + 728) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();

  return _swift_task_switch(sub_1005DAC4C, 0, 0);
}

uint64_t sub_1005DAC4C()
{
  v1 = 0xED0000776F6C666BLL;
  v2 = *(v0 + 744);
  v3 = *(v0 + 712);
  v4 = *(v0 + 840);
  static DaemonSignposts.workflowRecommendationRequest.getter();
  DIPSignpost.init(_:)();
  if (v4)
  {
    if (v4 == 1)
    {
      v1 = 0x8000000100725760;
      v5 = 0xD000000000000016;
      goto LABEL_7;
    }

    v6 = 808399663;
  }

  else
  {
    v6 = 825176367;
  }

  v5 = v6 | 0x726F772F00000000;
LABEL_7:
  v55 = v5;
  v56 = v1;
  *(v0 + 760) = v1;
  *(v0 + 752) = v5;
  v7 = *(v0 + 728);
  v52 = *(v0 + 696);
  v53 = *(v0 + 688);
  v48 = *(v0 + 680);
  v49 = *(v0 + 720);
  v50 = *(v0 + 600);
  v51 = *(v0 + 664);
  sub_100007224(&qword_100849720, &qword_1006E9748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFF90;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.userAgent.getter();
  v12 = NSUserDefaults.internalString(forKey:)(v11);

  *(inited + 48) = v12;
  strcpy((inited + 64), "X-ENV-OVERRIDE");
  *(inited + 79) = -18;
  v13 = [v9 standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.iqCriteriaEnvOverride.getter();
  v15 = NSUserDefaults.internalString(forKey:)(v14);

  *(inited + 80) = v15;
  *(inited + 96) = 0xD000000000000024;
  *(inited + 104) = 0x8000000100725600;
  v16 = [v9 standardUserDefaults];
  v17._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDynamicWorkflowResponseStatus.getter();
  v18 = NSUserDefaults.internalString(forKey:)(v17);

  *(inited + 112) = v18;
  v19 = sub_10003EF28(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100849728, &qword_1006E9750);
  swift_arrayDestroy();
  v20 = sub_1005DCAC0(v19);
  *(v0 + 768) = v20;

  v21 = *(v7 + 56);
  v21(v48, 1, 1, v49);
  sub_10000BBC4(v50, v51, &unk_10084A260, &qword_1006EA050);
  if ((*(v52 + 48))(v51, 1, v53) == 1)
  {
    sub_10000BE18(*(v0 + 664), &unk_10084A260, &qword_1006EA050);
  }

  else
  {
    v54 = *(v0 + 720);
    v22 = *(v0 + 712);
    v23 = v20;
    v24 = *(v0 + 704);
    v25 = *(v0 + 696);
    v26 = *(v0 + 688);
    v27 = *(v0 + 680);
    v28 = *(v0 + 672);
    (*(v25 + 32))(v24, *(v0 + 664), v26);
    (*(v25 + 16))(v22, v24, v26);
    DIPSignpost.init(_:)();
    v29 = v24;
    v20 = v23;
    (*(v25 + 8))(v29, v26);
    v21(v28, 0, 1, v54);
    sub_1005D7AFC(v28, v27);
  }

  v30 = *(v0 + 656);
  v31 = *(v0 + 592);
  *(v0 + 544) = &type metadata for WorkflowRecommendationRequest;
  v32 = swift_allocObject();
  *(v0 + 520) = v32;
  v33 = *(v31 + 48);
  v35 = *v31;
  v34 = *(v31 + 16);
  *(v32 + 48) = *(v31 + 32);
  *(v32 + 64) = v33;
  *(v32 + 16) = v35;
  *(v32 + 32) = v34;
  v36 = *(v31 + 112);
  v38 = *(v31 + 64);
  v37 = *(v31 + 80);
  *(v32 + 112) = *(v31 + 96);
  *(v32 + 128) = v36;
  *(v32 + 80) = v38;
  *(v32 + 96) = v37;
  v40 = *(v31 + 144);
  v39 = *(v31 + 160);
  v41 = *(v31 + 128);
  *(v32 + 192) = *(v31 + 176);
  *(v32 + 160) = v40;
  *(v32 + 176) = v39;
  *(v32 + 144) = v41;
  v42 = type metadata accessor for URL();
  (*(*(v42 - 8) + 56))(v30, 1, 1, v42);
  sub_1000B2030(v31, v0 + 16);
  v43 = swift_task_alloc();
  *(v0 + 776) = v43;
  *v43 = v0;
  v43[1] = sub_1005DB148;
  v44 = *(v0 + 656);
  v45 = *(v0 + 608);
  v46 = *(v0 + 841);

  return sub_1005F4FEC(v0 + 520, v55, v56, v20, v46, v44);
}

uint64_t sub_1005DB148(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[97];
  v14 = *v4;
  v6[98] = a1;
  v6[99] = a2;
  v6[100] = v3;

  if (v3)
  {
    v8 = v6[96];
    v9 = v6[95];
    sub_10000BE18(v6[82], &unk_100844540, &unk_1006BFBC0);

    v10 = sub_1005DC524;
  }

  else
  {
    v11 = v6[96];
    v12 = v6[95];
    sub_10000BE18(v6[82], &unk_100844540, &unk_1006BFBC0);

    sub_10000BB78(v6 + 65);

    v10 = sub_1005DB2DC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1005DB2DC()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 680);
  if (!(*(v1 + 48))(v3, 1, v2))
  {
    v4 = *(v0 + 736);
    (*(v1 + 16))(v4, v3, v2);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v1 + 8))(v4, v2);
  }

  v5 = *(v0 + 800);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = type metadata accessor for JSONDecoder();
  *(v0 + 808) = v8;
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FEA80();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  *(v0 + 816) = v5;
  if (v5)
  {
    v11 = *(v0 + 640);

    v12 = *(v11 + 104);
    v13 = *(v0 + 792);
    v14 = *(v0 + 784);
    v12(*(v0 + 648), enum case for DIPError.Code.dynamicWorkflowResponseHeaderMissing(_:), *(v0 + 632));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v14, v13);
    v46 = *(v0 + 752);
    v47 = *(v0 + 760);
    v53 = *(v0 + 744);
    v55 = *(v0 + 736);
    v51 = *(v0 + 728);
    v52 = *(v0 + 720);
    v56 = *(v0 + 712);
    v57 = *(v0 + 704);
    v54 = *(v0 + 680);
    v58 = *(v0 + 672);
    v59 = *(v0 + 664);
    v60 = *(v0 + 656);
    v48 = *(v0 + 640);
    v49 = *(v0 + 648);
    v50 = *(v0 + 632);
    v61 = *(v0 + 624);
    v44 = *(v0 + 608);
    v45 = *(v0 + 592);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v15 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v16 = *(*(v15 - 8) + 72);
    v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v43 = 2 * v16;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006BFF90;
    v19 = v18 + v17;
    v20 = (v19 + *(v15 + 48));
    v21 = enum case for DIPError.PropertyKey.conversationID(_:);
    v22 = type metadata accessor for DIPError.PropertyKey();
    v23 = *(*(v22 - 8) + 104);
    v23(v19, v21, v22);
    v24 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v25 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v20[3] = &type metadata for String;
    v20[4] = &protocol witness table for String;
    *v20 = v24;
    v20[1] = v25;
    v26 = v19 + v16;
    v27 = v19 + v16 + *(v15 + 48);
    v23(v26, enum case for DIPError.PropertyKey.requestID(_:), v22);
    *(v0 + 552) = *(v45 + 16);
    *(v27 + 24) = &type metadata for String;
    *(v27 + 32) = &protocol witness table for String;
    *v27 = *(v45 + 16);
    v28 = (v19 + v43 + *(v15 + 48));
    v23(v19 + v43, enum case for DIPError.PropertyKey.serverURL(_:), v22);
    v28[3] = &type metadata for String;
    v28[4] = &protocol witness table for String;
    *v28 = v46;
    v28[1] = v47;
    swift_errorRetain();

    sub_10004D7A0(v0 + 552, v0 + 568);
    sub_10003C9C0(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v48 + 104))(v49, enum case for DIPError.Code.internalError(_:), v50);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v51 + 8))(v53, v52);
    sub_10000BE18(v54, &qword_10083B038, &unk_1006D9160);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 592);

    v32 = *(v0 + 472);
    *(v0 + 360) = *(v0 + 456);
    *(v0 + 376) = v32;
    v33 = *(v0 + 504);
    *(v0 + 392) = *(v0 + 488);
    *(v0 + 408) = v33;
    v34 = *(v0 + 440);
    *(v0 + 328) = *(v0 + 424);
    *(v0 + 344) = v34;
    v36 = *v31;
    v35 = v31[1];
    v37 = v31[2];
    v38 = v31[3];
    v39 = v31[10];
    v40 = v31[11];
    v41 = swift_task_alloc();
    *(v0 + 824) = v41;
    *v41 = v0;
    v41[1] = sub_1005DBA38;
    v42 = *(v0 + 608);

    return sub_1005F7D7C(v36, v35, v37, v38, v0 + 328, v39, v40);
  }
}

uint64_t sub_1005DBA38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v5 = *v1;
  *(v2 + 832) = a1;

  sub_1000ACC70(v2 + 328);

  return _swift_task_switch(sub_1005DBB40, 0, 0);
}

uint64_t sub_1005DBB40()
{
  if (*(v0 + 832))
  {
    v65 = *(*(v0 + 640) + 104);
    v65(*(v0 + 648), enum case for DIPError.Code.internalError(_:), *(v0 + 632));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v59 = *(v0 + 792);
    v1 = *(v0 + 784);
    v65(*(v0 + 648), enum case for DIPError.Code.dynamicWorkflowResponseHeaderMissing(_:), *(v0 + 632));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v1;
    v3 = v59;
LABEL_5:
    sub_10000B90C(v2, v3);
    v44 = *(v0 + 760);
    v43 = *(v0 + 752);
    v48 = *(v0 + 728);
    v49 = *(v0 + 720);
    v50 = *(v0 + 744);
    v52 = *(v0 + 736);
    v53 = *(v0 + 712);
    v51 = *(v0 + 680);
    v54 = *(v0 + 704);
    v55 = *(v0 + 672);
    v56 = *(v0 + 664);
    v57 = *(v0 + 656);
    v45 = *(v0 + 640);
    v46 = *(v0 + 648);
    v47 = *(v0 + 632);
    v60 = *(v0 + 624);
    v41 = *(v0 + 608);
    v42 = *(v0 + 592);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v17 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v18 = *(*(v17 - 8) + 72);
    v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1006BFF90;
    v21 = v20 + v19;
    v22 = (v20 + v19 + *(v17 + 48));
    v23 = enum case for DIPError.PropertyKey.conversationID(_:);
    v24 = type metadata accessor for DIPError.PropertyKey();
    v25 = *(*(v24 - 8) + 104);
    v25(v21, v23, v24);
    v26 = *(v41 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v27 = *(v41 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v22[3] = &type metadata for String;
    v22[4] = &protocol witness table for String;
    *v22 = v26;
    v22[1] = v27;
    v28 = v21 + v18 + *(v17 + 48);
    v25(v21 + v18, enum case for DIPError.PropertyKey.requestID(_:), v24);
    *(v0 + 552) = *(v42 + 16);
    *(v28 + 24) = &type metadata for String;
    *(v28 + 32) = &protocol witness table for String;
    *v28 = *(v42 + 16);
    v29 = (v21 + 2 * v18 + *(v17 + 48));
    v25(v21 + 2 * v18, enum case for DIPError.PropertyKey.serverURL(_:), v24);
    v29[3] = &type metadata for String;
    v29[4] = &protocol witness table for String;
    *v29 = v43;
    v29[1] = v44;
    swift_errorRetain();

    sub_10004D7A0(v0 + 552, v0 + 568);
    sub_10003C9C0(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v45 + 104))(v46, enum case for DIPError.Code.internalError(_:), v47);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v48 + 8))(v50, v49);
    sub_10000BE18(v51, &qword_10083B038, &unk_1006D9160);

    v30 = *(v0 + 8);
    goto LABEL_6;
  }

  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = *(v0 + 624);
  v9 = *(v0 + 616);
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FEAD4(&qword_100837430, type metadata accessor for WorkflowRecommendationResponse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v12 = *(v0 + 792);
  v13 = *(v0 + 784);
  if (v4)
  {
    v14 = *(v0 + 648);
    v15 = *(v0 + 640);
    v16 = *(v0 + 632);

    (*(v15 + 104))(v14, enum case for DIPError.Code.dynamicWorkflowResponseMismatchedFormat(_:), v16);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v13;
    v3 = v12;
    goto LABEL_5;
  }

  v32 = *(v0 + 760);
  v33 = *(v0 + 744);
  v34 = *(v0 + 728);
  v35 = *(v0 + 720);
  v58 = *(v0 + 736);
  v61 = *(v0 + 712);
  v36 = *(v0 + 680);
  v62 = *(v0 + 704);
  v63 = *(v0 + 672);
  v64 = *(v0 + 664);
  v66 = *(v0 + 656);
  v67 = *(v0 + 648);
  v37 = *(v0 + 624);
  v38 = *(v0 + 584);

  sub_1005FEB1C(v37, v38, type metadata accessor for Workflow);
  DIPSignpost.end(workflowID:isBackground:)(*v38, 2);
  v39._countAndFlagsBits = 0xD000000000000019;
  v40._countAndFlagsBits = 0x3462386632356263;
  v39._object = 0x8000000100725740;
  v40._object = 0xE800000000000000;
  logMilestone(tag:description:)(v40, v39);
  sub_10000B90C(v13, v12);
  sub_1005FEB84(v37, type metadata accessor for WorkflowRecommendationResponse);
  (*(v34 + 8))(v33, v35);
  sub_10000BE18(v36, &qword_10083B038, &unk_1006D9160);

  v30 = *(v0 + 8);
LABEL_6:

  return v30();
}

uint64_t sub_1005DC524()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  sub_10000BB78((v0 + 520));
  v38 = enum case for DIPError.Code.internalError(_:);
  (*(v3 + 104))(v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v24 = *(v0 + 752);
  v25 = *(v0 + 760);
  v31 = *(v0 + 744);
  v33 = *(v0 + 736);
  v29 = *(v0 + 728);
  v30 = *(v0 + 720);
  v34 = *(v0 + 712);
  v35 = *(v0 + 704);
  v32 = *(v0 + 680);
  v36 = *(v0 + 672);
  v37 = *(v0 + 664);
  v39 = *(v0 + 656);
  v26 = *(v0 + 640);
  v27 = *(v0 + 648);
  v28 = *(v0 + 632);
  v40 = *(v0 + 624);
  v22 = *(v0 + 608);
  v23 = *(v0 + 592);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v21 = 2 * v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BFF90;
  v9 = v8 + v7;
  v10 = (v8 + v7 + *(v5 + 48));
  v11 = enum case for DIPError.PropertyKey.conversationID(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  v13 = *(*(v12 - 8) + 104);
  v13(v9, v11, v12);
  v14 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v15 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = v14;
  v10[1] = v15;
  v16 = v9 + v6;
  v17 = v9 + v6 + *(v5 + 48);
  v13(v16, enum case for DIPError.PropertyKey.requestID(_:), v12);
  *(v0 + 552) = *(v23 + 16);
  *(v17 + 24) = &type metadata for String;
  *(v17 + 32) = &protocol witness table for String;
  *v17 = *(v23 + 16);
  v18 = (v9 + v21 + *(v5 + 48));
  v13(v9 + v21, enum case for DIPError.PropertyKey.serverURL(_:), v12);
  v18[3] = &type metadata for String;
  v18[4] = &protocol witness table for String;
  *v18 = v24;
  v18[1] = v25;
  swift_errorRetain();

  sub_10004D7A0(v0 + 552, v0 + 568);
  sub_10003C9C0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v26 + 104))(v27, v38, v28);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v29 + 8))(v31, v30);
  sub_10000BE18(v32, &qword_10083B038, &unk_1006D9160);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1005DCAC0(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(a1 + 56) + 16 * v13);
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v35 = v2;
        v18 = (*(a1 + 48) + 16 * v13);
        v19 = *v18;
        v20 = *(&_swiftEmptyDictionarySingleton + 2);
        v36 = v18[1];
        if (*(&_swiftEmptyDictionarySingleton + 3) <= v20)
        {

          sub_100165FC0(v20 + 1, 1);
        }

        else
        {
        }

        v21 = *(&_swiftEmptyDictionarySingleton + 5);
        Hasher.init(_seed:)();
        v34 = v19;
        String.hash(into:)();
        result = Hasher._finalize()();
        v22 = &_swiftEmptyDictionarySingleton + 64;
        v23 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(&_swiftEmptyDictionarySingleton + (v24 >> 6) + 8)) == 0)
        {
          v27 = 0;
          v28 = (63 - v23) >> 6;
          v2 = v35;
          while (++v25 != v28 || (v27 & 1) == 0)
          {
            v29 = v25 == v28;
            if (v25 == v28)
            {
              v25 = 0;
            }

            v27 |= v29;
            v30 = *&v22[8 * v25];
            if (v30 != -1)
            {
              v26 = __clz(__rbit64(~v30)) + (v25 << 6);
              goto LABEL_27;
            }
          }

          goto LABEL_30;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(&_swiftEmptyDictionarySingleton + (v24 >> 6) + 8))) | v24 & 0x7FFFFFFFFFFFFFC0;
        v2 = v35;
LABEL_27:
        *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        v31 = 16 * v26;
        v32 = (*(&_swiftEmptyDictionarySingleton + 6) + v31);
        *v32 = v34;
        v32[1] = v36;
        v33 = (*(&_swiftEmptyDictionarySingleton + 7) + v31);
        *v33 = v16;
        v33[1] = v15;
        ++*(&_swiftEmptyDictionarySingleton + 2);
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1005DCD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a5;
  v6[37] = v5;
  v6[34] = a3;
  v6[35] = a4;
  v6[32] = a1;
  v6[33] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[38] = v7;
  v8 = *(v7 - 8);
  v6[39] = v8;
  v9 = *(v8 + 64) + 15;
  v6[40] = swift_task_alloc();
  v10 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v11 = type metadata accessor for DIPSignpost();
  v6[42] = v11;
  v12 = *(v11 - 8);
  v6[43] = v12;
  v13 = *(v12 + 64) + 15;
  v6[44] = swift_task_alloc();

  return _swift_task_switch(sub_1005DCE84, 0, 0);
}

uint64_t sub_1005DCE84()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  v10 = *(v0 + 280);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  static DaemonSignposts.topekaNonceRequest.getter();
  DIPSignpost.init(_:)();
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = v10;
  *(v6 + 48) = v4;
  v7 = async function pointer to DIPRetrier.retry<A>(operation:)[1];
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  *v8 = v0;
  v8[1] = sub_1005DCFA8;

  return DIPRetrier.retry<A>(operation:)(v0 + 16, &unk_1006E9730, v6, &type metadata for NonceResponse);
}

uint64_t sub_1005DCFA8()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1005DD1F0;
  }

  else
  {
    v3 = sub_1005DD0BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005DD0BC()
{
  v1 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v1;
  *(v0 + 232) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v2;
  v3 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 256);
  *(v0 + 248) = *(v0 + 128);
  *(v0 + 184) = v3;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v7 + 8))(v5, v6);
  v11 = *(v0 + 136);
  v12 = *(v0 + 152);
  v13 = *(v0 + 184);
  *(v10 + 32) = *(v0 + 168);
  *(v10 + 48) = v13;
  *v10 = v11;
  *(v10 + 16) = v12;
  v14 = *(v0 + 200);
  v15 = *(v0 + 216);
  v16 = *(v0 + 232);
  *(v10 + 112) = *(v0 + 248);
  *(v10 + 80) = v15;
  *(v10 + 96) = v16;
  *(v10 + 64) = v14;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1005DD1F0()
{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v5 = v0[43];
  v6 = v0[40];
  v11 = v0[41];
  v7 = v0[38];
  v8 = v0[39];

  (*(v8 + 104))(v6, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005DD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[128] = a6;
  v6[127] = a5;
  v6[126] = a4;
  v6[125] = a3;
  v6[124] = a2;
  v6[123] = a1;
  v7 = type metadata accessor for DIPError();
  v6[129] = v7;
  v8 = *(v7 - 8);
  v6[130] = v8;
  v9 = *(v8 + 64) + 15;
  v6[131] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v6[134] = v11;
  v12 = *(v11 - 8);
  v6[135] = v12;
  v13 = *(v12 + 64) + 15;
  v6[136] = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v6[137] = swift_task_alloc();

  return _swift_task_switch(sub_1005DD580, 0, 0);
}

uint64_t sub_1005DD580()
{
  v1 = *(v0 + 1096);
  v29 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v5 + 88);
  v7 = *(v5 + 72);
  *(v0 + 768) = *(v5 + 56);
  *(v0 + 784) = v7;
  *(v0 + 800) = v6;
  *(v0 + 960) = *v5;
  v9 = *(v5 + 16);
  v8 = *(v5 + 32);
  *(v0 + 896) = *(v5 + 48);
  *(v0 + 864) = v9;
  *(v0 + 880) = v8;
  v10 = v4 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation;
  v11 = *(v4 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  *(v0 + 1104) = v11;
  v12 = *(v10 + 8);
  *(v0 + 1112) = v12;
  sub_1000B2140(v5, v0 + 360);

  sub_10004D860(v0 + 960);
  sub_1005D8250(v3, v2, (v0 + 816));
  v13 = *(v0 + 816);
  *(v0 + 1120) = v13;
  v14 = *(v0 + 824);
  *(v0 + 1128) = v14;
  v15 = *(v0 + 832);
  *(v0 + 1136) = v15;
  v16 = *(v0 + 840);
  *(v0 + 1144) = v16;
  v17 = *(v0 + 848);
  *(v0 + 1152) = v17;
  v18 = *(v0 + 856);
  *(v0 + 1160) = v18;
  sub_10000BE18(v0 + 768, &qword_100849710, &qword_1006E9738);
  *(v0 + 256) = v11;
  *(v0 + 264) = v12;
  v19 = *(v0 + 880);
  *(v0 + 272) = *(v0 + 864);
  *(v0 + 288) = v19;
  *(v0 + 304) = *(v0 + 896);
  *(v0 + 312) = v13;
  *(v0 + 320) = v14;
  *(v0 + 328) = v15;
  *(v0 + 336) = v16;
  *(v0 + 344) = v17;
  *(v0 + 352) = v18;
  *(v0 + 928) = &type metadata for NonceRequest;
  v20 = swift_allocObject();
  *(v0 + 904) = v20;
  v21 = *(v0 + 336);
  *(v20 + 80) = *(v0 + 320);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(v0 + 352);
  v22 = *(v0 + 272);
  *(v20 + 16) = *(v0 + 256);
  *(v20 + 32) = v22;
  v23 = *(v0 + 304);
  *(v20 + 48) = *(v0 + 288);
  *(v20 + 64) = v23;
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v1, 1, 1, v24);
  sub_1000B2140(v0 + 256, v0 + 464);
  v25 = swift_task_alloc();
  *(v0 + 1168) = v25;
  *v25 = v0;
  v25[1] = sub_1005DD7E4;
  v26 = *(v0 + 1096);
  v27 = *(v0 + 1000);

  return sub_1005F4FEC(v0 + 904, 0x6E6F6E2F312F312FLL, 0xEA00000000006563, v29, 0, v26);
}

uint64_t sub_1005DD7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[146];
  v10 = *v4;
  v6[147] = a1;
  v6[148] = a2;
  v6[149] = v3;

  sub_10000BE18(v6[137], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v8 = sub_1005DE454;
  }

  else
  {
    sub_10000BB78(v6 + 113);

    v8 = sub_1005DD948;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005DD948()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A780C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v53 = *(v0 + 1176);
    v54 = *(v0 + 1184);
    v7 = *(v0 + 1088);
    v8 = *(v0 + 1080);
    v50 = *(v0 + 1072);
    v9 = *(v0 + 1040);
    v10 = *(v0 + 1032);
    v51 = *(v0 + 1048);
    v52 = *(v0 + 984);

    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v12 = *(*v11 + 72);
    v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006BF520;
    v15 = v14 + v13;
    v16 = (v15 + v11[14]);
    v17 = enum case for DIPError.PropertyKey.serverURL(_:);
    v18 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v18 - 8) + 104))(v15, v17, v18);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = 0x6E6F6E2F312F312FLL;
    v16[1] = 0xEA00000000006563;
    swift_errorRetain();
    sub_10003C9C0(v14);
    swift_setDeallocating();
    sub_10000BE18(v15, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v8 + 104))(v7, enum case for DIPError.Code.internalError(_:), v50);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    v19 = swift_allocError();
    (*(v9 + 32))(v20, v51, v10);

    sub_10000B90C(v53, v54);
    *v52 = v19;
    v21 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
    v22 = sub_100007224(&qword_100849718, &qword_1006E9740);
    (*(*(v22 - 8) + 104))(v52, v21, v22);
    v23 = *(v0 + 1160);
    v24 = *(v0 + 1152);
    v25 = *(v0 + 1136);
    v26 = *(v0 + 1120);
    v27 = *(v0 + 1112);
    v28 = *(v0 + 1096);
    v29 = *(v0 + 1088);
    v30 = *(v0 + 1064);
    v31 = *(v0 + 1056);
    v32 = *(v0 + 1048);
    *(v0 + 568) = *(v0 + 1104);
    *(v0 + 576) = v27;
    v33 = *(v0 + 880);
    *(v0 + 584) = *(v0 + 864);
    *(v0 + 600) = v33;
    *(v0 + 616) = *(v0 + 896);
    *(v0 + 624) = v26;
    *(v0 + 640) = v25;
    *(v0 + 656) = v24;
    *(v0 + 664) = v23;
    sub_1000B2178(v0 + 568);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {

    v36 = *(v0 + 64);
    *(v0 + 200) = *(v0 + 80);
    v37 = *(v0 + 80);
    *(v0 + 216) = *(v0 + 96);
    v38 = *(v0 + 96);
    *(v0 + 232) = *(v0 + 112);
    v39 = *(v0 + 32);
    *(v0 + 136) = *(v0 + 16);
    v40 = *(v0 + 16);
    v41 = *(v0 + 32);
    *(v0 + 152) = v39;
    v42 = *(v0 + 64);
    *(v0 + 168) = *(v0 + 48);
    v43 = *(v0 + 48);
    *(v0 + 184) = v42;
    *(v0 + 672) = v40;
    *(v0 + 688) = v41;
    *(v0 + 736) = v37;
    *(v0 + 752) = v38;
    v45 = *(v0 + 256);
    v44 = *(v0 + 264);
    v46 = *(v0 + 272);
    v47 = *(v0 + 280);
    *(v0 + 248) = *(v0 + 128);
    *(v0 + 704) = v43;
    *(v0 + 720) = v36;
    v48 = swift_task_alloc();
    *(v0 + 1200) = v48;
    *v48 = v0;
    v48[1] = sub_1005DDEB0;
    v49 = *(v0 + 1000);

    return sub_1005F7D7C(v45, v44, v46, v47, v0 + 672, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005DDEB0(uint64_t a1)
{
  v2 = *(*v1 + 1200);
  v4 = *v1;
  *(*v1 + 1208) = a1;

  return _swift_task_switch(sub_1005DDFB0, 0, 0);
}

uint64_t sub_1005DDFB0()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);
  if (*(v0 + 1208))
  {
    v3 = *(v0 + 1088);
    v4 = *(v0 + 1080);
    v40 = *(v0 + 1072);
    v42 = *(v0 + 1032);
    v44 = *(v0 + 984);
    sub_1000AD0A8(v0 + 136);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v6 = *(*v5 + 72);
    v43 = v1;
    v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006BF520;
    v9 = v8 + v7;
    v41 = v2;
    v10 = (v9 + v5[14]);
    v11 = enum case for DIPError.PropertyKey.serverURL(_:);
    v12 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v12 - 8) + 104))(v9, v11, v12);
    v10[3] = &type metadata for String;
    v10[4] = &protocol witness table for String;
    *v10 = 0x6E6F6E2F312F312FLL;
    v10[1] = 0xEA00000000006563;
    swift_errorRetain();
    sub_10003C9C0(v8);
    swift_setDeallocating();
    sub_10000BE18(v9, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v40);
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    v13 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    sub_10000B90C(v41, v43);
    *v44 = v13;
    v14 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
    v15 = sub_100007224(&qword_100849718, &qword_1006E9740);
    (*(*(v15 - 8) + 104))(v44, v14, v15);
  }

  else
  {
    v16 = *(v0 + 984);
    v17._countAndFlagsBits = 0x3063363334336237;
    v18._object = 0x80000001007255E0;
    v17._object = 0xE800000000000000;
    v18._countAndFlagsBits = 0xD000000000000016;
    logMilestone(tag:description:)(v17, v18);
    sub_10000B90C(v2, v1);
    v19 = *(v0 + 136);
    v20 = *(v0 + 152);
    v21 = *(v0 + 184);
    *(v16 + 32) = *(v0 + 168);
    *(v16 + 48) = v21;
    *v16 = v19;
    *(v16 + 16) = v20;
    v22 = *(v0 + 200);
    v23 = *(v0 + 216);
    v24 = *(v0 + 232);
    *(v16 + 112) = *(v0 + 248);
    *(v16 + 80) = v23;
    *(v16 + 96) = v24;
    *(v16 + 64) = v22;
    v25 = enum case for DIPRetrier.RetryResult.success<A>(_:);
    v26 = sub_100007224(&qword_100849718, &qword_1006E9740);
    (*(*(v26 - 8) + 104))(v16, v25, v26);
  }

  v27 = *(v0 + 1160);
  v28 = *(v0 + 1152);
  v29 = *(v0 + 1136);
  v30 = *(v0 + 1120);
  v31 = *(v0 + 1112);
  v32 = *(v0 + 1096);
  v33 = *(v0 + 1088);
  v34 = *(v0 + 1064);
  v35 = *(v0 + 1056);
  v36 = *(v0 + 1048);
  *(v0 + 568) = *(v0 + 1104);
  *(v0 + 576) = v31;
  v37 = *(v0 + 880);
  *(v0 + 584) = *(v0 + 864);
  *(v0 + 600) = v37;
  *(v0 + 616) = *(v0 + 896);
  *(v0 + 624) = v30;
  *(v0 + 640) = v29;
  *(v0 + 656) = v28;
  *(v0 + 664) = v27;
  sub_1000B2178(v0 + 568);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1005DE454()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);
  sub_10000BB78((v0 + 904));
  swift_getErrorValue();
  v5 = *(v0 + 936);
  v6 = *(v0 + 944);
  v7 = *(v0 + 952);
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v4, 1, v3) != 1)
  {
    v8 = *(v0 + 1080);
    v9 = *(v0 + 1072);
    v10 = *(v0 + 1064);
    sub_10000BBC4(*(v0 + 1056), v10, &qword_10083B020, &unk_1006D8ED0);
    v11 = (*(v8 + 88))(v10, v9);
    if (v11 == enum case for DIPError.Code.httpUnauthorized(_:) || v11 == enum case for DIPError.Code.httpAuthKitReprovision(_:) || v11 == enum case for DIPError.Code.httpAuthKitResync(_:))
    {
      v14 = *(v0 + 1192);
      v15 = *(v0 + 984);
      sub_10000BE18(*(v0 + 1056), &qword_10083B020, &unk_1006D8ED0);
      *v15 = v14;
      *(v15 + 8) = 0;
      *(v15 + 16) = 1;
      v16 = enum case for DIPRetrier.RetryResult.retry<A>(_:);
      v17 = sub_100007224(&qword_100849718, &qword_1006E9740);
      (*(*(v17 - 8) + 104))(v15, v16, v17);
      goto LABEL_12;
    }

    (*(*(v0 + 1080) + 8))(*(v0 + 1064), *(v0 + 1072));
  }

  v18 = *(v0 + 1056);
  v19 = *(v0 + 984);
  *v19 = *(v0 + 1192);
  v20 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v21 = sub_100007224(&qword_100849718, &qword_1006E9740);
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
  v22 = *(v0 + 1160);
  v23 = *(v0 + 1152);
  v24 = *(v0 + 1136);
  v25 = *(v0 + 1120);
  v26 = *(v0 + 1112);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 1064);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 1048);
  *(v0 + 568) = *(v0 + 1104);
  *(v0 + 576) = v26;
  v32 = *(v0 + 880);
  *(v0 + 584) = *(v0 + 864);
  *(v0 + 600) = v32;
  *(v0 + 616) = *(v0 + 896);
  *(v0 + 624) = v25;
  *(v0 + 640) = v24;
  *(v0 + 656) = v23;
  *(v0 + 664) = v22;
  sub_1000B2178(v0 + 568);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1005DE730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v7 = *(v6 + 64) + 15;
  v4[36] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[37] = v8;
  v9 = *(v8 - 8);
  v4[38] = v9;
  v10 = *(v9 + 64) + 15;
  v4[39] = swift_task_alloc();
  v11 = *(*(type metadata accessor for IdentityProofingResponse(0) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v12 = *(*(type metadata accessor for IdentityProofingRequest(0) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v14 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v4[45] = v15;
  v16 = *(v15 - 8);
  v4[46] = v16;
  v17 = *(v16 + 64) + 15;
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_1005DE974, 0, 0);
}

uint64_t sub_1005DE974()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[31];
  static DaemonSignposts.identityProofingRequest.getter();
  DIPSignpost.init(_:)();
  v5 = sub_100007224(&qword_100849640, &qword_1006E9670);
  v0[48] = v5;
  v0[29] = v5;
  v6 = sub_100032DBC(v0 + 26);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_task_alloc();
  v0[49] = v8;
  *v8 = v0;
  v8[1] = sub_1005DEAF0;
  v9 = v0[43];
  v10 = v0[33];

  return sub_1005F4FEC((v0 + 26), 0xD000000000000016, 0x8000000100725530, 0, 0, v9);
}

uint64_t sub_1005DEAF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[49];
  v10 = *v4;
  v6[50] = a1;
  v6[51] = a2;
  v6[52] = v3;

  sub_10000BE18(v6[43], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v8 = sub_1005DFD90;
  }

  else
  {
    sub_10000BB78(v6 + 26);

    v8 = sub_1005DEC50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005DEC50()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 240);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 424) = sub_100007224(&unk_10084A210, &qword_1006E9720);
  sub_1000BA30C(&qword_100849708, &unk_10084A210, &qword_1006E9720);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v8 = *(v0 + 280);

    v59 = enum case for DIPError.Code.internalError(_:);
    v10 = *(v0 + 400);
    v9 = *(v0 + 408);
    v11 = *(v0 + 272);
    (*(v8 + 104))(*(v0 + 288));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v10, v9);
    v47 = *(v0 + 384);
    v51 = *(v0 + 368);
    v52 = *(v0 + 360);
    v53 = *(v0 + 376);
    v54 = *(v0 + 352);
    v60 = *(v0 + 336);
    v55 = *(v0 + 344);
    v56 = *(v0 + 328);
    v57 = *(v0 + 320);
    v58 = *(v0 + 312);
    v49 = *(v0 + 280);
    v50 = *(v0 + 288);
    v48 = *(v0 + 272);
    v44 = *(v0 + 264);
    v46 = *(v0 + 248);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v12 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v13 = *(*(v12 - 8) + 72);
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v45 = 2 * v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006BFF90;
    v16 = v15 + v14;
    v17 = (v15 + v14 + *(v12 + 48));
    v18 = enum case for DIPError.PropertyKey.conversationID(_:);
    v19 = type metadata accessor for DIPError.PropertyKey();
    v20 = *(*(v19 - 8) + 104);
    v20(v16, v18, v19);
    v21 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v22 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v17[3] = &type metadata for String;
    v17[4] = &protocol witness table for String;
    *v17 = v21;
    v17[1] = v22;
    v23 = (v16 + v13 + *(v12 + 48));
    v20(v16 + v13, enum case for DIPError.PropertyKey.requestID(_:), v19);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v25 = *(v60 + 16);
    v24 = *(v60 + 24);

    sub_1005FEB84(v60, type metadata accessor for IdentityProofingRequest);
    v23[3] = &type metadata for String;
    v23[4] = &protocol witness table for String;
    *v23 = v25;
    v23[1] = v24;
    v26 = (v16 + v45 + *(v12 + 48));
    v20(v16 + v45, enum case for DIPError.PropertyKey.serverURL(_:), v19);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = 0xD000000000000016;
    v26[1] = 0x8000000100725530;
    sub_10003C9C0(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v49 + 104))(v50, v59, v48);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v51 + 8))(v53, v52);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 384);
    v30 = *(v0 + 328);
    v31 = *(v0 + 336);
    v33 = *(v0 + 240);
    v32 = *(v0 + 248);

    JWSSignedJSON.payload.getter();
    v34 = *v31;
    v35 = v31[1];
    *(v0 + 432) = v35;
    v36 = v31[2];
    v37 = v31[3];
    *(v0 + 440) = v37;

    sub_1005FEB84(v31, type metadata accessor for IdentityProofingRequest);
    JWSSignedJSON.payload.getter();
    v38 = v30[1];
    *(v0 + 16) = *v30;
    *(v0 + 32) = v38;
    v39 = v30[2];
    v40 = v30[3];
    v41 = v30[5];
    *(v0 + 80) = v30[4];
    *(v0 + 96) = v41;
    *(v0 + 48) = v39;
    *(v0 + 64) = v40;
    sub_1000B1478(v0 + 16, v0 + 112);
    sub_1005FEB84(v30, type metadata accessor for IdentityProofingResponse);
    v42 = swift_task_alloc();
    *(v0 + 448) = v42;
    *v42 = v0;
    v42[1] = sub_1005DF3A8;
    v43 = *(v0 + 264);

    return sub_1005F7D7C(v34, v35, v36, v37, v0 + 16, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005DF3A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  v5 = *(*v1 + 432);
  v7 = *v1;
  *(v2 + 456) = a1;

  sub_1000ACC70(v2 + 16);

  return _swift_task_switch(sub_1005DF4F4, 0, 0);
}

uint64_t sub_1005DF4F4()
{
  v74 = v0;
  if (v0[57])
  {
    v1 = v0[53];
    v2 = v0[40];
    v3 = v0[30];
    JWSSignedJSON.payload.getter();
    v5 = *(v2 + 96);
    v4 = *(v2 + 104);

    sub_1005FEB84(v2, type metadata accessor for IdentityProofingResponse);
    if (v4)
    {
      v6 = v0[39];
      defaultLogger()();

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[38];
      v11 = v0[39];
      v12 = v0[37];
      if (v9)
      {
        v13 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v14 = v73;
        *v13 = 136315138;
        v15 = sub_100141FE4(v5, v4, &v73);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v7, v8, "Server runtime error: %s", v13, 0xCu);
        sub_10000BB78(v14);

        (*(v10 + 8))(v11, v12);
      }

      else
      {

        (*(v10 + 8))(v11, v12);
      }
    }

    v62 = v0[57];
    v28 = v0[53];
    v29 = v0[34];
    v69 = v0[30];
    v72 = enum case for DIPError.Code.internalError(_:);
    v66 = *(v0[35] + 104);
    v66(v0[36]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v28 - 8) + 8))(v69, v28);
    v30 = v0[50];
    v63 = v0[51];
    (v66)(v0[36], v72, v0[34]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v30, v63);
    v50 = v0[48];
    v54 = v0[46];
    v55 = v0[45];
    v56 = v0[47];
    v57 = v0[44];
    v58 = v0[43];
    v59 = v0[41];
    v60 = v0[40];
    v64 = v0[39];
    v67 = v0[42];
    v52 = v0[35];
    v53 = v0[36];
    v51 = v0[34];
    v47 = v0[33];
    v49 = v0[31];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v31 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v32 = *(*(v31 - 8) + 72);
    v33 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
    v48 = 2 * v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006BFF90;
    v35 = v34 + v33;
    v36 = (v35 + *(v31 + 48));
    v37 = enum case for DIPError.PropertyKey.conversationID(_:);
    v38 = type metadata accessor for DIPError.PropertyKey();
    v39 = *(*(v38 - 8) + 104);
    v39(v35, v37, v38);
    v40 = *(v47 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v41 = *(v47 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v36[3] = &type metadata for String;
    v36[4] = &protocol witness table for String;
    *v36 = v40;
    v36[1] = v41;
    v42 = (v35 + v32 + *(v31 + 48));
    v39(v35 + v32, enum case for DIPError.PropertyKey.requestID(_:), v38);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v44 = *(v67 + 16);
    v43 = *(v67 + 24);

    sub_1005FEB84(v67, type metadata accessor for IdentityProofingRequest);
    v42[3] = &type metadata for String;
    v42[4] = &protocol witness table for String;
    *v42 = v44;
    v42[1] = v43;
    v45 = (v35 + v48 + *(v31 + 48));
    v39(v35 + v48, enum case for DIPError.PropertyKey.serverURL(_:), v38);
    v45[3] = &type metadata for String;
    v45[4] = &protocol witness table for String;
    *v45 = 0xD000000000000016;
    v45[1] = 0x8000000100725530;
    sub_10003C9C0(v34);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v52 + 104))(v53, v72, v51);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v54 + 8))(v56, v55);

    v27 = v0[1];
  }

  else
  {
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[46];
    v19 = v0[47];
    v21 = v0[44];
    v20 = v0[45];
    v22 = v0[43];
    v61 = v0[42];
    v65 = v0[41];
    v68 = v0[40];
    v70 = v0[39];
    v71 = v0[36];
    v23 = v0[32];
    v24.value._countAndFlagsBits = sub_1000CB118();
    DIPSignpost.end(workflowID:isBackground:)(v24, 2);

    v25._countAndFlagsBits = 0x3566376339346663;
    v26._countAndFlagsBits = 0xD000000000000019;
    v26._object = 0x8000000100725590;
    v25._object = 0xE800000000000000;
    logMilestone(tag:description:)(v25, v26);
    sub_10000B90C(v17, v16);
    (*(v18 + 8))(v19, v20);

    v27 = v0[1];
  }

  return v27();
}

uint64_t sub_1005DFD90()
{
  v1 = v0[52];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  sub_10000BB78(v0 + 26);
  v37 = enum case for DIPError.Code.internalError(_:);
  (*(v3 + 104))(v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v25 = v0[48];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[47];
  v32 = v0[44];
  v33 = v0[43];
  v38 = v0[42];
  v34 = v0[41];
  v35 = v0[40];
  v36 = v0[39];
  v27 = v0[35];
  v28 = v0[36];
  v26 = v0[34];
  v22 = v0[33];
  v24 = v0[31];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v23 = 2 * v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BFF90;
  v9 = v8 + v7;
  v10 = (v8 + v7 + *(v5 + 48));
  v11 = enum case for DIPError.PropertyKey.conversationID(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  v13 = *(*(v12 - 8) + 104);
  v13(v9, v11, v12);
  v14 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v15 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = v14;
  v10[1] = v15;
  v16 = (v9 + v6 + *(v5 + 48));
  v13(v9 + v6, enum case for DIPError.PropertyKey.requestID(_:), v12);
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v18 = *(v38 + 16);
  v17 = *(v38 + 24);

  sub_1005FEB84(v38, type metadata accessor for IdentityProofingRequest);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = v18;
  v16[1] = v17;
  v19 = (v9 + v23 + *(v5 + 48));
  v13(v9 + v23, enum case for DIPError.PropertyKey.serverURL(_:), v12);
  v19[3] = &type metadata for String;
  v19[4] = &protocol witness table for String;
  *v19 = 0xD000000000000016;
  v19[1] = 0x8000000100725530;
  sub_10003C9C0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v27 + 104))(v28, v37, v26);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v29 + 8))(v31, v30);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005E02E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v7 = *(v6 + 64) + 15;
  v4[36] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SharingRegistrationResponse(0) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v9 = *(*(type metadata accessor for SharingRegistrationRequest(0) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v4[41] = v12;
  v13 = *(v12 - 8);
  v4[42] = v13;
  v14 = *(v13 + 64) + 15;
  v4[43] = swift_task_alloc();

  return _swift_task_switch(sub_1005E04BC, 0, 0);
}

uint64_t sub_1005E04BC()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[31];
  static DaemonSignposts.sharingRegistrationRequest.getter();
  DIPSignpost.init(_:)();
  v5 = sub_100007224(&unk_10084A100, &qword_1006E9EA0);
  v0[44] = v5;
  v0[29] = v5;
  v6 = sub_100032DBC(v0 + 26);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_1005E0638;
  v9 = v0[39];
  v10 = v0[33];

  return sub_1005F4FEC((v0 + 26), 0xD000000000000019, 0x8000000100725450, 0, 0, v9);
}

uint64_t sub_1005E0638(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[45];
  v10 = *v4;
  v6[46] = a1;
  v6[47] = a2;
  v6[48] = v3;

  sub_10000BE18(v6[39], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v8 = sub_1005E1730;
  }

  else
  {
    sub_10000BB78(v6 + 26);

    v8 = sub_1005E0798;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005E0798()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 240);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 392) = sub_100007224(&qword_10084A0D0, &qword_1006E9E60);
  sub_1000BA30C(&qword_100849700, &qword_10084A0D0, &qword_1006E9E60);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v8 = *(v0 + 280);

    v57 = enum case for DIPError.Code.internalError(_:);
    v10 = *(v0 + 368);
    v9 = *(v0 + 376);
    v11 = *(v0 + 272);
    (*(v8 + 104))(*(v0 + 288));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v10, v9);
    v47 = *(v0 + 352);
    v51 = *(v0 + 336);
    v52 = *(v0 + 328);
    v53 = *(v0 + 344);
    v54 = *(v0 + 320);
    v55 = *(v0 + 312);
    v58 = *(v0 + 304);
    v56 = *(v0 + 296);
    v49 = *(v0 + 280);
    v50 = *(v0 + 288);
    v48 = *(v0 + 272);
    v44 = *(v0 + 264);
    v46 = *(v0 + 248);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v12 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v13 = *(*(v12 - 8) + 72);
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v45 = 2 * v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006BFF90;
    v16 = v15 + v14;
    v17 = (v16 + *(v12 + 48));
    v18 = enum case for DIPError.PropertyKey.conversationID(_:);
    v19 = type metadata accessor for DIPError.PropertyKey();
    v20 = *(*(v19 - 8) + 104);
    v20(v16, v18, v19);
    v21 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v22 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v17[3] = &type metadata for String;
    v17[4] = &protocol witness table for String;
    *v17 = v21;
    v17[1] = v22;
    v23 = (v16 + v13 + *(v12 + 48));
    v20(v16 + v13, enum case for DIPError.PropertyKey.requestID(_:), v19);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v25 = *(v58 + 16);
    v24 = *(v58 + 24);

    sub_1005FEB84(v58, type metadata accessor for SharingRegistrationRequest);
    v23[3] = &type metadata for String;
    v23[4] = &protocol witness table for String;
    *v23 = v25;
    v23[1] = v24;
    v26 = (v16 + v45 + *(v12 + 48));
    v20(v16 + v45, enum case for DIPError.PropertyKey.serverURL(_:), v19);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = 0xD000000000000019;
    v26[1] = 0x8000000100725450;
    sub_10003C9C0(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v49 + 104))(v50, v57, v48);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v51 + 8))(v53, v52);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 352);
    v30 = *(v0 + 296);
    v31 = *(v0 + 304);
    v33 = *(v0 + 240);
    v32 = *(v0 + 248);

    JWSSignedJSON.payload.getter();
    v34 = *v31;
    v35 = v31[1];
    *(v0 + 400) = v35;
    v36 = v31[2];
    v37 = v31[3];
    *(v0 + 408) = v37;

    sub_1005FEB84(v31, type metadata accessor for SharingRegistrationRequest);
    JWSSignedJSON.payload.getter();
    v38 = v30[1];
    *(v0 + 16) = *v30;
    *(v0 + 32) = v38;
    v39 = v30[2];
    v40 = v30[3];
    v41 = v30[5];
    *(v0 + 80) = v30[4];
    *(v0 + 96) = v41;
    *(v0 + 48) = v39;
    *(v0 + 64) = v40;
    sub_1000B1478(v0 + 16, v0 + 112);
    sub_1005FEB84(v30, type metadata accessor for SharingRegistrationResponse);
    v42 = swift_task_alloc();
    *(v0 + 416) = v42;
    *v42 = v0;
    v42[1] = sub_1005E0EDC;
    v43 = *(v0 + 264);

    return sub_1005F7D7C(v34, v35, v36, v37, v0 + 16, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005E0EDC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 408);
  v5 = *(*v1 + 400);
  v7 = *v1;
  *(v2 + 424) = a1;

  sub_1000ACC70(v2 + 16);

  return _swift_task_switch(sub_1005E1028, 0, 0);
}

uint64_t sub_1005E1028()
{
  if (v0[53])
  {
    v42 = v0[49];
    v1 = v0[34];
    v48 = v0[30];
    v51 = enum case for DIPError.Code.internalError(_:);
    v45 = *(v0[35] + 104);
    v45(v0[36]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v42 - 8) + 8))(v48);
    v2 = v0[46];
    v43 = v0[47];
    (v45)(v0[36], v51, v0[34]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v2, v43);
    v33 = v0[44];
    v37 = v0[42];
    v38 = v0[41];
    v39 = v0[43];
    v40 = v0[40];
    v41 = v0[39];
    v44 = v0[37];
    v46 = v0[38];
    v35 = v0[35];
    v36 = v0[36];
    v34 = v0[34];
    v30 = v0[33];
    v32 = v0[31];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v4 = *(*(v3 - 8) + 72);
    v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
    v31 = 2 * v4;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1006BFF90;
    v7 = v6 + v5;
    v8 = (v7 + *(v3 + 48));
    v9 = enum case for DIPError.PropertyKey.conversationID(_:);
    v10 = type metadata accessor for DIPError.PropertyKey();
    v11 = *(*(v10 - 8) + 104);
    v11(v7, v9, v10);
    v12 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v13 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v8[3] = &type metadata for String;
    v8[4] = &protocol witness table for String;
    *v8 = v12;
    v8[1] = v13;
    v14 = (v7 + v4 + *(v3 + 48));
    v11(v7 + v4, enum case for DIPError.PropertyKey.requestID(_:), v10);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v16 = *(v46 + 16);
    v15 = *(v46 + 24);

    sub_1005FEB84(v46, type metadata accessor for SharingRegistrationRequest);
    v14[3] = &type metadata for String;
    v14[4] = &protocol witness table for String;
    *v14 = v16;
    v14[1] = v15;
    v17 = (v7 + v31 + *(v3 + 48));
    v11(v7 + v31, enum case for DIPError.PropertyKey.serverURL(_:), v10);
    v17[3] = &type metadata for String;
    v17[4] = &protocol witness table for String;
    *v17 = 0xD000000000000019;
    v17[1] = 0x8000000100725450;
    sub_10003C9C0(v6);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v35 + 104))(v36, v51, v34);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v20 = v0[46];
    v19 = v0[47];
    v21 = v0[42];
    v22 = v0[43];
    v24 = v0[40];
    v23 = v0[41];
    v47 = v0[39];
    v49 = v0[38];
    v50 = v0[37];
    v52 = v0[36];
    v25 = v0[32];
    v26.value._countAndFlagsBits = sub_1000CB118();
    DIPSignpost.end(workflowID:isBackground:)(v26, 2);

    v27._countAndFlagsBits = 0x3634363065363139;
    v28._countAndFlagsBits = 0xD000000000000025;
    v28._object = 0x8000000100725500;
    v27._object = 0xE800000000000000;
    logMilestone(tag:description:)(v27, v28);
    sub_10000B90C(v20, v19);
    (*(v21 + 8))(v22, v23);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005E1730()
{
  sub_10000BB78(v0 + 26);
  v32 = v0[48];
  v21 = v0[44];
  v27 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[37];
  v31 = v0[38];
  v23 = v0[35];
  v24 = v0[36];
  v22 = v0[34];
  v18 = v0[33];
  v20 = v0[31];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = 2 * v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFF90;
  v5 = v4 + v3;
  v6 = (v4 + v3 + *(v1 + 48));
  v7 = enum case for DIPError.PropertyKey.conversationID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v5, v7, v8);
  v10 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v11 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  *v6 = v10;
  v6[1] = v11;
  v12 = (v5 + v2 + *(v1 + 48));
  v9();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v13 = *(v31 + 16);
  v14 = *(v31 + 24);

  sub_1005FEB84(v31, type metadata accessor for SharingRegistrationRequest);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v13;
  v12[1] = v14;
  v15 = (v5 + v19 + *(v1 + 48));
  v9();
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = 0xD000000000000019;
  v15[1] = 0x8000000100725450;
  sub_10003C9C0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v23 + 104))(v24, enum case for DIPError.Code.internalError(_:), v22);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v25 + 8))(v27, v26);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005E1BAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 1472) = v3;
  *(v4 + 1640) = a3;
  *(v4 + 1464) = a2;
  *(v4 + 1456) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 1480) = v5;
  v6 = *(v5 - 8);
  *(v4 + 1488) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 1496) = swift_task_alloc();
  v8 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v4 + 1504) = swift_task_alloc();
  v9 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v4 + 1512) = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  *(v4 + 1520) = v10;
  v11 = *(v10 - 8);
  *(v4 + 1528) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 1536) = swift_task_alloc();

  return _swift_task_switch(sub_1005E1D38, 0, 0);
}

uint64_t sub_1005E1D38()
{
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1464);
  static DaemonSignposts.identityPendingActionRequest.getter();
  DIPSignpost.init(_:)();
  if (v4 == 2)
  {
    v6 = "pending actions response";
  }

  else
  {
    v6 = "erver runtime error ";
  }

  v7 = sub_1005FBCE8();
  *(v0 + 1544) = v7;
  v8 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  *(v0 + 1552) = v8;
  *(v0 + 1448) = v8;
  v9 = sub_100032DBC((v0 + 1424));
  (*(*(v8 - 8) + 16))(v9, v5, v8);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = swift_task_alloc();
  *(v0 + 1560) = v11;
  *v11 = v0;
  v11[1] = sub_1005E1EE4;
  v12 = *(v0 + 1504);
  v13 = *(v0 + 1472);

  return sub_1005F4FEC(v0 + 1424, 0xD000000000000014, v6 | 0x8000000000000000, v7, 0, v12);
}

uint64_t sub_1005E1EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *(*v4 + 1560);
  v8 = *(*v4 + 1544);
  v11 = *v4;
  *(v6 + 1568) = a1;
  *(v6 + 1576) = a2;
  *(v6 + 1584) = v3;

  *(v6 + 1640);
  sub_10000BE18(*(v6 + 1504), &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v9 = sub_1005E31A0;
  }

  else
  {
    sub_10000BB78((v6 + 1424));

    v9 = sub_1005E20C8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005E20C8()
{
  v1 = *(v0 + 1584);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1568);
  v4 = *(v0 + 1456);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 1592) = sub_100007224(&qword_10083E4B0, &unk_1006E9710);
  sub_1000BA30C(&qword_1008496F8, &qword_10083E4B0, &unk_1006E9710);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v8 = *(v0 + 1488);

    v85 = enum case for DIPError.Code.internalError(_:);
    v9 = *(v0 + 1576);
    v10 = *(v0 + 1568);
    v11 = *(v0 + 1480);
    (*(v8 + 104))(*(v0 + 1496));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v10, v9);
    v75 = *(v0 + 1552);
    v80 = *(v0 + 1528);
    v81 = *(v0 + 1520);
    v82 = *(v0 + 1536);
    v83 = *(v0 + 1512);
    v84 = *(v0 + 1504);
    v77 = *(v0 + 1488);
    v78 = *(v0 + 1496);
    v72 = *(v0 + 1472);
    v73 = *(v0 + 1464);
    if (*(v0 + 1640) == 2)
    {
      v12 = "pending actions response";
    }

    else
    {
      v12 = "erver runtime error ";
    }

    v76 = v12 | 0x8000000000000000;
    v79 = *(v0 + 1480);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v13 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v14 = *(*(v13 - 8) + 72);
    v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
    v74 = 2 * v14;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BFF90;
    v17 = v16 + v15;
    v18 = v13;
    v71 = v13;
    v19 = (v16 + v15 + *(v13 + 48));
    v20 = enum case for DIPError.PropertyKey.conversationID(_:);
    v21 = type metadata accessor for DIPError.PropertyKey();
    v22 = *(*(v21 - 8) + 104);
    v22(v17, v20, v21);
    v23 = *(v72 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v24 = *(v72 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v19[3] = &type metadata for String;
    v19[4] = &protocol witness table for String;
    *v19 = v23;
    v19[1] = v24;
    v25 = v17 + v14;
    v26 = (v17 + v14 + *(v18 + 48));
    v22(v25, enum case for DIPError.PropertyKey.requestID(_:), v21);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v27 = *(v0 + 912);
    *(v0 + 752) = *(v0 + 896);
    *(v0 + 768) = v27;
    *(v0 + 784) = *(v0 + 928);
    v28 = *(v0 + 848);
    *(v0 + 688) = *(v0 + 832);
    *(v0 + 704) = v28;
    v29 = *(v0 + 880);
    *(v0 + 720) = *(v0 + 864);
    *(v0 + 736) = v29;
    v30 = *(v0 + 816);
    *(v0 + 656) = *(v0 + 800);
    *(v0 + 672) = v30;
    v31 = *(v0 + 672);
    v32 = *(v0 + 680);

    sub_1000AE518(v0 + 656);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = v31;
    v26[1] = v32;
    v33 = (v17 + v74 + *(v71 + 48));
    v22(v17 + v74, enum case for DIPError.PropertyKey.serverURL(_:), v21);
    v33[3] = &type metadata for String;
    v33[4] = &protocol witness table for String;
    *v33 = 0xD000000000000014;
    v33[1] = v76;
    sub_10003C9C0(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v77 + 104))(v78, v85, v79);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v80 + 8))(v82, v81);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = (v0 + 1232);
    v37 = *(v0 + 1456);

    JWSSignedJSON.payload.getter();
    v38 = *(v0 + 288);
    *(v0 + 112) = *(v0 + 272);
    *(v0 + 128) = v38;
    v39 = *(v0 + 320);
    *(v0 + 144) = *(v0 + 304);
    *(v0 + 160) = v39;
    v40 = *(v0 + 224);
    *(v0 + 48) = *(v0 + 208);
    *(v0 + 64) = v40;
    v41 = *(v0 + 256);
    *(v0 + 80) = *(v0 + 240);
    *(v0 + 96) = v41;
    v42 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v42;
    v43 = *(v0 + 152);
    v44 = *(v0 + 160);
    v45 = *(v0 + 168);
    sub_1005FE898(v43, v44, v45);
    sub_1000B1D80(v0 + 16);
    if (v45 == 1)
    {
      v86 = 0;
      v46 = 0;
    }

    else
    {
      sub_1005FE8AC(v43, v44, v45);
      v86 = *&aMagenta[8 * v43];
      v46 = qword_1006E9788[v43];
    }

    *(v0 + 1600) = v46;
    v47 = *(v0 + 1552);
    v48 = *(v0 + 1464);
    v49 = *(v0 + 1456);
    JWSSignedJSON.payload.getter();
    v50 = *(v0 + 1104);
    v51 = *(v0 + 1168);
    *(v0 + 1040) = *(v0 + 1184);
    *(v0 + 1056) = *(v0 + 1200);
    *(v0 + 1072) = *(v0 + 1216);
    v52 = *(v0 + 1136);
    *(v0 + 976) = *(v0 + 1120);
    *(v0 + 992) = v52;
    *(v0 + 1008) = *(v0 + 1152);
    *(v0 + 1024) = v51;
    *(v0 + 944) = *(v0 + 1088);
    *(v0 + 960) = v50;
    v53 = *(v0 + 944);
    v54 = *(v0 + 952);
    *(v0 + 1608) = v54;
    v55 = *(v0 + 960);
    v56 = *(v0 + 968);
    *(v0 + 1616) = v56;

    sub_1000AE518(v0 + 944);
    JWSSignedJSON.payload.getter();
    v57 = *(v0 + 608);
    v58 = *(v0 + 624);
    v59 = *(v0 + 576);
    *(v0 + 432) = *(v0 + 592);
    *(v0 + 448) = v57;
    v60 = *(v0 + 640);
    *(v0 + 464) = v58;
    *(v0 + 480) = v60;
    v62 = *(v0 + 528);
    v61 = *(v0 + 544);
    v63 = *(v0 + 512);
    *(v0 + 368) = v62;
    *(v0 + 384) = v61;
    v64 = *(v0 + 544);
    v66 = *(v0 + 560);
    v65 = *(v0 + 576);
    *(v0 + 400) = v66;
    *(v0 + 416) = v65;
    v67 = *(v0 + 512);
    v68 = *(v0 + 496);
    *(v0 + 336) = v68;
    *(v0 + 352) = v67;
    *(v0 + 1264) = v62;
    *(v0 + 1280) = v64;
    *(v0 + 1296) = v66;
    *(v0 + 1312) = v59;
    *v36 = v68;
    *(v0 + 1248) = v63;
    sub_1000B1478(v0 + 336, v0 + 1328);
    sub_1000B1D80(v0 + 336);
    v69 = swift_task_alloc();
    *(v0 + 1624) = v69;
    *v69 = v0;
    v69[1] = sub_1005E2914;
    v70 = *(v0 + 1472);

    return sub_1005F7D7C(v53, v54, v55, v56, v36, v86, v46);
  }
}

uint64_t sub_1005E2914(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1624);
  v4 = *(*v1 + 1616);
  v5 = *(*v1 + 1608);
  v6 = *(*v1 + 1600);
  v8 = *v1;
  *(v2 + 1632) = a1;

  sub_1000ACC70(v2 + 336);

  return _swift_task_switch(sub_1005E2A7C, 0, 0);
}

uint64_t sub_1005E2A7C()
{
  if (*(v0 + 1632))
  {
    v48 = *(v0 + 1592);
    v1 = *(v0 + 1480);
    v52 = *(v0 + 1456);
    v53 = enum case for DIPError.Code.internalError(_:);
    v2 = *(*(v0 + 1488) + 104);
    v2(*(v0 + 1496));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v48 - 8) + 8))(v52);
    v49 = *(v0 + 1576);
    v3 = *(v0 + 1568);
    (v2)(*(v0 + 1496), v53, *(v0 + 1480));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v3, v49);
    v40 = *(v0 + 1552);
    v45 = *(v0 + 1528);
    v46 = *(v0 + 1520);
    v47 = *(v0 + 1536);
    v50 = *(v0 + 1512);
    v51 = *(v0 + 1504);
    v42 = *(v0 + 1488);
    v43 = *(v0 + 1496);
    v37 = *(v0 + 1472);
    v38 = *(v0 + 1464);
    if (*(v0 + 1640) == 2)
    {
      v4 = "pending actions response";
    }

    else
    {
      v4 = "erver runtime error ";
    }

    v41 = v4 | 0x8000000000000000;
    v44 = *(v0 + 1480);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v6 = *(*(v5 - 8) + 72);
    v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v39 = 2 * v6;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006BFF90;
    v9 = v8 + v7;
    v10 = v5;
    v36 = v5;
    v11 = (v8 + v7 + *(v5 + 48));
    v12 = enum case for DIPError.PropertyKey.conversationID(_:);
    v13 = type metadata accessor for DIPError.PropertyKey();
    v14 = *(*(v13 - 8) + 104);
    v14(v9, v12, v13);
    v15 = *(v37 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v16 = *(v37 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v11[3] = &type metadata for String;
    v11[4] = &protocol witness table for String;
    *v11 = v15;
    v11[1] = v16;
    v17 = v9 + v6;
    v18 = (v9 + v6 + *(v10 + 48));
    v14(v17, enum case for DIPError.PropertyKey.requestID(_:), v13);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v19 = *(v0 + 912);
    *(v0 + 752) = *(v0 + 896);
    *(v0 + 768) = v19;
    *(v0 + 784) = *(v0 + 928);
    v20 = *(v0 + 848);
    *(v0 + 688) = *(v0 + 832);
    *(v0 + 704) = v20;
    v21 = *(v0 + 880);
    *(v0 + 720) = *(v0 + 864);
    *(v0 + 736) = v21;
    v22 = *(v0 + 816);
    *(v0 + 656) = *(v0 + 800);
    *(v0 + 672) = v22;
    v23 = *(v0 + 672);
    v24 = *(v0 + 680);

    sub_1000AE518(v0 + 656);
    v18[3] = &type metadata for String;
    v18[4] = &protocol witness table for String;
    *v18 = v23;
    v18[1] = v24;
    v25 = (v9 + v39 + *(v36 + 48));
    v14(v9 + v39, enum case for DIPError.PropertyKey.serverURL(_:), v13);
    v25[3] = &type metadata for String;
    v25[4] = &protocol witness table for String;
    *v25 = 0xD000000000000014;
    v25[1] = v41;
    sub_10003C9C0(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v42 + 104))(v43, v53, v44);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v45 + 8))(v47, v46);

    v26 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 1576);
    v28 = *(v0 + 1568);
    v29 = *(v0 + 1536);
    v30 = *(v0 + 1528);
    v31 = *(v0 + 1520);
    v32 = *(v0 + 1512);
    v33 = *(v0 + 1504);
    v34 = *(v0 + 1496);
    *(v0 + 1640);

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v28, v27);
    (*(v30 + 8))(v29, v31);

    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_1005E31A0()
{
  sub_10000BB78((v0 + 1424));
  v37 = *(v0 + 1584);
  v27 = *(v0 + 1552);
  v34 = *(v0 + 1536);
  v32 = *(v0 + 1528);
  v33 = *(v0 + 1520);
  v35 = *(v0 + 1512);
  v36 = *(v0 + 1504);
  v29 = *(v0 + 1488);
  v30 = *(v0 + 1496);
  v31 = *(v0 + 1480);
  v24 = *(v0 + 1472);
  v1 = "erver runtime error ";
  v25 = *(v0 + 1464);
  if (*(v0 + 1640) == 2)
  {
    v1 = "pending actions response";
  }

  v28 = v1 | 0x8000000000000000;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v26 = 2 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BFF90;
  v6 = v2;
  v23 = v2;
  v7 = (v5 + v4 + *(v2 + 48));
  v8 = enum case for DIPError.PropertyKey.conversationID(_:);
  v9 = type metadata accessor for DIPError.PropertyKey();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v5 + v4, v8, v9);
  v11 = *(v24 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v12 = *(v24 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  *v7 = v11;
  v7[1] = v12;
  v13 = (v5 + v4 + v3 + *(v6 + 48));
  v10();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v14 = *(v0 + 912);
  *(v0 + 752) = *(v0 + 896);
  *(v0 + 768) = v14;
  *(v0 + 784) = *(v0 + 928);
  v15 = *(v0 + 848);
  *(v0 + 688) = *(v0 + 832);
  *(v0 + 704) = v15;
  v16 = *(v0 + 880);
  *(v0 + 720) = *(v0 + 864);
  *(v0 + 736) = v16;
  v17 = *(v0 + 816);
  *(v0 + 656) = *(v0 + 800);
  *(v0 + 672) = v17;
  v18 = *(v0 + 672);
  v19 = *(v0 + 680);

  sub_1000AE518(v0 + 656);
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v18;
  v13[1] = v19;
  v20 = (v5 + v4 + v26 + *(v23 + 48));
  v10();
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = 0xD000000000000014;
  v20[1] = v28;
  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v29 + 104))(v30, enum case for DIPError.Code.internalError(_:), v31);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v32 + 8))(v34, v33);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1005E364C(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[62] = v3;
  v4 = *(v3 - 8);
  v2[63] = v4;
  v5 = *(v4 + 64) + 15;
  v2[64] = swift_task_alloc();
  v6 = sub_100007224(&qword_1008496E8, &qword_1006E9708);
  v2[65] = v6;
  v7 = *(v6 - 8);
  v2[66] = v7;
  v8 = *(v7 + 64) + 15;
  v2[67] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v2[68] = swift_task_alloc();
  v10 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[69] = swift_task_alloc();
  v11 = type metadata accessor for DIPSignpost();
  v2[70] = v11;
  v12 = *(v11 - 8);
  v2[71] = v12;
  v13 = *(v12 + 64) + 15;
  v2[72] = swift_task_alloc();

  return _swift_task_switch(sub_1005E3834, 0, 0);
}

uint64_t sub_1005E3834()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[60];
  static DaemonSignposts.identityProofingUserConsent.getter();
  DIPSignpost.init(_:)();
  v5 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  v0[73] = v5;
  v0[59] = v5;
  v6 = sub_100032DBC(v0 + 56);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_task_alloc();
  v0[74] = v8;
  *v8 = v0;
  v8[1] = sub_1005E39BC;
  v9 = v0[68];
  v10 = v0[61];

  return sub_1005F4FEC((v0 + 56), 0x6E6F632F302F312FLL, 0xED00002F746E6573, 0, 0, v9);
}

uint64_t sub_1005E39BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = (*v4)[74];
  v9 = *v4;
  v5[75] = a1;
  v5[76] = a2;
  v5[77] = a3;
  v5[78] = v3;

  sub_10000BE18(v5[68], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v7 = sub_1005E4450;
  }

  else
  {
    sub_10000BB78(v5 + 56);
    v7 = sub_1005E3B14;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005E3B14()
{
  v1 = *(v0 + 616);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v12 = *(v0 + 616);
    v70 = *(v0 + 608);
    v13 = *(v0 + 600);
    (*(*(v0 + 504) + 104))(*(v0 + 512), enum case for DIPError.Code.identityProofingUserConsentRequestInvalid(_:), *(v0 + 496));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v13, v70);
    goto LABEL_7;
  }

  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 536);
  v6 = *(v0 + 520);
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000BA30C(&qword_1008496F0, &qword_1008496E8, &qword_1006E9708);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    v10 = *(v0 + 608);
    v11 = *(v0 + 600);

    sub_10000B90C(v11, v10);

LABEL_7:
    v58 = *(v0 + 584);
    v62 = *(v0 + 568);
    v63 = *(v0 + 560);
    v65 = *(v0 + 576);
    v67 = *(v0 + 552);
    v69 = *(v0 + 544);
    v72 = *(v0 + 536);
    v59 = *(v0 + 504);
    v60 = *(v0 + 512);
    v61 = *(v0 + 496);
    v54 = *(v0 + 488);
    v56 = *(v0 + 480);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v28 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v29 = *(*(v28 - 8) + 72);
    v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
    v57 = 2 * v29;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1006BFF90;
    v31 = v55 + v30;
    v32 = (v55 + v30 + *(v28 + 48));
    v33 = enum case for DIPError.PropertyKey.conversationID(_:);
    v34 = type metadata accessor for DIPError.PropertyKey();
    v35 = *(*(v34 - 8) + 104);
    v35(v31, v33, v34);
    v36 = *(v54 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v37 = *(v54 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v32[3] = &type metadata for String;
    v32[4] = &protocol witness table for String;
    *v32 = v36;
    v32[1] = v37;
    v38 = (v31 + v29 + *(v28 + 48));
    v35(v31 + v29, enum case for DIPError.PropertyKey.requestID(_:), v34);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v39 = *(v0 + 424);
    *(v0 + 304) = *(v0 + 408);
    *(v0 + 320) = v39;
    *(v0 + 336) = *(v0 + 440);
    v40 = *(v0 + 360);
    *(v0 + 240) = *(v0 + 344);
    *(v0 + 256) = v40;
    v41 = *(v0 + 392);
    *(v0 + 272) = *(v0 + 376);
    *(v0 + 288) = v41;
    v43 = *(v0 + 256);
    v42 = *(v0 + 264);

    sub_1000F978C(v0 + 240);
    v38[3] = &type metadata for String;
    v38[4] = &protocol witness table for String;
    *v38 = v43;
    v38[1] = v42;
    v44 = v31 + v57 + *(v28 + 48);
    v35(v31 + v57, enum case for DIPError.PropertyKey.serverURL(_:), v34);
    *(v44 + 24) = &type metadata for String;
    *(v44 + 32) = &protocol witness table for String;
    strcpy(v44, "/1/0/consent/");
    *(v44 + 14) = -4864;
    sub_10003C9C0(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v59 + 104))(v60, enum case for DIPError.Code.internalError(_:), v61);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v62 + 8))(v65, v63);

    v45 = *(v0 + 8);
    goto LABEL_8;
  }

  v14 = *(v0 + 536);
  v15 = *(v0 + 520);

  JWSSignedJSON.payload.getter();
  v16 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v16;
  *(v0 + 112) = *(v0 + 224);
  v17 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v17;
  v18 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v18;
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);

  sub_1000F9D58(v0 + 16);
  v71 = *(v0 + 616);
  v68 = *(v0 + 608);
  v21 = *(v0 + 600);
  if (v20)
  {
    v22 = *(v0 + 528);
    v64 = *(v0 + 520);
    v66 = *(v0 + 536);
    v24 = *(v0 + 504);
    v23 = *(v0 + 512);
    v25 = *(v0 + 496);
    _StringGuts.grow(_:)(70);
    v26._countAndFlagsBits = 0xD000000000000044;
    v26._object = 0x8000000100725310;
    String.append(_:)(v26);
    v27._countAndFlagsBits = v19;
    v27._object = v20;
    String.append(_:)(v27);

    (*(v24 + 104))(v23, enum case for DIPError.Code.identityProofingUserConsentServerRuntimeError(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v21, v68);

    (*(v22 + 8))(v66, v64);
    goto LABEL_7;
  }

  v47 = *(v0 + 576);
  v48 = *(v0 + 568);
  v49 = *(v0 + 560);
  v50 = *(v0 + 552);
  v51 = *(v0 + 536);
  v52 = *(v0 + 528);
  v53 = *(v0 + 520);
  v73 = *(v0 + 544);
  v74 = *(v0 + 512);
  DIPSignpost.end(workflowID:isBackground:)(v19, 2);
  sub_10000B90C(v21, v68);

  (*(v52 + 8))(v51, v53);
  (*(v48 + 8))(v47, v49);

  v45 = *(v0 + 8);
LABEL_8:

  return v45();
}

uint64_t sub_1005E4450()
{
  sub_10000BB78((v0 + 448));
  v34 = *(v0 + 624);
  v24 = *(v0 + 584);
  v28 = *(v0 + 568);
  v29 = *(v0 + 560);
  v30 = *(v0 + 576);
  v31 = *(v0 + 552);
  v32 = *(v0 + 544);
  v33 = *(v0 + 536);
  v25 = *(v0 + 504);
  v26 = *(v0 + 512);
  v27 = *(v0 + 496);
  v20 = *(v0 + 488);
  v22 = *(v0 + 480);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v23 = 2 * v2;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006BFF90;
  v4 = v21 + v3;
  v5 = (v21 + v3 + *(v1 + 48));
  v6 = enum case for DIPError.PropertyKey.conversationID(_:);
  v7 = type metadata accessor for DIPError.PropertyKey();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4, v6, v7);
  v9 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v10 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v5[3] = &type metadata for String;
  v5[4] = &protocol witness table for String;
  *v5 = v9;
  v5[1] = v10;
  v11 = (v4 + v2 + *(v1 + 48));
  v8();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v12 = *(v0 + 424);
  *(v0 + 304) = *(v0 + 408);
  *(v0 + 320) = v12;
  *(v0 + 336) = *(v0 + 440);
  v13 = *(v0 + 360);
  *(v0 + 240) = *(v0 + 344);
  *(v0 + 256) = v13;
  v14 = *(v0 + 392);
  *(v0 + 272) = *(v0 + 376);
  *(v0 + 288) = v14;
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);

  sub_1000F978C(v0 + 240);
  v11[3] = &type metadata for String;
  v11[4] = &protocol witness table for String;
  *v11 = v15;
  v11[1] = v16;
  v17 = v4 + v23 + *(v1 + 48);
  v8();
  *(v17 + 24) = &type metadata for String;
  *(v17 + 32) = &protocol witness table for String;
  strcpy(v17, "/1/0/consent/");
  *(v17 + 14) = -4864;
  sub_10003C9C0(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v25 + 104))(v26, enum case for DIPError.Code.internalError(_:), v27);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v28 + 8))(v30, v29);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1005E48D4(uint64_t a1, char a2)
{
  *(v3 + 432) = a2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 336) = v4;
  v5 = *(v4 - 8);
  *(v3 + 344) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 352) = swift_task_alloc();
  v7 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  v8 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  *(v3 + 376) = v9;
  v10 = *(v9 - 8);
  *(v3 + 384) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1005E4A58, 0, 0);
}

uint64_t sub_1005E4A58()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 432);
  v5 = *(v0 + 320);
  static DaemonSignposts.identityPendingActionRequest.getter();
  DIPSignpost.init(_:)();
  if (v4 == 2)
  {
    v6 = "nNotificationRequest";
  }

  else
  {
    v6 = "config-overrides";
  }

  v7 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  *(v0 + 400) = v7;
  *(v0 + 312) = v7;
  v8 = sub_100032DBC((v0 + 288));
  (*(*(v7 - 8) + 16))(v8, v5, v7);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = swift_task_alloc();
  *(v0 + 408) = v10;
  *v10 = v0;
  v10[1] = sub_1005E4BF4;
  v11 = *(v0 + 360);
  v12 = *(v0 + 328);

  return sub_1005F4FEC(v0 + 288, 0xD000000000000018, v6 | 0x8000000000000000, 0, 0, v11);
}

uint64_t sub_1005E4BF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 408);
  v11 = *v4;
  *(v7 + 416) = a3;
  *(v7 + 424) = v3;

  *(v7 + 432);
  sub_10000BE18(*(v7 + 360), &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v9 = sub_1005E53C0;
  }

  else
  {
    sub_10000BB78((v7 + 288));
    sub_10000B90C(a1, a2);
    v9 = sub_1005E4DB4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005E4DB4()
{
  v1 = *(v0 + 416);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = *(v0 + 416);
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);
    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    v8 = *(v0 + 352);
    v7 = *(v0 + 360);
    *(v0 + 432);

    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v4 + 8))(v3, v5);

    v9 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 416);
    (*(*(v0 + 344) + 104))(*(v0 + 352), enum case for DIPError.Code.actionNotificationRequestFailure(_:), *(v0 + 336));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v37 = *(v0 + 400);
    v44 = *(v0 + 392);
    v42 = *(v0 + 384);
    v43 = *(v0 + 376);
    v45 = *(v0 + 368);
    v46 = *(v0 + 360);
    v39 = *(v0 + 344);
    v40 = *(v0 + 352);
    v34 = *(v0 + 328);
    v36 = *(v0 + 320);
    if (*(v0 + 432) == 2)
    {
      v11 = "nNotificationRequest";
    }

    else
    {
      v11 = "config-overrides";
    }

    v38 = v11 | 0x8000000000000000;
    v41 = *(v0 + 336);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v12 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v13 = *(*(v12 - 8) + 72);
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v35 = 2 * v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006BFF90;
    v16 = v15 + v14;
    v17 = v12;
    v33 = v12;
    v18 = (v15 + v14 + *(v12 + 48));
    v19 = enum case for DIPError.PropertyKey.conversationID(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    v21 = *(*(v20 - 8) + 104);
    v21(v16, v19, v20);
    v22 = *(v34 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v23 = *(v34 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v18[3] = &type metadata for String;
    v18[4] = &protocol witness table for String;
    *v18 = v22;
    v18[1] = v23;
    v24 = (v16 + v13 + *(v17 + 48));
    v21(v16 + v13, enum case for DIPError.PropertyKey.requestID(_:), v20);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v25 = *(v0 + 168);
    v26 = *(v0 + 232);
    v27 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v27;
    *(v0 + 144) = *(v0 + 280);
    v28 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v28;
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v26;
    *(v0 + 16) = *(v0 + 152);
    *(v0 + 32) = v25;
    v30 = *(v0 + 32);
    v29 = *(v0 + 40);

    sub_1000AE6AC(v0 + 16);
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = v30;
    v24[1] = v29;
    v31 = (v16 + v35 + *(v33 + 48));
    v21(v16 + v35, enum case for DIPError.PropertyKey.serverURL(_:), v20);
    v31[3] = &type metadata for String;
    v31[4] = &protocol witness table for String;
    *v31 = 0xD000000000000018;
    v31[1] = v38;
    sub_10003C9C0(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v39 + 104))(v40, enum case for DIPError.Code.internalError(_:), v41);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v42 + 8))(v44, v43);

    v9 = *(v0 + 8);
  }

  return v9();
}