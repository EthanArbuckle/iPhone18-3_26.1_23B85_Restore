unint64_t sub_1002142A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004D5DE0);
    v3 = sub_100399828();
    v4 = a1 + 32;

    while (1)
    {
      sub_1002144BC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1001EC1DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10021243C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002143B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004D7E70);
    v3 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1001EC1DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002144BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004D5DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10021452C()
{
  sub_100397668();
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v0 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v1 = v0;
  v2 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v3 = sub_1003995A8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v2, "Telemetry log, report cadence: %ld.", v4, 0xCu);
  }

  v5 = [objc_opt_self() processInfo];
  v6 = [v5 isRunningTests];

  if ((v6 & 1) == 0)
  {
    v7 = objc_opt_self();
    v8 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    strcpy((inited + 32), "ReportInterval");
    *(inited + 47) = -18;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v1];
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &qword_1004D5A28);
    sub_100004218(0, &qword_1004D5DC0);
    isa = sub_100398E48().super.isa;

    [v7 sendEvent:v8 customPayload:isa];
  }
}

void sub_100214D58()
{
  v0 = APLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 138543362;
    v2 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Unexpected event type: %{public}@", &v1, 0xCu);
  }
}

void sub_1002159E4()
{
  v0 = APLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 138543362;
    v2 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Unexpected event type: %{public}@", &v1, 0xCu);
  }
}

void sub_100216AC0(id a1)
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&off_100491ED8 forKey:@"U18"];
  [v3 setObject:&off_100491EF0 forKey:@"18-24"];
  [v3 setObject:&off_100491F08 forKey:@"25-34"];
  [v3 setObject:&off_100491F20 forKey:@"35-44"];
  [v3 setObject:&off_100491F38 forKey:@"45-54"];
  [v3 setObject:&off_100491F50 forKey:@"55-64"];
  [v3 setObject:&off_100491F68 forKey:@"O64"];
  v1 = [v3 copy];
  v2 = qword_1004DF5D0;
  qword_1004DF5D0 = v1;
}

void sub_100216BC0(id a1)
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&off_100491F80 forKey:@"f"];
  [v3 setObject:&off_100491F98 forKey:@"m"];
  [v3 setObject:&off_100491FB0 forKey:@"s"];
  [v3 setObject:&off_100491FC8 forKey:@"d"];
  v1 = [v3 copy];
  v2 = qword_1004DF5D8;
  qword_1004DF5D8 = v1;
}

void sub_100216CD4(id a1, NSDictionary *a2)
{
  qword_1004DF5F0 = [(NSDictionary *)a2 copy];

  _objc_release_x1();
}

void sub_10021772C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.ap.datasource", v3);
  v2 = qword_1004DF600;
  qword_1004DF600 = v1;
}

void sub_100217A18(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  dispatch_semaphore_signal(v7);
  (*(*(a1 + 40) + 16))();
}

id sub_100218D1C(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"'%@' is not a valid date. Date must be in 'yyyy-MM-dd HH:mm:ss format.", a2];
  v6 = NSLocalizedDescriptionKey;
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5201 userInfo:v3];

  return v4;
}

void sub_100218E10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v3 error];
      v8 = [v7 code];
      v9 = [v3 error];
      v10 = [v9 localizedDescription];
      v13 = 138543874;
      v14 = v6;
      v15 = 2048;
      v16 = v8;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ stream failed with error %ld: %{public}@", &v13, 0x20u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v3 error];
    (*(v11 + 16))(v11, 0, 0, v12);
  }
}

void sub_100218F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    if (qword_1004DF618 != -1)
    {
      sub_100393918();
    }

    v4 = qword_1004DF610;
    [v3 timestamp];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v6 = [v4 stringFromDate:v5];

    v7 = *(a1 + 32);
    v8 = [v3 eventBody];
    v11[0] = @"timestamp";
    [v3 timestamp];
    v9 = [NSNumber numberWithDouble:?];
    v11[1] = @"date";
    v12[0] = v9;
    v12[1] = v6;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    (*(v7 + 16))(v7, v8, v10, 0);
  }
}

void sub_1002190F8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1004DF610;
  qword_1004DF610 = v1;

  v3 = qword_1004DF610;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

void sub_100219594(uint64_t a1)
{
  v2 = [*(a1 + 32) stream];

  if (!v2)
  {
    v3 = [*(a1 + 32) _biomeStream];
    [*(a1 + 32) setStream:v3];
  }
}

uint64_t sub_100219614(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 eventBody];
  v13 = @"timestamp";
  [v5 timestamp];
  v8 = v7;

  v9 = [NSNumber numberWithDouble:v8];
  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = (*(v4 + 16))(v4, v6, v10, a3);

  return v11;
}

void sub_100219970(id a1)
{
  qword_1004DF628 = objc_alloc_init(APDataAdaptorRepository);

  _objc_release_x1();
}

void sub_10021A604()
{
  v0 = APLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 138543362;
    v2 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Unexpected event type: %{public}@", &v1, 0xCu);
  }
}

void sub_10021A8CC(id a1)
{
  v4[0] = @"IPHONE";
  v4[1] = @"IPAD";
  v4[2] = @"IPOD";
  v4[3] = @"MAC";
  v1 = [NSArray arrayWithObjects:v4 count:4];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1004DF640;
  qword_1004DF640 = v2;
}

void sub_10021C734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021C754(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v18 = 138412290;
      v19 = v10;
    }

    if (*(a1 + 48))
    {
      v11 = v7;
      **(a1 + 48) = v7;
    }
  }

  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 32) adaptorIdentifier];
    v14 = v13;
    v15 = *(a1 + 48);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v16 = @"1";
    }

    else
    {
      v16 = @"0";
    }

    if (v15)
    {
      v17 = *v15;
    }

    else
    {
      v17 = @"(unknown)";
    }

    v18 = 138543874;
    v19 = v13;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@ returned %{public}@ with error %{public}@", &v18, 0x20u);
  }
}

id opTokens()
{
  if (qword_1004DF668 != -1)
  {
    sub_100393954();
  }

  v1 = qword_1004DF660;

  return v1;
}

void sub_10021D854(id a1)
{
  v1 = qword_1004DF660;
  qword_1004DF660 = &off_100493DF8;
}

const __CFString *policyStateToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"invalid policy state";
  }

  else
  {
    return *(&off_100479350 + a1);
  }
}

void sub_10021FDD8(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = +[APPCPolicyFormatDaemon adPolicies];
  v3 = qword_1004DF678;
  qword_1004DF678 = v2;

  objc_autoreleasePoolPop(v1);
}

void sub_100220A24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v124 = a1;
  v3 = [*(a1 + 32) policySettings];
  v4 = [v3 alias];
  v5 = [v3 expressions];
  v6 = [v3 policy];
  v7 = [v3 dataFetchedFromServer];
  v120 = v2;
  if (+[APSystemInternal isAppleInternalInstall])
  {
    obj = v7;
    v117 = v3;
    v8 = [NSUserDefaults alloc];
    v9 = [v8 initWithSuiteName:APDefaultsBundleID];
    v10 = [v9 dictionaryRepresentation];
    v11 = [v10 allKeys];
    v12 = [v11 containsObject:@"AdPolicyPayload"];

    if (v12)
    {
      v13 = APLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v146 = objc_opt_class();
        v14 = v146;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{private}@] Ad Policy Payload is being overridden via defaults.", buf, 0xCu);
      }

      v15 = v6;

      v16 = [v9 stringForKey:@"AdPolicyPayload"];
      v17 = [v16 dataUsingEncoding:4];
      v144 = 0;
      v18 = [NSJSONSerialization JSONObjectWithData:v17 options:0 error:&v144];
      v19 = v144;
      if (v19)
      {
        v20 = APLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          *buf = 138478083;
          v146 = v21;
          v147 = 2114;
          v148 = v19;
          v121 = v5;
          v22 = v4;
          v23 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{private}@] There was an error with the overridden policy payload: %{public}@.", buf, 0x16u);

          v4 = v22;
          v5 = v121;
        }
      }

      else
      {
        [v18 objectForKey:@"policy"];
        v25 = v20 = v4;

        v26 = [v18 objectForKey:@"expressions"];
        v27 = v5;
        v5 = v26;

        [v18 objectForKey:@"alias"];
        v4 = v15 = v25;
      }

      v6 = v15;
    }

    v24 = v12 ^ 1;

    v2 = v120;
    v3 = v117;
    v7 = obj;
  }

  else
  {
    v24 = 1;
  }

  v123 = objc_alloc_init(NSDictionary);
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [*(v124 + 32) aliasTransformedPolicies:v6 alias:v4];

          v123 = v28;
        }
      }
    }
  }

  v29 = APLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = objc_opt_class();
    *buf = 138478083;
    v146 = v30;
    v147 = 2114;
    v148 = v5;
    v31 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{private}@] Ad Policy expressions: %{public}@", buf, 0x16u);
  }

  v32 = APLogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = objc_opt_class();
    *buf = 138478083;
    v146 = v33;
    v147 = 2114;
    v148 = v4;
    v34 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[%{private}@] Ad Policy aliases: %{public}@", buf, 0x16u);
  }

  v35 = APLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = objc_opt_class();
    *buf = 138478083;
    v146 = v36;
    v147 = 2114;
    v148 = v123;
    v37 = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[%{private}@] Ad Policy policy: %{public}@", buf, 0x16u);
  }

  v38 = +[APPCPolicyFormatDaemon adPolicies];
  v39 = v38;
  if (((v7 ^ 1) & v24) != 1 || !v38)
  {
    v44 = +[NSMutableArray array];
    v122 = v5;
    v43 = v123;
    v119 = v44;
    v115 = v39;
    if (v123)
    {
      v40 = v44;
      if (([*(v124 + 32) isValidPolicy:v123] & 1) == 0)
      {
        v89 = APLogForCategory();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          v90 = objc_opt_class();
          *buf = 138477827;
          v146 = v90;
          v91 = v90;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "[%{private}@] FILE A RADAR. The policy is not valid", buf, 0xCu);

          v43 = v123;
        }

        goto LABEL_80;
      }

      v111 = [(__CFString *)v123 objectForKey:@"adSessionBefore"];
      v45 = [(__CFString *)v123 objectForKey:@"adSessionAfter"];
      v46 = [(__CFString *)v123 objectForKey:@"adsAllowed"];
      v113 = [(__CFString *)v123 objectForKey:@"spacing"];
      v112 = [(__CFString *)v123 objectForKey:@"timer"];
      [(__CFString *)v123 objectForKey:@"timerOrSpacing"];
      v114 = v45;
      v126 = v46;
      v110 = v108 = v4;
      v118 = v3;
      v106 = v6;
      if (v110 && [(__CFString *)v5 count])
      {
        v47 = [*(v124 + 32) flattenPolicy:v110 policyType:7];
        v125 = [v47 mutableCopy];
        if ([v47 count])
        {
          v48 = 0;
          v49 = @"identifier";
          v116 = v47;
          do
          {
            v128 = v48;
            v50 = [v47 objectAtIndexedSubscript:{v48, v106, v108}];
            v51 = [v50 objectForKey:@"expression"];

            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            obja = v5;
            v52 = [(__CFString *)obja countByEnumeratingWithState:&v140 objects:v153 count:16];
            if (v52)
            {
              v53 = v52;
              v54 = *v141;
              v127 = v51;
              do
              {
                for (i = 0; i != v53; i = i + 1)
                {
                  if (*v141 != v54)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v56 = *(*(&v140 + 1) + 8 * i);
                  v57 = [v56 objectForKey:v49];
                  if ([v51 isEqualToString:v57])
                  {
                    v58 = [v56 objectForKey:@"expression"];
                    v59 = [v56 objectForKey:@"data"];
                    [v125 objectAtIndexedSubscript:v128];
                    v61 = v60 = v49;
                    [v61 setObject:v58 forKey:@"targetingExpression"];

                    v62 = [v125 objectAtIndexedSubscript:v128];
                    [v62 setObject:v59 forKey:@"dataAdapters"];

                    v49 = v60;
                    v51 = v127;

                    v46 = v126;
                  }
                }

                v53 = [(__CFString *)obja countByEnumeratingWithState:&v140 objects:v153 count:16];
              }

              while (v53);
            }

            v48 = v128 + 1;
            v47 = v116;
            v5 = v122;
          }

          while (v128 + 1 < [v116 count]);
        }

        v40 = v119;
        [v119 addObjectsFromArray:v47, v106, v108];

        v3 = v118;
        v6 = v106;
        v4 = v108;
        v45 = v114;
      }

      v63 = v111;
      if (v111)
      {
        v64 = [v111 objectForKey:@"timer"];
        v65 = [*(v124 + 32) flattenPolicy:v64 policyType:3];
        [v40 addObjectsFromArray:v65];
        v66 = [v111 objectForKey:@"spacing"];
        v67 = [*(v124 + 32) flattenPolicy:v66 policyType:4];
        [v119 addObjectsFromArray:v67];

        v45 = v114;
        v40 = v119;

        v46 = v126;
      }

      if (v45)
      {
        v68 = [v45 objectForKey:@"timer"];
        v69 = [*(v124 + 32) flattenPolicy:v68 policyType:5];
        [v40 addObjectsFromArray:v69];
        v70 = [v114 objectForKey:@"spacing"];
        v71 = [*(v124 + 32) flattenPolicy:v70 policyType:6];
        [v119 addObjectsFromArray:v71];

        v45 = v114;
        v40 = v119;

        v46 = v126;
      }

      if (v46)
      {
        v72 = [*(v124 + 32) flattenPolicy:v46 policyType:2];
        [v40 addObjectsFromArray:v72];
      }

      if (v113)
      {
        v73 = [*(v124 + 32) flattenPolicy:v113 policyType:1];
        [v40 addObjectsFromArray:v73];
      }

      if (v112)
      {
        v74 = [*(v124 + 32) flattenPolicy:v112 policyType:0];
        [v40 addObjectsFromArray:v74];
      }

      v75 = [NSMutableArray array:v106];
      v76 = [v4 objectForKey:@"adFormatType"];
      v77 = [v76 objectForKey:@"XL-ad"];

      if (v77)
      {
        v78 = [v4 objectForKey:@"adFormatType"];
        v79 = [v78 objectForKey:@"XL-ad"];

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        objb = v119;
        v80 = [objb countByEnumeratingWithState:&v136 objects:v152 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = *v137;
          do
          {
            for (j = 0; j != v81; j = j + 1)
            {
              if (*v137 != v82)
              {
                objc_enumerationMutation(objb);
              }

              v84 = *(*(&v136 + 1) + 8 * j);
              v85 = [v84 mutableCopy];
              v86 = [v84 objectForKey:@"adFormatType"];
              v87 = [v79 containsObject:v86];

              v88 = [NSNumber numberWithBool:v87];
              [v85 setObject:v88 forKey:@"isXLFormat"];

              [v75 addObject:v85];
            }

            v81 = [objb countByEnumeratingWithState:&v136 objects:v152 count:16];
          }

          while (v81);
        }

        v3 = v118;
        v6 = v107;
        v4 = v109;
        v63 = v111;
        v45 = v114;
        v46 = v126;
      }

      else
      {
        v79 = v75;
        v75 = v119;
      }

      [*(v124 + 32) generatePolicyDataObjects:v75];
    }

    v92 = v6;
    v93 = v4;
    v94 = [*(v124 + 32) adPolicies];
    v95 = [APPCPolicyFormatDaemon storeAdPolicies:v94];

    v89 = +[NSMutableArray array];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v96 = [*(v124 + 32) adPolicies];
    v97 = [v96 countByEnumeratingWithState:&v132 objects:v151 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v133;
      do
      {
        for (k = 0; k != v98; k = k + 1)
        {
          if (*v133 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v101 = [*(*(&v132 + 1) + 8 * k) dictionaryRepresentation];
          [v89 addObject:v101];
        }

        v98 = [v96 countByEnumeratingWithState:&v132 objects:v151 count:16];
      }

      while (v98);
    }

    v102 = APLogForCategory();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v103 = objc_opt_class();
      v104 = @"NOT successfully";
      *buf = 138478339;
      v146 = v103;
      v147 = 2114;
      if (v95)
      {
        v104 = @"successfully";
      }

      v148 = v104;
      v149 = 2114;
      v150 = v89;
      v105 = v103;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "[%{private}@] Ad Policies were %{public}@ stored: %{public}@", buf, 0x20u);
    }

    v4 = v93;
    v6 = v92;
    v43 = v123;
    v39 = v115;
    v40 = v119;
    v2 = v120;
LABEL_80:

    v5 = v122;
    goto LABEL_81;
  }

  v40 = APLogForCategory();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = objc_opt_class();
    *buf = 138477827;
    v146 = v41;
    v42 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{private}@] We've already processed these policies. No need to reprocess.", buf, 0xCu);
  }

  v43 = v123;
LABEL_81:

  objc_autoreleasePoolPop(v2);
}

void sub_1002235AC(void *a1)
{
  v2 = APPerfLogForCategory();
  v3 = v2;
  v4 = a1[9];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 134349056;
    v25 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "Server Delivery Queue overhead", "id=%{public, name=id}lld", buf, 0xCu);
  }

  v5 = a1[4];
  v6 = +[NSDate date];
  [APAttributionAnalytics sendTimedAnalytic:@"attribution.timingQueuing" fieldName:@"tokenClientQueuingTime" startDate:v5 endDate:v6];

  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Signing request for Attribution server", buf, 2u);
  }

  v8 = +[NSDate date];
  v9 = APPerfLogForCategory();
  v10 = v9;
  v11 = a1[9];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 134349056;
    v25 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Payload Signing", "id=%{public, name=id}lld", buf, 0xCu);
  }

  v12 = APPerfLogForCategory();
  v13 = v12;
  v14 = a1[9];
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 134349056;
    v25 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Signing service selector", "id=%{public, name=id}lld", buf, 0xCu);
  }

  v15 = +[APAttributionPayloadSigningSelector selectorWithAttributionConfig];
  v16 = [v15 selectRandomSigningService];
  v17 = APPerfLogForCategory();
  v18 = v17;
  v19 = a1[9];
  v20 = v19 - 1;
  if (v16 == 2)
  {
    if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 134349312;
      v25 = v19;
      v26 = 2050;
      v27 = 2;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v19, "Signing service selector", "id=%{public, name=id}lld service=%{public, name=service}lu", buf, 0x16u);
    }

    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Using Mescal for Signing request for Attribution server", buf, 2u);
    }

    LOBYTE(v23) = 0;
    [APAttributionServer signPayloadWithMescal:a1[5] requestTimestamp:a1[6] interval:a1[9] jsonBody:a1[7] startDate:v8 deliveryStartDate:a1[4] isFallback:v23 completionHandler:a1[8]];
  }

  else
  {
    if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 134349312;
      v25 = v19;
      v26 = 2050;
      v27 = 1;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v19, "Signing service selector", "id=%{public, name=id}lld service=%{public, name=service}lu", buf, 0x16u);
    }

    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Using FPDI for Signing request for Attribution server", buf, 2u);
    }

    [APAttributionServer signPayloadWithFpdi:a1[5] requestTimestamp:a1[6] interval:a1[9] jsonBody:a1[7] startDate:v8 payloadDeliveryStartDate:a1[4] completionHandler:a1[8]];
  }
}

void sub_100224B90(id a1)
{
  v1 = [[APSigningAuthorityPoolManager alloc] initWithName:@"attribution_fpdi" poolSize:1 numberToStash:1];
  v2 = qword_1004DF690;
  qword_1004DF690 = v1;

  if (!qword_1004DF690)
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Signing: Using Mescal for Signing request for Attribution server since FPDI did not work", v8, 2u);
    }
  }

  v4 = [[APUnfairLock alloc] initWithOptions:1];
  v5 = qword_1004DF6A0;
  qword_1004DF6A0 = v4;

  v6 = objc_alloc_init(APSigningQueue);
  v7 = qword_1004DF698;
  qword_1004DF698 = v6;
}

void sub_100224C74(id a1)
{
  v2 = @"fallbackReason";
  v3 = &off_100492088;
  v1 = [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
  AnalyticsSendEvent();
}

void sub_100224D0C(id a1, int64_t a2)
{
  byte_1004DF6B0 = a2 != 18001;
  v3 = APLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 18006)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Signing: signingAuthorityPoolManager setup timed out.", buf, 2u);
    }

    v14 = @"fallbackReason";
    v15 = &off_1004920D0;
    v5 = &v15;
    v6 = &v14;
  }

  else
  {
    if (v4)
    {
      *buf = 134217984;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Signing: signingAuthorityPoolManager setup state: %ld. ", buf, 0xCu);
    }

    if (byte_1004DF6B0 == 1)
    {
      v10 = @"fallbackReason";
      v11 = &off_100492088;
      v5 = &v11;
      v6 = &v10;
    }

    else
    {
      v8 = @"fallbackReason";
      v9 = &off_1004920E8;
      v5 = &v9;
      v6 = &v8;
    }
  }

  v7 = [NSDictionary dictionaryWithObjects:v5 forKeys:v6 count:1, v8, v9, v10, v11];
  AnalyticsSendEvent();

  [APAttributionServer _processSigningQueue:qword_1004DF698 useFpdi:a2 == 18001 signingAuthorityPoolManager:qword_1004DF690];
}

void sub_100225094(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1002250B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 88) == 1 && !+[APAttributionServer hasTriedMescalFallback])
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"failed";
      if (!v6)
      {
        v8 = @"successful";
      }

      *buf = 138412290;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attribution server: %@ fallback from FPDI to Mescal", buf, 0xCu);
    }

    if (v6)
    {
      v9 = &off_100492118;
    }

    else
    {
      v9 = &off_100492100;
    }

    v36 = @"fallbackStatus";
    v37 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    AnalyticsSendEvent();

    [APAttributionServer setHasTriedMescalFallback:1];
  }

  v11 = +[NSDate now];
  if (v6)
  {
    v34 = NSLocalizedDescriptionKey;
    v35 = @"Unable to sign Attribution Request to server";
    v12 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:1002 userInfo:v12];

    (*(*(a1 + 64) + 16))();
    v14 = APPerfLogForCategory();
    v15 = v14;
    v16 = *(a1 + 80);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 134349056;
      v31 = v16;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "Payload Signing", "id=%{public, name=id}lld", buf, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) timeIntervalSinceDate:qword_1004DD9D0];
    v17 = [APAttributionAnalytics findBucketForDaemonRunningTime:?];
    v18 = [*(a1 + 40) storefront];

    if (v18)
    {
      v19 = [*(a1 + 40) storefront];
      v13 = [APAttributionAnalytics storefrontCountryOnly:v19];
    }

    else
    {
      v20 = APLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136642819;
        v31 = "+[APAttributionServer signPayloadWithMescal:requestTimestamp:interval:jsonBody:startDate:deliveryStartDate:isFallback:completionHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{sensitive}s, Storefront is nil", buf, 0xCu);
      }

      CreateDiagnosticReport();
      v13 = @"NONE";
    }

    v21 = APPerfLogForCategory();
    v22 = v21;
    v23 = *(a1 + 80);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 134349314;
      v31 = v23;
      v32 = 2114;
      v33 = v13;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v23, "Payload Signing", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", buf, 0x16u);
    }

    if (*(a1 + 88))
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    v25 = [NSNumber numberWithInteger:v17, @"daemonRunningTime"];
    v29[0] = v25;
    v29[1] = v13;
    v28[1] = @"storeFront";
    v28[2] = @"signingType";
    v26 = [NSNumber numberWithInteger:v24];
    v29[2] = v26;
    v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];

    [APAttributionAnalytics sendTimingAnalytics:@"payloadSigningTime" startDate:*(a1 + 48) endDate:v11 additionalFields:v15];
    [*(a1 + 40) setMescalSignature:v5];
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _serverPost:*(a1 + 40) requestTimestamp:*(a1 + 32) payloadDeliveryStartDate:*(a1 + 56) interval:*(a1 + 80) completionHandler:*(a1 + 64)];
  }
}

id sub_100225664(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = APLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Signing: processing the queue with FPDI.", buf, 2u);
    }

    return [*(a1 + 32) processWithFPDISigningAuthorityPoolManager:*(a1 + 40)];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Signing: processing the queue with Mescal.", v6, 2u);
    }

    return [*(a1 + 32) processWithMescal];
  }
}

void sub_100227A54(id a1)
{
  qword_1004DF6C0 = [[APUnfairLock alloc] initWithOptions:1];

  _objc_release_x1();
}

void sub_10022A4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) timeIntervalSinceDate:qword_1004DD9D0];
  [v3 setDaemonRunningTime:?];
  v4 = [*(a1 + 40) storefront];
  [v3 setStoreFront:v4];

  v5 = APPerfLogForCategory();
  v6 = [*(a1 + 48) intervalId];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      v8 = [*(a1 + 48) intervalId];
      v9 = [*(a1 + 48) attemptId];
      v27 = 134349312;
      v28 = v8;
      v29 = 2050;
      v30 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v7, "Token Request", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", &v27, 0x16u);
    }
  }

  v10 = [*(a1 + 48) attribution];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 error];
    if (v12)
    {
    }

    else
    {
      v13 = [v3 tokenKey];
      v14 = [v13 length];

      if (!v14)
      {
        goto LABEL_17;
      }
    }

    v15 = [*(a1 + 48) attributionCoordinatorLock];
    [v15 lock];

    v16 = [*(a1 + 48) attributionCoordinator];

    if (!v16)
    {
      v17 = +[APIDAccountProvider privateUserAccount];
      v18 = [v17 accountToken];

      if ([v18 isEqualToString:@"-1"])
      {
        [APDiagnosticError diagnosticErrorWithErrorType:500];
      }

      v19 = [*(a1 + 48) attribution];
      v20 = [*(a1 + 48) connection];
      v21 = [v20 bundleID];
      v22 = [v19 coordinatorFor:v21 accountToken:v18];
      [*(a1 + 48) setAttributionCoordinator:v22];
    }

    v23 = [*(a1 + 48) attributionCoordinator];
    v24 = [*(a1 + 48) attributionCoordinatorLock];
    [v24 unlock];

    if (+[APSystemInternal isAppleInternalInstall])
    {
      v25 = APLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Passing V2 token to OnDevice attribution.", &v27, 2u);
      }
    }

    v26 = [v3 tokenKey];
    [v23 setV2TokenKey:v26 intervalId:{objc_msgSend(*(a1 + 48), "intervalId")}];
  }

LABEL_17:
  (*(*(a1 + 56) + 16))();
}

void sub_10022B694(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _continueAttribution:*(a1 + 32) token:v8 cached:a3 requestTimestamp:*(a1 + 40) error:v7 constructionWithCompletionHandler:*(a1 + 48)];
}

void sub_10022C45C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
LABEL_11:
      [*(a1 + 32) sendTokenAnalytics];
      goto LABEL_12;
    }

    if ([v5 code] == 1002)
    {
      [*(a1 + 32) setStatus:@"ErrorServerPacketSigning"];
      v7 = APPerfLogForCategory();
      v8 = [*(a1 + 40) intervalId];
      if ((v8 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_10;
      }

      v9 = v8;
      if (!os_signpost_enabled(v7))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = APPerfLogForCategory();
      v10 = [*(a1 + 40) intervalId];
      if ((v10 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_10;
      }

      v9 = v10;
      if (!os_signpost_enabled(v7))
      {
        goto LABEL_10;
      }
    }

    v11 = [*(a1 + 40) intervalId];
    *v12 = 134349056;
    *&v12[4] = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, v9, "HTTP Request Error", "HTTP Request Error id=%{public, name=id}lld", v12, 0xCu);
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

void sub_10022CD38(id a1)
{
  v4 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v1 = [v4 appOpenDelayInSeconds];
  if (v1)
  {
    v2 = [v4 appOpenDelayInSeconds];
    [v2 doubleValue];
    qword_1004DF6D0 = v3;
  }

  else
  {
    qword_1004DF6D0 = 0;
  }
}

uint64_t sub_10022CDD8()
{
  v0 = APLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "AppOpen timed out.", v2, 2u);
  }

  return CreateDiagnosticReport();
}

void sub_10022CE60(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10022D1A8;
  v27 = sub_10022D1B8;
  v28 = 0;
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Running app open block", buf, 2u);
  }

  v3 = +[APSystemInternal isAppleInternalInstall];
  v4 = +[APIDAccountProvider privateUserAccount];
  v5 = [v4 accountToken];

  if ([v5 isEqualToString:@"-1"])
  {
    [APDiagnosticError diagnosticErrorWithErrorType:500];
  }

  if (v3)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got account token.", buf, 2u);
    }
  }

  v7 = [*(a1 + 32) attributionCoordinatorLock];
  [v7 lock];

  v8 = [*(a1 + 32) attributionCoordinator];
  v9 = v8;
  if (!v8)
  {
    v4 = [*(a1 + 32) attribution];
    v9 = [v4 coordinatorFor:*(a1 + 40) accountToken:v5];
  }

  objc_storeStrong(v24 + 5, v9);
  if (!v8)
  {
  }

  [*(a1 + 32) setAttributionCoordinator:0];
  v10 = [*(a1 + 32) attributionCoordinatorLock];
  [v10 unlock];

  v11 = v24[5];
  if (!v11)
  {
    APSimulateCrash();
    v11 = v24[5];
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 80);
  v15 = *(a1 + 72);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10022D1C0;
  v21[3] = &unk_1004795D8;
  v21[4] = v15;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10022D32C;
  v16[3] = &unk_100479600;
  v19 = &v23;
  v20 = v15;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  [v11 appDidOpenWithBundleId:v12 metadata:v13 useDetailedToken:v14 intervalId:v15 tokenClosure:v21 completionHandler:v16];

  _Block_object_dispose(&v23, 8);
}

uint64_t sub_10022D1A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10022D1C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = APPerfLogForCategory();
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v13 = 134349056;
    v14 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "Token V3 Request", "id=%{public, name=id}lld", &v13, 0xCu);
  }

  v10 = APLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = v6;
      v12 = "OnDevice Attribution token failed. Error: %{public}@";
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    v13 = 138543362;
    v14 = v5;
    v12 = "OnDevice Attribution token is ready: %{public}@.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
  }
}

void sub_10022D32C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = APPerfLogForCategory();
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v11 = 134349056;
    v12 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v6, "OperationCompleted", "id=%{public, name=id}lld", &v11, 0xCu);
  }

  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OnDevice Attribution completed.", &v11, 2u);
  }

  v8 = objc_alloc_init(_TtC11Attribution22ODAttributionAnalytics);
  [(ODAttributionAnalytics *)v8 recordAttributionODEndWithError:v3];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  [*(a1 + 40) resolve];
}

void sub_10022D714(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(APAttributionTokenTracker);
  v3 = qword_1004DF6E0;
  qword_1004DF6E0 = v2;

  objc_autoreleasePoolPop(v1);
}

id generateRandomBytes(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x100004077774924uLL);
  if (SecRandomCopyBytes(kSecRandomDefault, a1, v2))
  {
    free(v2);
    v3 = 0;
  }

  else
  {
    v3 = [NSData dataWithBytesNoCopy:v2 length:a1 freeWhenDone:1];
  }

  return v3;
}

id generatePayload(uint64_t a1, int a2)
{
  if ((a1 - 31) > 0xFFFFFFFFFFFFFFE2)
  {
    v6 = (a1 - 1);
    v7 = arc4random_uniform(8 * v6);
    v8 = v7;
    v15 = v7;
    v9 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (SecRandomCopyBytes(kSecRandomDefault, v6, v9))
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109379;
        *v17 = 0;
        *&v17[4] = 2085;
        *&v17[6] = "NSData *generatePayload(NSUInteger, BOOL)";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error generating token %d %{sensitive}s", buf, 0x12u);
      }

      v4 = 0;
      goto LABEL_16;
    }

    v11 = 8 * v6;
    if (a2)
    {
      if (v11 >= v8)
      {
        v12 = v8 >> 3;
        v13 = v9[v12] | (1 << (v8 & 7));
LABEL_14:
        v9[v12] = v13;
      }
    }

    else if (v11 >= v8)
    {
      v12 = v8 >> 3;
      v13 = v9[v12] & ~(1 << (v8 & 7));
      goto LABEL_14;
    }

    v4 = [NSMutableData dataWithBytes:&v15 length:1];
    [v4 appendBytes:v9 length:v6];
LABEL_16:
    free(v9);
    goto LABEL_17;
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218243;
    *v17 = a1;
    *&v17[8] = 2085;
    *&v17[10] = "NSData *generatePayload(NSUInteger, BOOL)";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Num of bytes out of range %lu %{sensitive}s", buf, 0x16u);
  }

  v4 = 0;
LABEL_17:

  return v4;
}

id createTokenFromKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[NSMutableData alloc] initWithCapacity:{objc_msgSend(v4, "length") + objc_msgSend(v3, "length")}];
  [v5 appendData:v4];

  [v5 appendData:v3];

  return v5;
}

void sub_10022EF24(id a1)
{
  qword_1004DF6F0 = [[APUnfairLock alloc] initWithOptions:0];

  _objc_release_x1();
}

void sub_10022F364(uint64_t a1)
{
  v2 = APPerfLogForCategory();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v11 = 134349056;
    v12 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "Cache GCD overhead", "id=%{public, name=id}lld", &v11, 0xCu);
  }

  v5 = APPerfLogForCategory();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v11 = 134349056;
    v12 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Token Cache Refill", "id=%{public, name=id}lld", &v11, 0xCu);
  }

  [APAttributionToken _refillCacheWithTokensDetail:*(a1 + 48)];
  v8 = APPerfLogForCategory();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = 134349056;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "Token Cache Refill", "id=%{public, name=id}lld", &v11, 0xCu);
  }
}

void sub_10022F968(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [[APAttributionToken alloc] initWithKey:*(a1 + 32) payload:*(a1 + 40) token:*(a1 + 48) signature:v5];
    v7 = +[APAttributionTokenTracker defaultTracker];
    v8 = [(APAttributionToken *)v6 signedAttributionToken];
    v9 = [v7 isTokenUsed:v8];

    if (v9)
    {
      [APAttributionAnalytics sendTokenDuplicateAnalytics:@"TokenDupeOnDemand"];
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [(APAttributionToken *)v6 signedAttributionToken];
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "generated token has already been used %{public}@", buf, 0xCu);
      }
    }

    (*(*(a1 + 64) + 16))();
    v12 = APPerfLogForCategory();
    v13 = v12;
    v14 = *(a1 + 72);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 134349056;
      v21 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Cache Queue overhead", "id=%{public, name=id}lld", buf, 0xCu);
    }

    v15 = dispatch_get_global_queue(9, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10022FC00;
    block[3] = &unk_100479690;
    v18 = *(a1 + 72);
    v19 = *(a1 + 80);
    v17 = *(a1 + 56);
    dispatch_async(v15, block);
  }
}

void sub_10022FC00(uint64_t a1)
{
  v2 = APPerfLogForCategory();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v11 = 134349056;
    v12 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "Cache Queue overhead", "id=%{public, name=id}lld", &v11, 0xCu);
  }

  v5 = APPerfLogForCategory();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v11 = 134349056;
    v12 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Token Cache Refill", "id=%{public, name=id}lld", &v11, 0xCu);
  }

  [APAttributionToken _refillCacheWithTokensDetail:*(a1 + 48)];
  v8 = APPerfLogForCategory();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = 134349056;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "Token Cache Refill", "id=%{public, name=id}lld", &v11, 0xCu);
  }
}

void sub_10022FEFC(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!v6 || a3)
  {
    (*(a1[7] + 16))();
  }

  else
  {
    v5 = [[APAttributionToken alloc] initWithKey:a1[4] payload:a1[5] token:a1[6] signature:v6];
    (*(a1[7] + 16))();
  }
}

void sub_10023171C(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1004DF708;
  qword_1004DF708 = v1;

  qword_1004DF700 = [[APUnfairLock alloc] initWithOptions:1];

  _objc_release_x1();
}

uint64_t sub_100232B40()
{
  sub_100398F58();
  v0 = sub_1003990E8();

  return v0;
}

uint64_t sub_100232B7C()
{
  sub_100398F58();
  sub_100399018();
}

Swift::Int sub_100232BD0()
{
  sub_100398F58();
  sub_100399B58();
  sub_100399018();
  v0 = sub_100399B88();

  return v0;
}

uint64_t sub_100232C44(uint64_t a1, id *a2)
{
  result = sub_100398F38();
  *a2 = 0;
  return result;
}

uint64_t sub_100232CBC(uint64_t a1, id *a2)
{
  v3 = sub_100398F48();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100232D3C@<X0>(void *a1@<X8>)
{
  sub_100398F58();
  v2 = sub_100398F28();

  *a1 = v2;
  return result;
}

uint64_t sub_100232D80()
{
  v0 = sub_100398F58();
  v2 = v1;
  if (v0 == sub_100398F58() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1003999B8();
  }

  return v5 & 1;
}

uint64_t sub_100232E08@<X0>(void *a1@<X8>)
{
  v2 = sub_100398F28();

  *a1 = v2;
  return result;
}

uint64_t sub_100232E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100398F58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100232E90(uint64_t a1)
{
  v2 = sub_100232F90(&qword_1004D6178);
  v3 = sub_100232F90(&unk_1004D6180);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100232F90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100233008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1003976F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_100236D78(v7, v8);
}

uint64_t sub_100233088(uint64_t a1)
{
  v2 = sub_1002382F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002330C4(uint64_t a1)
{
  v2 = sub_1002382F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100233100(void *a1)
{
  v2 = sub_1001E27A8(&qword_1004D64B0);
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v28 - v3;
  v4 = sub_1001E27A8(&qword_1004D64B8);
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v28 - v5;
  v6 = sub_1001E27A8(&unk_1004D70A0);
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v28 - v9;
  v10 = sub_1001E27A8(&qword_1004D64C0);
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001E27A8(&qword_1004D64C8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v28 - v18;
  sub_1000035B8(a1, a1[3]);
  sub_10023829C();
  sub_100399BF8();
  sub_100237A30(v40, v15, type metadata accessor for AttributionCandidate.Provenance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v22 = v38;
    v21 = v39;
    v23 = v30;
    (*(v38 + 32))(v30, v15, v39);
    v42 = 1;
    sub_100238344();
    v24 = v32;
    sub_100399908();
    sub_1002383EC(&qword_1004D64D0);
    v25 = v34;
    sub_100399978();
    v26 = v33;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v22 = v38;
    v21 = v39;
    v23 = v31;
    (*(v38 + 32))(v31, v15, v39);
    v43 = 2;
    sub_1002382F0();
    v24 = v35;
    sub_100399908();
    sub_1002383EC(&qword_1004D64D0);
    v25 = v37;
    sub_100399978();
    v26 = v36;
LABEL_5:
    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v23, v21);
    return (*(v17 + 8))(v19, v16);
  }

  v41 = 0;
  sub_100238398();
  sub_100399908();
  (*(v28 + 8))(v12, v29);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_1002336A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1001E27A8(&qword_1004D6468);
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v56 = &v44 - v4;
  v5 = sub_1001E27A8(&qword_1004D6470);
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  __chkstk_darwin(v5);
  v55 = &v44 - v7;
  v8 = sub_1001E27A8(&qword_1004D6478);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v54 = &v44 - v9;
  v10 = sub_1001E27A8(&qword_1004D6480);
  v57 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for AttributionCandidate.Provenance(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v44 - v18;
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v22 = a1[3];
  v60 = a1;
  sub_1000035B8(a1, v22);
  sub_10023829C();
  v23 = v59;
  sub_100399BC8();
  if (!v23)
  {
    v45 = v19;
    v46 = v16;
    v25 = v54;
    v24 = v55;
    v26 = v56;
    v59 = v21;
    v47 = v13;
    v27 = v58;
    v28 = sub_1003998F8();
    v29 = (2 * *(v28 + 16)) | 1;
    v61 = v28;
    v62 = v28 + 32;
    v63 = 0;
    v64 = v29;
    v30 = sub_100262E30();
    if (v30 == 3 || v63 != v64 >> 1)
    {
      v33 = sub_100399738();
      swift_allocError();
      v35 = v34;
      sub_1001E27A8(&qword_1004D63C0);
      *v35 = v47;
      sub_100399868();
      sub_100399728();
      (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
      swift_willThrow();
      (*(v57 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v30)
      {
        if (v30 == 1)
        {
          v65 = 1;
          sub_100238344();
          v31 = v24;
          sub_100399858();
          v32 = v57;
          sub_1001E27A8(&unk_1004D70A0);
          sub_1002383EC(&qword_1004D6498);
          v40 = v45;
          v41 = v50;
          sub_1003998D8();
          (*(v51 + 8))(v31, v41);
          (*(v32 + 8))(v12, v10);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v42 = v59;
          sub_10023783C(v40, v59, type metadata accessor for AttributionCandidate.Provenance);
          v43 = v27;
        }

        else
        {
          v65 = 2;
          sub_1002382F0();
          sub_100399858();
          v37 = v57;
          sub_1001E27A8(&unk_1004D70A0);
          sub_1002383EC(&qword_1004D6498);
          v38 = v46;
          v39 = v53;
          sub_1003998D8();
          (*(v52 + 8))(v26, v39);
          (*(v37 + 8))(v12, v10);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v42 = v59;
          sub_10023783C(v38, v59, type metadata accessor for AttributionCandidate.Provenance);
          v43 = v58;
        }
      }

      else
      {
        v65 = 0;
        sub_100238398();
        sub_100399858();
        (*(v48 + 8))(v25, v49);
        (*(v57 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v42 = v59;
        swift_storeEnumTagMultiPayload();
        v43 = v27;
      }

      sub_10023783C(v42, v43, type metadata accessor for AttributionCandidate.Provenance);
    }
  }

  return sub_100003894(v60);
}

uint64_t sub_100233E64()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6269727474616E75;
  }
}

uint64_t sub_100233ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100238CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100233EF8(uint64_t a1)
{
  v2 = sub_10023829C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100233F34(uint64_t a1)
{
  v2 = sub_10023829C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100233F7C(uint64_t a1)
{
  v2 = sub_100238398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100233FB8(uint64_t a1)
{
  v2 = sub_100238398();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int TokenBuilderError.hashValue.getter()
{
  sub_100399B58();
  sub_100399B68(0);
  return sub_100399B88();
}

Swift::Int sub_100234038()
{
  sub_100399B58();
  sub_100399B68(0);
  return sub_100399B88();
}

uint64_t sub_100234078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1003999B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1002340F8(uint64_t a1)
{
  v2 = sub_100238344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100234134(uint64_t a1)
{
  v2 = sub_100238344();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1002341A0()
{
  v1 = *v0;
  sub_100399B58();
  sub_100399B68(v1);
  return sub_100399B88();
}

Swift::Int sub_1002341E8()
{
  v1 = *v0;
  sub_100399B58();
  sub_100399B68(v1);
  return sub_100399B88();
}

uint64_t sub_10023422C()
{
  v1 = 0x6E616E65766F7270;
  if (*v0 != 1)
  {
    v1 = 7368801;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E6957656D6974;
  }
}

uint64_t sub_100234288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100238DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002342B0(uint64_t a1)
{
  v2 = sub_1002376C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002342EC(uint64_t a1)
{
  v2 = sub_1002376C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100234328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100397748();
  sub_10023771C(&qword_1004D6460, &type metadata accessor for Date);
  if ((sub_100398F08() & 1) == 0)
  {
    return 0;
  }

  sub_1001E27A8(&qword_1004D6250);
  if ((sub_100398F08() & 1) == 0 || (sub_100237E2C(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = (a2 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = v7[1];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *(a1 + v6) == *v7 && v8 == v9;
    if (!v10 && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  type metadata accessor for AppSpecifier(0);
  return (sub_100398188() & 1) != 0;
}

uint64_t sub_100234470(void *a1)
{
  v2 = v1;
  sub_1000035B8(a1, a1[3]);
  sub_100399BE8();
  sub_1000038F4(v1, v44);
  sub_1002129BC();
  if (swift_dynamicCast())
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(*&v43[0]))
    {
      [*&v43[0] BOOLValue];
    }

    else
    {
      sub_1000038F4(v2, v44);
      if (swift_dynamicCast())
      {
        sub_1001F54B4(v45, v46);
        sub_100399A48();
        goto LABEL_9;
      }

      sub_1000038F4(v2, v44);
      if (!swift_dynamicCast())
      {
        sub_1000038F4(v2, v44);
        if (swift_dynamicCast())
        {
          sub_1001F54B4(v45, v46);
          sub_100399A38();
        }

        goto LABEL_9;
      }
    }

    sub_1001F54B4(v45, v46);
    sub_100399A28();
LABEL_9:

    return sub_100003894(v45);
  }

  sub_1000038F4(v1, v44);
  if (swift_dynamicCast())
  {
    sub_1001F54B4(v45, v46);
    sub_100399A18();
LABEL_38:

    return sub_100003894(v45);
  }

  sub_1000038F4(v1, v44);
  sub_1001E27A8(&qword_1004D5BE8);
  if (swift_dynamicCast())
  {
    v5 = *(*&v43[0] + 16);
    if (v5)
    {
      sub_100237394(0, v5, 0);
      v6 = _swiftEmptyArrayStorage;
      v7 = *&v43[0] + 32;
      do
      {
        sub_1000038F4(v7, v44);
        *&v43[0] = v6;
        v9 = v6[2];
        v8 = v6[3];
        if (v9 >= v8 >> 1)
        {
          sub_100237394((v8 > 1), v9 + 1, 1);
          v6 = *&v43[0];
        }

        v6[2] = v9 + 1;
        v10 = &v6[4 * v9];
        v11 = v44[1];
        *(v10 + 2) = v44[0];
        *(v10 + 3) = v11;
        v7 += 32;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = _swiftEmptyArrayStorage;
    }

    *&v44[0] = v6;
    sub_1001F54B4(v45, v46);
    sub_1001E27A8(&qword_1004D63B0);
    sub_100237650(&qword_1004D63D8, sub_100235FB0);
    sub_100399A58();
    goto LABEL_38;
  }

  sub_1000038F4(v1, v44);
  sub_1001E27A8(&qword_1004D5D38);
  if (!swift_dynamicCast())
  {
    v37 = sub_100399758();
    swift_allocError();
    v39 = v38;
    sub_1001E27A8(&qword_1004D63D0);
    sub_1000038F4(v1, v39);
    sub_1000035B8(a1, a1[3]);
    sub_100399BD8();
    sub_100399748();
    (*(*(v37 - 8) + 104))(v39, enum case for EncodingError.invalidValue(_:), v37);
    swift_willThrow();
    return sub_100003894(v45);
  }

  sub_1001E27A8(&qword_1004D61A8);
  result = sub_100399808();
  v13 = result;
  v14 = 0;
  v41 = result;
  v42 = *&v43[0];
  v15 = 1 << *(*&v43[0] + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = *&v43[0] + 64;
  v18 = v16 & *(*&v43[0] + 64);
  v19 = (v15 + 63) >> 6;
  v40 = result + 64;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_29:
      v23 = v20 | (v14 << 6);
      v24 = 16 * v23;
      v25 = (*(v42 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = 32 * v23;
      sub_1000038F4(*(v42 + 56) + 32 * v23, v44);
      result = sub_10021243C(v44, v43);
      v29 = (v23 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v30 = 1 << v23;
      v13 = v41;
      *(v40 + v29) |= v30;
      v31 = (v41[6] + v24);
      *v31 = v26;
      v31[1] = v27;
      v32 = (v41[7] + v28);
      v33 = v43[1];
      *v32 = v43[0];
      v32[1] = v33;
      v34 = v41[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v41[2] = v36;

      if (!v18)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        *&v44[0] = v13;
        sub_1001F54B4(v45, v46);
        sub_1001E27A8(&qword_1004D6190);
        sub_100235F2C(&qword_1004D61B0, sub_100235FB0);
        sub_100399A58();

        return sub_100003894(v45);
      }

      v22 = *(v17 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100234B78@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  sub_100399BB8();
  if (!v2)
  {
    sub_1000035B8(v8, v8[3]);
    v5 = sub_1003999F8();
    *(&v10 + 1) = &type metadata for Int;
    *&v9 = v5;
    sub_100003894(v8);
    v6 = v10;
    *a2 = v9;
    a2[1] = v6;
  }

  return sub_100003894(a1);
}

uint64_t sub_1002351B8(void *a1)
{
  v3 = sub_1001E27A8(&qword_1004D6418);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035B8(a1, a1[3]);
  sub_1002376C8();
  sub_100399BF8();
  v8[15] = 0;
  sub_1001E27A8(&qword_1004D6250);
  sub_100237904(&qword_1004D6420, &qword_1004D6428);
  sub_100399978();
  if (!v1)
  {
    type metadata accessor for AttributionCandidate(0);
    v8[14] = 1;
    type metadata accessor for AttributionCandidate.Provenance(0);
    sub_10023771C(&qword_1004D6430, type metadata accessor for AttributionCandidate.Provenance);
    sub_100399978();
    v8[13] = 2;
    type metadata accessor for AppSpecifier(0);
    sub_10023771C(&qword_1004D6438, type metadata accessor for AppSpecifier);
    sub_100399978();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100235444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v24);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D6250);
  __chkstk_darwin(v7);
  v26 = &v21 - v8;
  v28 = sub_1001E27A8(&qword_1004D63E8);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AttributionCandidate(0);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v30 = a1;
  sub_1000035B8(a1, v14);
  sub_1002376C8();
  v27 = v10;
  v15 = v29;
  sub_100399BC8();
  if (v15)
  {
    return sub_100003894(v30);
  }

  v16 = v25;
  v17 = v13;
  v33 = 0;
  sub_100237904(&qword_1004D63F8, &qword_1004D6400);
  v18 = v26;
  sub_1003998D8();
  sub_100237764(v18, v17);
  v32 = 1;
  sub_10023771C(&qword_1004D6408, type metadata accessor for AttributionCandidate.Provenance);
  sub_1003998D8();
  sub_10023783C(v6, v17 + *(v11 + 20), type metadata accessor for AttributionCandidate.Provenance);
  v31 = 2;
  sub_10023771C(&qword_1004D6410, type metadata accessor for AppSpecifier);
  v19 = v23;
  sub_1003998D8();
  (*(v16 + 8))(v27, v28);
  sub_10023783C(v19, v17 + *(v11 + 24), type metadata accessor for AppSpecifier);
  sub_100237A30(v17, v22, type metadata accessor for AttributionCandidate);
  sub_100003894(v30);
  return sub_1002378A4(v17, type metadata accessor for AttributionCandidate);
}

uint64_t Passthrough<A>.init(from:)(void *a1)
{
  sub_1000035B8(a1, a1[3]);
  sub_100399BB8();
  if (v1)
  {
    return sub_100003894(a1);
  }

  sub_1000035B8(v30, v30[3]);
  sub_1001E27A8(&qword_1004D6190);
  sub_100235F2C(&qword_1004D6198, sub_100235C20);
  sub_100399A08();
  v26 = a1;
  sub_1001E27A8(&unk_1004D5DE0);
  result = sub_100399808();
  v4 = result;
  v5 = 0;
  v31 = *&v29[0];
  v6 = 1 << *(*&v29[0] + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = *&v29[0] + 64;
  v9 = v7 & *(*&v29[0] + 64);
  v10 = (v6 + 63) >> 6;
  v27 = result + 64;
  v28 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = v11 | (v5 << 6);
      v15 = 16 * v14;
      v16 = (*(v31 + 48) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = 32 * v14;
      sub_100235C74(*(v31 + 56) + 32 * v14, v29);
      v20 = (v14 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v21 = 1 << v14;
      v4 = v28;
      *(v27 + v20) |= v21;
      v22 = (v28[6] + v15);
      *v22 = v17;
      v22[1] = v18;
      result = sub_10021243C(v29, (v28[7] + v19));
      v23 = v28[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v28[2] = v25;

      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        *&v29[0] = v4;
        sub_1001E27A8(&qword_1004D5D38);
        sub_100397A08();
        sub_100003894(v30);
        return sub_100003894(v26);
      }

      v13 = *(v8 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100235C20()
{
  result = qword_1004D61A0;
  if (!qword_1004D61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D61A0);
  }

  return result;
}

uint64_t Passthrough<A>.encode(to:)(void *a1)
{
  sub_1000035B8(a1, a1[3]);
  sub_100399BE8();
  sub_1001E27A8(&unk_1004D70A0);
  sub_100397A18();
  sub_1001E27A8(&qword_1004D61A8);
  result = sub_100399808();
  v2 = result;
  v3 = 0;
  v27 = result;
  v28 = v33;
  v4 = 1 << *(v33 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v33 + 64;
  v7 = v5 & *(v33 + 64);
  v8 = (v4 + 63) >> 6;
  v26 = result + 64;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v3 << 6);
      v13 = 16 * v12;
      v14 = (*(v28 + 48) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      v17 = 32 * v12;
      sub_1000038F4(*(v28 + 56) + 32 * v12, v30);
      result = sub_10021243C(v30, v29);
      v18 = (v12 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v19 = 1 << v12;
      v2 = v27;
      *(v26 + v18) |= v19;
      v20 = (v27[6] + v13);
      *v20 = v16;
      v20[1] = v15;
      v21 = (v27[7] + v17);
      v22 = v29[1];
      *v21 = v29[0];
      v21[1] = v22;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {

        *&v30[0] = v2;
        sub_1001F54B4(v31, v32);
        sub_1001E27A8(&qword_1004D6190);
        sub_100235F2C(&qword_1004D61B0, sub_100235FB0);
        sub_100399A58();

        return sub_100003894(v31);
      }

      v11 = *(v6 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100235F2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&qword_1004D6190);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100235FB0()
{
  result = qword_1004D61B8;
  if (!qword_1004D61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D61B8);
  }

  return result;
}

void sub_100236110()
{
  sub_1002361AC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributionCandidate.Provenance(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppSpecifier(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002361AC()
{
  if (!qword_1004D62C0)
  {
    sub_100397748();
    sub_10023771C(&qword_1004D62C8, &type metadata accessor for Date);
    v0 = sub_1003993A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D62C0);
    }
  }
}

void sub_100236290()
{
  sub_1002362F0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1002362F0()
{
  if (!qword_1004D6380)
  {
    sub_1001E27F0(&qword_1004D5D38);
    v0 = sub_100397A38();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D6380);
    }
  }
}

uint64_t sub_100236354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023639C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1002363EC()
{
  v0 = sub_100397408();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100397918();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100397838();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100397968();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D6440);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1001E27A8(&qword_1004D6448);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v22 = sub_1003975E8();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003975B8();
  v16 = sub_1003975C8();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  sub_100397598();
  v17 = sub_1003975A8();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  if (qword_1004D6128 != -1)
  {
    swift_once();
  }

  v18 = sub_10000351C(v3, static TimeZone.utc);
  (*(v4 + 16))(v6, v18, v3);
  sub_1003977E8();
  sub_1003978A8();
  sub_1003973F8();
  sub_1003975D8();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1003996F8(42);

  v24 = 0xD000000000000016;
  v25 = 0x800000010042E040;
  sub_10023771C(&qword_1004D6450, &type metadata accessor for Date.FormatStyle);
  v19 = v22;
  sub_100397728();
  sub_100399068(v23);

  v26._countAndFlagsBits = 0x6469646E6163202CLL;
  v26._object = 0xEE00203A73657461;
  sub_100399068(v26);
  type metadata accessor for ComputedAttributions(0);
  type metadata accessor for AttributionCandidate(0);
  v27._countAndFlagsBits = sub_1003991A8();
  sub_100399068(v27);

  v28._countAndFlagsBits = 10537;
  v28._object = 0xE200000000000000;
  sub_100399068(v28);
  v20 = v24;
  (*(v13 + 8))(v15, v19);
  return v20;
}

uint64_t sub_1002368D8()
{
  v1 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D6250);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1003996F8(26);

  v12 = 0x74616469646E6163;
  v13 = 0xEA00000000002865;
  sub_1002379C0(v0, v9);
  v14._countAndFlagsBits = sub_100398FC8();
  sub_100399068(v14);

  v15._countAndFlagsBits = 8236;
  v15._object = 0xE200000000000000;
  sub_100399068(v15);
  v10 = type metadata accessor for AttributionCandidate(0);
  sub_100237A30(v0 + *(v10 + 20), v6, type metadata accessor for AttributionCandidate.Provenance);
  v16._countAndFlagsBits = sub_100398FC8();
  sub_100399068(v16);

  v17._countAndFlagsBits = 0x203A707061202CLL;
  v17._object = 0xE700000000000000;
  sub_100399068(v17);
  sub_100237A30(v0 + *(v10 + 24), v3, type metadata accessor for AppSpecifier);
  v18._countAndFlagsBits = sub_100398FC8();
  sub_100399068(v18);

  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  sub_100399068(v19);
  return v12;
}

uint64_t sub_100236B28()
{
  v1 = v0;
  v2 = 0x6269727474616E75;
  v3 = sub_1001E27A8(&unk_1004D70A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100237A30(v1, v9, type metadata accessor for AttributionCandidate.Provenance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v6, v9, v3);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1003996F8(16);
    v11._object = 0xEE00203A64657475;
    v11._countAndFlagsBits = 0x6269727474616E75;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    v13 = 0;
    v14 = 0xE000000000000000;
    v11._countAndFlagsBits = 0x7475626972747461;
    v11._object = 0xEC000000203A6465;
LABEL_5:
    sub_100399068(v11);
    sub_1003997C8();
    v2 = v13;
    (*(v4 + 8))(v6, v3);
  }

  return v2;
}

uint64_t sub_100236D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004D70A0);
  v48 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v47 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v47);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1001E27A8(&qword_1004D6458);
  __chkstk_darwin(v49);
  v12 = &v37 - v11;
  v50 = type metadata accessor for AttributionCandidate(0);
  v13 = *(v50 - 8);
  v14 = __chkstk_darwin(v50);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      return 1;
    }

    v39 = v9;
    v40 = v7;
    v42 = v4;
    v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = a1 + v20;
    v22 = a2 + v20;
    v23 = sub_100397748();
    v37 = v18;
    v38 = (v48 + 32);
    v41 = (v48 + 8);
    v44 = *(v13 + 72);
    v45 = v23;
    while (1)
    {
      sub_100237A30(v21, v18, type metadata accessor for AttributionCandidate);
      v48 = v21;
      sub_100237A30(v22, v16, type metadata accessor for AttributionCandidate);
      sub_10023771C(&qword_1004D6460, &type metadata accessor for Date);
      if ((sub_100398F08() & 1) == 0)
      {
        break;
      }

      sub_1001E27A8(&qword_1004D6250);
      if ((sub_100398F08() & 1) == 0)
      {
        break;
      }

      v24 = *(v50 + 20);
      v25 = *(v49 + 48);
      sub_100237A30(&v18[v24], v12, type metadata accessor for AttributionCandidate.Provenance);
      sub_100237A30(&v16[v24], &v12[v25], type metadata accessor for AttributionCandidate.Provenance);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v27 = v46;
        sub_100237A30(v12, v46, type metadata accessor for AttributionCandidate.Provenance);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v41)(v27, v42);
LABEL_25:
          sub_1002378A4(&v12[v25], type metadata accessor for AttributionCandidate.Provenance);
          sub_1002378A4(v12, type metadata accessor for AttributionCandidate.Provenance);
          break;
        }

        v28 = v39;
        v29 = *v38;
        v30 = v42;
        (*v38)(v39, v27, v42);
        v31 = v40;
        v29(v40, &v12[v25], v30);
        v18 = v37;
        v43 = sub_100397A28();
        v32 = *v41;
        (*v41)(v31, v30);
        v32(v28, v30);
        sub_1002378A4(v12, type metadata accessor for AttributionCandidate.Provenance);
        if ((v43 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 2 || swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_25;
        }

        sub_1002378A4(v12, type metadata accessor for AttributionCandidate.Provenance);
      }

      v33 = *(v50 + 24);
      v34 = *&v18[v33 + 8];
      v35 = *&v16[v33 + 8];
      if (v34)
      {
        if (!v35 || (*&v18[v33] != *&v16[v33] || v34 != v35) && (sub_1003999B8() & 1) == 0)
        {
          break;
        }
      }

      else if (v35)
      {
        break;
      }

      type metadata accessor for AppSpecifier(0);
      if ((sub_100398188() & 1) == 0)
      {
        break;
      }

      sub_1002378A4(v16, type metadata accessor for AttributionCandidate);
      sub_1002378A4(v18, type metadata accessor for AttributionCandidate);
      v22 += v44;
      v21 = v48 + v44;
      result = 1;
      if (!--v19)
      {
        return result;
      }
    }

    sub_1002378A4(v16, type metadata accessor for AttributionCandidate);
    sub_1002378A4(v18, type metadata accessor for AttributionCandidate);
  }

  return 0;
}

char *sub_100237394(char *a1, int64_t a2, char a3)
{
  result = sub_100237434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002373B4(char *a1, int64_t a2, char a3)
{
  result = sub_100237540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002373D4(char *a1, int64_t a2, char a3)
{
  result = sub_100237A98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002373F4(void *a1, int64_t a2, char a3)
{
  result = sub_100237B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100237414(void *a1, int64_t a2, char a3)
{
  result = sub_100237CE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100237434(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&qword_1004D63E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100237540(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&qword_1004D63C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100237650(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&qword_1004D63B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002376C8()
{
  result = qword_1004D63F0;
  if (!qword_1004D63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D63F0);
  }

  return result;
}

uint64_t sub_10023771C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100237764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D6250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002377D4(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D6250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023783C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002378A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100237904(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&qword_1004D6250);
    sub_10023771C(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002379C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D6250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_100237A98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&qword_1004D64D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100237B9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&unk_1004DCD00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(&qword_1004D64E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100237CE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001E27A8(&qword_1004D9A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(&unk_1004D9A30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100237E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004D70A0);
  v25 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001E27A8(&qword_1004D6458);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = *(v14 + 56);
  sub_100237A30(a1, &v24 - v15, type metadata accessor for AttributionCandidate.Provenance);
  sub_100237A30(a2, &v16[v17], type metadata accessor for AttributionCandidate.Provenance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v21 = 1;
      goto LABEL_9;
    }

LABEL_8:
    sub_1002378A4(&v16[v17], type metadata accessor for AttributionCandidate.Provenance);
    v21 = 0;
    goto LABEL_9;
  }

  sub_100237A30(v16, v12, type metadata accessor for AttributionCandidate.Provenance);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v25 + 8))(v12, v4);
    goto LABEL_8;
  }

  v19 = v25;
  v20 = *(v25 + 32);
  v20(v9, v12, v4);
  v20(v7, &v16[v17], v4);
  v21 = sub_100397A28();
  v22 = *(v19 + 8);
  v22(v7, v4);
  v22(v9, v4);
LABEL_9:
  sub_1002378A4(v16, type metadata accessor for AttributionCandidate.Provenance);
  return v21 & 1;
}

uint64_t sub_10023812C(uint64_t a1, uint64_t a2)
{
  sub_100397748();
  sub_10023771C(&qword_1004D6460, &type metadata accessor for Date);
  if ((sub_100398F08() & 1) == 0)
  {
    return 0;
  }

  sub_1001E27A8(&qword_1004D6250);
  if ((sub_100398F08() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AttributionCandidate(0);
  if ((sub_100237E2C(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5 + 8);
  v7 = *(a2 + v5 + 8);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(a1 + v5) == *(a2 + v5) && v6 == v7;
    if (!v8 && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  type metadata accessor for AppSpecifier(0);
  if ((sub_100398188() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for WinningAttribution(0) + 20);

  return sub_10024659C(a1 + v9, a2 + v9);
}

unint64_t sub_10023829C()
{
  result = qword_1004D6488;
  if (!qword_1004D6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6488);
  }

  return result;
}

unint64_t sub_1002382F0()
{
  result = qword_1004D6490;
  if (!qword_1004D6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6490);
  }

  return result;
}

unint64_t sub_100238344()
{
  result = qword_1004D64A0;
  if (!qword_1004D64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D64A0);
  }

  return result;
}

unint64_t sub_100238398()
{
  result = qword_1004D64A8;
  if (!qword_1004D64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D64A8);
  }

  return result;
}

uint64_t sub_1002383EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&unk_1004D70A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StandaloneAppOpenSignalError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for StandaloneAppOpenSignalError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributionDeliveryErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributionDeliveryErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100238704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100238794()
{
  if (!qword_1004D6550)
  {
    type metadata accessor for AttributionCandidate(255);
    v0 = sub_1003991F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D6550);
    }
  }
}

unint64_t sub_1002387F0()
{
  result = qword_1004D6580;
  if (!qword_1004D6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6580);
  }

  return result;
}

unint64_t sub_100238848()
{
  result = qword_1004D6588;
  if (!qword_1004D6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6588);
  }

  return result;
}

unint64_t sub_1002388A0()
{
  result = qword_1004D6590;
  if (!qword_1004D6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6590);
  }

  return result;
}

unint64_t sub_1002388F8()
{
  result = qword_1004D6598;
  if (!qword_1004D6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6598);
  }

  return result;
}

unint64_t sub_100238950()
{
  result = qword_1004D65A0;
  if (!qword_1004D65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65A0);
  }

  return result;
}

unint64_t sub_1002389A8()
{
  result = qword_1004D65A8;
  if (!qword_1004D65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65A8);
  }

  return result;
}

unint64_t sub_100238A00()
{
  result = qword_1004D65B0;
  if (!qword_1004D65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65B0);
  }

  return result;
}

unint64_t sub_100238A58()
{
  result = qword_1004D65B8;
  if (!qword_1004D65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65B8);
  }

  return result;
}

unint64_t sub_100238AB0()
{
  result = qword_1004D65C0;
  if (!qword_1004D65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65C0);
  }

  return result;
}

unint64_t sub_100238B08()
{
  result = qword_1004D65C8;
  if (!qword_1004D65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65C8);
  }

  return result;
}

unint64_t sub_100238B60()
{
  result = qword_1004D65D0;
  if (!qword_1004D65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65D0);
  }

  return result;
}

unint64_t sub_100238BB8()
{
  result = qword_1004D65D8;
  if (!qword_1004D65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65D8);
  }

  return result;
}

unint64_t sub_100238C10()
{
  result = qword_1004D65E0;
  if (!qword_1004D65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65E0);
  }

  return result;
}

unint64_t sub_100238C68()
{
  result = qword_1004D65E8;
  if (!qword_1004D65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D65E8);
  }

  return result;
}

uint64_t sub_100238CBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269727474616E75 && a2 == 0xEC00000064657475;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010042E090 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1003999B8();

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

uint64_t sub_100238DE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E6957656D6974 && a2 == 0xEA0000000000776FLL;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1003999B8();

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

uint64_t *sub_100238F50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_100238FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for A9nErrorBucketObjC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100239010(Swift::Int a1, uint64_t a2)
{
  if (a2 == 1)
  {
    type metadata accessor for AttributionErrorBucketConfigSystemJSONSource();
    *(swift_allocObject() + 16) = 0;
    sub_100239270(&qword_1004D6618, type metadata accessor for AttributionErrorBucketConfigSystemJSONSource);
    type metadata accessor for DefaultAttributionClientErrorBucketConfigurationStore();
    swift_allocObject();
    v3 = &unk_1004D6620;
    v4 = type metadata accessor for DefaultAttributionClientErrorBucketConfigurationStore;
LABEL_5:
    sub_100239270(v3, v4);
    sub_100398058();
    swift_allocObject();
    sub_100398048();
    sub_100398058();
    sub_100398038();
    swift_allocObject();

    sub_100398018();
    v5 = sub_100398028(a1);

    return v5;
  }

  if (!a2)
  {
    type metadata accessor for AttributionErrorBucketConfigSystemJSONSource();
    *(swift_allocObject() + 16) = 1;
    sub_100239270(&qword_1004D6618, type metadata accessor for AttributionErrorBucketConfigSystemJSONSource);
    type metadata accessor for DefaultAttributionServerErrorBucketConfigurationStore();
    swift_allocObject();
    v3 = &unk_1004D6628;
    v4 = type metadata accessor for DefaultAttributionServerErrorBucketConfigurationStore;
    goto LABEL_5;
  }

  result = sub_100399A68();
  __break(1u);
  return result;
}

uint64_t sub_100239270(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002392CC()
{
  result = qword_1004D6630;
  if (!qword_1004D6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6630);
  }

  return result;
}

double sub_1002393C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = COERCE_DOUBLE(a3());
  if ((v8 & 1) == 0)
  {
    return v7;
  }

  v9 = v6[10];
  v10 = v6[11];
  sub_1000035B8(v6 + 7, v9);
  a4(v9, v10);
  return result;
}

uint64_t sub_100239484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *v4;
  result = a3();
  if (!result)
  {
    v8 = v6[10];
    v9 = v6[11];
    sub_1000035B8(v6 + 7, v8);
    return a4(v8, v9);
  }

  return result;
}

uint64_t type metadata accessor for ConversionSignposts()
{
  result = qword_1004D6760;
  if (!qword_1004D6760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100239554()
{
  result = sub_100398C18();
  if (v1 <= 0x3F)
  {
    result = sub_100398BD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002395D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a1;
  v5 = type metadata accessor for ConversionSignposts();
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100398BD8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v31 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = v3 + *(v5 + 20);
  v30 = *(v9 + 16);
  v30(&v27 - v12, v14, v8);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v15);
  sub_10023999C(v3, v7);
  sub_1002792C0();
  sub_10023998C(v16);
  sub_1001E3438();
  sub_1002792C0();
  sub_10023998C(v17);
  v32 = v3;
  v18 = sub_100398C08();
  v19 = sub_100399508();
  if (sub_100399598())
  {
    v20 = swift_slowAlloc();
    v27 = a3;
    v21 = v20;
    *v20 = 134349568;
    *(v20 + 4) = v28;
    *(v20 + 12) = 2050;
    *(v20 + 14) = sub_100398BB8();
    sub_100239A00(v7);
    *(v21 + 22) = 2050;
    *(v21 + 24) = v29;
    v22 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v22, "Signal", "%{signpost.description:begin_time,public}lluid=%{name=id,public}llu type=%{name=type,public}ld", v21, 0x20u);
    a3 = v27;
  }

  else
  {

    sub_100239A00(v7);
  }

  v30(v31, v13, v8);
  sub_100398C68();
  swift_allocObject();
  v23 = sub_100398C58();
  (*(v9 + 8))(v13, v8);
  v24 = *(type metadata accessor for SignpostInterval() + 24);
  v25 = sub_100398C18();
  result = (*(*(v25 - 8) + 16))(a3 + v24, v32, v25);
  *a3 = "Signal";
  *(a3 + 8) = 6;
  *(a3 + 16) = 2;
  *(a3 + 24) = v23;
  return result;
}

unint64_t sub_100239938()
{
  result = qword_1004D6798;
  if (!qword_1004D6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6798);
  }

  return result;
}

uint64_t sub_10023998C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10023999C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionSignposts();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100239A00(uint64_t a1)
{
  v2 = type metadata accessor for ConversionSignposts();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100239A8C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v6 = type metadata accessor for ConversionSignposts();
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100398BD8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = v3 + *(v6 + 20);
  v28 = *(v10 + 16);
  v28(&v25 - v13, v15, v9);
  sub_10023999C(v3, v8);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v16);
  v30 = v3;
  v17 = sub_100398C08();
  v26 = sub_100399508();
  if (sub_100399598())
  {
    v18 = swift_slowAlloc();
    v25 = a2;
    v19 = v18;
    *v18 = 134349056;
    *(v18 + 4) = sub_100398BB8();
    sub_100239A00(v8);
    v20 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v26, v20, v27, "id=%{name=id,public}llu", v19, 0xCu);
    a2 = v25;
  }

  else
  {

    sub_100239A00(v8);
  }

  v28(v29, v14, v9);
  sub_100398C68();
  swift_allocObject();
  v21 = sub_100398C58();
  (*(v10 + 8))(v14, v9);
  v22 = *(type metadata accessor for SignpostInterval() + 24);
  v23 = sub_100398C18();
  result = (*(*(v23 - 8) + 16))(a3 + v22, v30, v23);
  *a3 = a2;
  *(a3 + 8) = 14;
  *(a3 + 16) = 2;
  *(a3 + 24) = v21;
  return result;
}

_UNKNOWN **sub_100239D88()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_100239DE4();
    *(v0 + 16) = v1;
  }

  return v1;
}

_UNKNOWN **sub_100239DE4()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D6928);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && (v3 = [v2 installSignals]) != 0)
  {
    v4 = v3;
    sub_1001E27A8(&unk_1004D6930);
    v5 = sub_100399198();

    v6 = sub_1002819A4(v5);
    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    swift_unknownObjectRelease();
    return &off_100479938;
  }
}

uint64_t sub_100239EE8()
{
  v0 = sub_100239D88();
  v1 = sub_1003988F8();
  v2 = sub_100398938();
  v3 = sub_100398928();
  v4 = sub_100398948();
  v5 = (v0 + 4);
  v6 = v0[2] + 1;
  while (--v6)
  {
    v7 = v5 + 8;
    v8 = *v5;
    v5 += 8;
    if (v8 == v1)
    {
      v10 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *(v10 + 16);
      v13 = (v10 + 32);
      while (v12)
      {
        v14 = *v13++;
        --v12;
        if (v14 == v2)
        {
          v15 = *(v9 + 16);
          v16 = (v9 + 32);
          while (v15)
          {
            v17 = *v16++;
            --v15;
            if (v17 == v3)
            {
              v18 = *(v11 + 16);
              v19 = (v11 + 32);
              while (v18)
              {
                v20 = *v19++;
                --v18;
                if (v20 == v4)
                {

                  return 1;
                }
              }

              goto LABEL_14;
            }
          }

          goto LABEL_14;
        }
      }

      break;
    }
  }

LABEL_14:

  return 0;
}

uint64_t sub_100239FE4()
{

  return swift_deallocClassInstance();
}

__n128 sub_10023A040(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10023A054(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10023A09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10023A164(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1003986D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10023A1A8()
{
  v0 = sub_1003986D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100398968();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v22[-v9];
  sub_1001E27A8(&qword_1004D6878);
  sub_100397B18();
  if ((*(v1 + 88))(v3, v0) == enum case for ConversionSignal.appStoreInstallationSignal(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v10, v3, v4);
    if (sub_100239EE8())
    {
      (*(v5 + 8))(v10, v4);
      return 1;
    }

    v12 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30);
    v13 = sub_1003995A8();
    (*(v5 + 16))(v8, v10, v4);
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = sub_100398908();
      v18 = v17;
      v23 = v12;
      v19 = *(v5 + 8);
      v19(v8, v4);
      v20 = sub_100005700(v16, v18, &v24);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v23, "Ignore %s", v14, 0xCu);
      sub_100003894(v15);

      v19(v10, v4);
    }

    else
    {

      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v10, v4);
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return 0;
}

uint64_t sub_10023A580(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v84 = a2;
  v85 = a3;
  v74 = type metadata accessor for ProductionAppSpecifier(0);
  __chkstk_darwin(v74);
  v83 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SignpostInterval();
  v79 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v81 = v7;
  v82 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v67 - v8;
  v73 = type metadata accessor for AttributionSignposts(0);
  v76 = *(v73 - 8);
  v9 = __chkstk_darwin(v73);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v10;
  __chkstk_darwin(v9);
  v90 = &v67 - v11;
  v12 = type metadata accessor for OnDeviceAttributionTelemetry(0);
  __chkstk_darwin(v12 - 8);
  v89 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100398C18();
  v71 = *(v14 - 8);
  v72 = v14;
  __chkstk_darwin(v14);
  v70 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100398BD8();
  v87 = *(v16 - 8);
  v88 = v16;
  __chkstk_darwin(v16);
  v86 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1003986D8();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v67 - v23;
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v25 = sub_1003995A8();
  sub_100398B98();

  v69 = sub_1001E27A8(&qword_1004D6878);
  v77 = a1;
  sub_100397B18();
  v26 = sub_1003986C8();
  v28 = v27;
  v30 = *(v19 + 8);
  v29 = v19 + 8;
  v31 = v24;
  v32 = v18;
  v33 = v30;
  v30(v31, v18);
  v68 = v28;
  if (v28)
  {
    v34 = APPerfLogForCategory();
    v67 = v26;
    v35 = v70;
    sub_100398BF8();
    sub_100398C08();
    v36 = v86;
    sub_100398BA8();
    (*(v71 + 8))(v35, v72);
    v37 = *(v87 + 16);
    v38 = v89;
    v39 = v36;
    v40 = v88;
    v37(v89, v39, v88);
    v37(v90 + *(v73 + 20), v38, v40);
    v41 = APPerfLogForCategory();
    sub_100398BF8();
    AttributionSignposts.appInstall()(v91);
    v42 = v22;
    sub_100397B18();
    v43 = sub_1003986B8();
    v45 = v44;
    v33(v42, v32);
    v46 = v68;

    v74 = v29;
    v47 = v83;
    v48 = v67;
    sub_100398198();
    *v47 = v43;
    v47[1] = v45;
    v49 = v47;
    sub_1000035B8((v75 + 16), *(v75 + 40));
    sub_100397B18();
    v50 = sub_100398678();
    v52 = v51;
    v33(v42, v32);
    v53 = sub_100251960(v48, v46, v50, v52);

    v54 = os_transaction_create();
    v55 = v82;
    sub_10023D5BC(v91, v82, type metadata accessor for SignpostInterval);
    v56 = v90;
    v57 = v80;
    sub_10023D5BC(v90, v80, type metadata accessor for AttributionSignposts);
    v58 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v59 = (v81 + *(v76 + 80) + v58) & ~*(v76 + 80);
    v60 = (v78 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = v54;
    *(v61 + 24) = v53;
    sub_10023B134(v55, v61 + v58, type metadata accessor for SignpostInterval);
    sub_10023B134(v57, v61 + v59, type metadata accessor for AttributionSignposts);
    v62 = (v61 + v60);
    v63 = v85;
    *v62 = v84;
    v62[1] = v63;
    swift_unknownObjectRetain();

    v64 = v89;
    sub_10023D16C(v49, v89, sub_10023B19C, v61, v53);
    swift_unknownObjectRelease();

    sub_10023D624(v49, type metadata accessor for ProductionAppSpecifier);
    sub_10023D624(v91, type metadata accessor for SignpostInterval);
    sub_10023D624(v56, type metadata accessor for AttributionSignposts);
    sub_10023D624(v64, type metadata accessor for OnDeviceAttributionTelemetry);
    return (*(v87 + 8))(v86, v88);
  }

  else
  {
    sub_1003993E8();
    v66 = sub_1003995A8();
    sub_100398B98();

    return v84();
  }
}

uint64_t sub_10023AE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_unknownObjectRetain();

  sub_10027C30C();
  AttributionSignposts.operationCompleted()();
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v6 = sub_1003995A8();
  sub_100398B98();

  a5();

  return swift_unknownObjectRelease();
}

uint64_t sub_10023AF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1001ED244(a1, &qword_1004D4CE0);
    sub_10023BE68(a2, a3, v9);

    return sub_1001ED244(v9, &qword_1004D4CE0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10023C470(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10023B134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023B19C()
{
  v1 = *(type metadata accessor for SignpostInterval() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AttributionSignposts(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10023AE40(v6, v7, v0 + v2, v0 + v5, v8);
}

uint64_t sub_10023B29C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&unk_1004D5DE0);
  v33 = a2;
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10021243C(v24, v34);
      }

      else
      {
        sub_1000038F4(v24, v34);
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10021243C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10023B57C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v48 = a3(0);
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - v9;
  v10 = *v4;
  sub_1001E27A8(a4);
  v45 = a2;
  result = sub_100399818();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v41 = v4;
    v42 = (v8 + 16);
    v43 = v10;
    v44 = v8;
    v46 = (v8 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 56);
      v27 = (*(v10 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v44 + 72);
      v31 = v26 + v30 * v25;
      if (v45)
      {
        (*v46)(v47, v31, v48);
      }

      else
      {
        (*v42)(v47, v31, v48);
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v46)(*(v12 + 56) + v30 * v20, v47, v48);
      ++*(v12 + 16);
      v10 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v6 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v6 = v41;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v6 = v12;
  return result;
}

uint64_t sub_10023B900(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&unk_1004D6900);
  v37 = a2;
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10023BBC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&unk_1004D6910);
  v34 = a2;
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10023BE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1001EC1DC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10023CBF8(&type metadata accessor for Date, &qword_1004D68F8);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_100397748();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_10023C27C(v8, v10, &type metadata accessor for Date);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_100397748();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_10023C010@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1001EC1DC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10023CA2C();
      v10 = v12;
    }

    sub_10021243C((*(v10 + 56) + 32 * v8), a3);
    sub_10023C0B4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10023C0B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100399678() + 1) & ~v5;
    do
    {
      sub_100399B58();

      sub_100399018();
      v10 = sub_100399B88();

      v11 = v10 & v7;
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
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
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

unint64_t sub_10023C27C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_100399678() + 1) & ~v6;
    while (1)
    {
      sub_100399B58();

      sub_100399018();
      v11 = sub_100399B88();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
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

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_10023C470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1001EC1DC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10023CBF8(&type metadata accessor for Date, &qword_1004D68F8);
      goto LABEL_7;
    }

    sub_10023B57C(v15, a4 & 1, &type metadata accessor for Date, &qword_1004D68F8);
    v26 = sub_1001EC1DC(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100399A98();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100397748();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10023C910(v12, a2, a3, a1, v18);
}

_OWORD *sub_10023C638(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001EC1DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10023CA2C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10023B29C(v16, a4 & 1);
    v11 = sub_1001EC1DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100399A98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100003894(v22);

    return sub_10021243C(a1, v22);
  }

  else
  {
    sub_10023C9C0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10023C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1001EC1DC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10023B900(v18, a5 & 1);
      v13 = sub_1001EC1DC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_100399A98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10023CE80();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10023C910(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100397748();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_10023C9C0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10021243C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10023CA2C()
{
  v1 = v0;
  sub_1001E27A8(&unk_1004D5DE0);
  v2 = *v0;
  v3 = sub_100399808();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000038F4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10021243C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10023CBF8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v41 = a1(0);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - v5;
  sub_1001E27A8(a2);
  v6 = *v2;
  v7 = sub_100399808();
  v8 = v7;
  if (*(v6 + 16))
  {
    v36 = v4;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v14;
    v15 = 1 << *(v6 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v6 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v6;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v6 + 56);
        v25 = (*(v6 + 48) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v43;
        v29 = *(v43 + 72) * v22;
        v30 = v40;
        v31 = v41;
        (*(v43 + 16))(v40, v24 + v29, v41);
        v32 = v42;
        v33 = (*(v42 + 48) + v23);
        *v33 = v26;
        v33[1] = v27;
        v34 = *(v32 + 56) + v29;
        v6 = v39;
        (*(v28 + 32))(v34, v30, v31);

        v17 = v44;
      }

      while (v44);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v36;
        v8 = v42;
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_10023CE80()
{
  v1 = v0;
  sub_1001E27A8(&unk_1004D6900);
  v2 = *v0;
  v3 = sub_100399808();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10023D00C(uint64_t *a1)
{
  v2 = v1;
  sub_1001E27A8(a1);
  v3 = *v1;
  v4 = sub_100399808();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = swift_unknownObjectRetain();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_10023D16C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v37 = a3;
  v38 = a4;
  v8 = sub_1001E27A8(&unk_1004D68E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v36 = type metadata accessor for AttributionCoordinator.Operation();
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v40[3] = type metadata accessor for OnDeviceAttributionTelemetry(0);
  v40[4] = &off_10047C0A0;
  v17 = sub_1001E6B7C(v40);
  sub_10023D5BC(a2, v17, type metadata accessor for OnDeviceAttributionTelemetry);
  v18 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30);
  v19 = sub_1003995A8();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = a1;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100005700(a5[8], a5[9], v39);
    _os_log_impl(&_mh_execute_header, v19, v18, "Calling didInstall for %s", v21, 0xCu);
    sub_100003894(v22);

    a1 = v20;
  }

  v23 = a5[14];
  if (v23)
  {
    v24 = a1;
    v25 = *a1;
    v26 = a1[1];
    os_unfair_lock_lock((*(v23 + 24) + 16));

    sub_100397738();
    v27 = sub_100397748();
    (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
    swift_beginAccess();
    v28 = v26;
    a1 = v24;
    sub_10023AF5C(v16, v25, v28);
    swift_endAccess();
    os_unfair_lock_unlock((*(v23 + 24) + 16));
  }

  v29 = sub_1001E27A8(&qword_1004D68F0);
  v30 = *(v29 + 48);
  v31 = &v13[*(v29 + 64)];
  sub_10023D5BC(a1, v13, type metadata accessor for ProductionAppSpecifier);
  sub_100003554(v40, &v13[v30]);
  v32 = v38;
  *v31 = v37;
  *(v31 + 1) = v32;
  v33 = v36;
  swift_storeEnumTagMultiPayload();
  sub_10023D5BC(v13, v10, type metadata accessor for AttributionCoordinator.Operation);
  (*(v11 + 56))(v10, 0, 1, v33);

  sub_100257B28(v10);
  sub_1001ED244(v10, &unk_1004D68E0);
  sub_10023D624(v13, type metadata accessor for AttributionCoordinator.Operation);
  return sub_100003894(v40);
}

uint64_t sub_10023D5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023D624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10023D684(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001E27A8(&unk_1004D5DE0);
    v2 = sub_100399828();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10023E028(*(a1 + 48) + 40 * v12, v27);
        sub_1000038F4(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10023E028(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000038F4(v25 + 8, v20);
        sub_10023E084(v24);
        v21 = v18;
        sub_10021243C(v20, v22);
        v13 = v21;
        sub_10021243C(v22, v23);
        sub_10021243C(v23, &v21);
        result = sub_1001EC1DC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100003894(v10);
          result = sub_10021243C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10021243C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10023E084(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10023D964(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100398F58();
      v8 = v7;
      if (v6 == sub_100398F58() && v8 == v9)
      {
        break;
      }

      v11 = sub_1003999B8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10023DA68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10023E028(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100399698();
      sub_10023E0EC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10023DB30(uint64_t a1)
{
  sub_100398F58();
  sub_100399B58();
  sub_100399018();
  v2 = sub_100399B88();

  return sub_10023D964(a1, v2);
}

unint64_t sub_10023DBC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100399688(*(v2 + 40));

  return sub_10023DA68(a1, v4);
}

uint64_t sub_10023DC20(SEL *a1)
{
  v2 = objc_opt_self();
  sub_100004218(0, &qword_1004D6928);
  v3 = [v2 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 *a1];
    swift_unknownObjectRelease();
    if (v5)
    {
      [v5 doubleValue];
      v7 = v6;

      return v7;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

unint64_t sub_10023DD18()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D6928);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 allProperties];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = sub_100398E68();

      v5 = sub_10023D684(v4);

      return v5;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

char *sub_10023DE14()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D6928);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = [v2 incorporateJourneyMetrics];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return v3;
  }

  sub_100004218(0, &qword_1004D43F0);
  v4 = sub_100399198();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v5 = sub_1003997F8();
  if (!v5)
  {
LABEL_16:

    return _swiftEmptyArrayStorage;
  }

LABEL_5:
  result = sub_100211EA4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_100399708();
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100211EA4((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    while (v5 != v7);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10023E084(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D6A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023E140@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100397748();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1001E27A8(&qword_1004D6A10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v90 - v13;
  v15 = [a1 properties];
  if (!v15)
  {
    goto LABEL_54;
  }

  v16 = v15;
  v117 = a3;
  sub_1001E27A8(&unk_1004D5850);
  v17 = sub_100398E68();

  if (!*(v17 + 16))
  {
    goto LABEL_53;
  }

  v18 = sub_1001EC1DC(0x6573616870, 0xE500000000000000);
  if ((v19 & 1) == 0)
  {
    goto LABEL_53;
  }

  v116 = a2;
  v20 = *(*(v17 + 56) + 8 * v18);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_53;
  }

  swift_unknownObjectRetain();
  v21 = sub_100399B18();
  if ((v21 & 0x100000000) != 0 || (v115 = v20, !*(v17 + 16)) || (v114 = v21, sub_1001EC1DC(0x6C616E696D726574, 0xED00006573616850), (v22 & 1) == 0))
  {

LABEL_35:
    swift_unknownObjectRelease();
LABEL_54:
    v48 = 1;
    goto LABEL_55;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_52:
    swift_unknownObjectRelease();
LABEL_53:

    goto LABEL_54;
  }

  swift_unknownObjectRetain();
  v23 = sub_100399B18();
  if ((v23 & 0x100000000) != 0)
  {
    goto LABEL_36;
  }

  if (!*(v17 + 16))
  {
    goto LABEL_36;
  }

  v113 = v23;
  v24 = sub_1001EC1DC(0x4449656C646E7562, 0xE800000000000000);
  if ((v25 & 1) == 0)
  {
    goto LABEL_36;
  }

  v120 = *(*(v17 + 56) + 8 * v24);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v112 = v119;
  if (!*(v17 + 16))
  {

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v111 = v118;
  v26 = sub_1001EC1DC(0x44496D657469, 0xE600000000000000);
  if ((v27 & 1) == 0)
  {
    goto LABEL_39;
  }

  v28 = *(*(v17 + 56) + 8 * v26);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
LABEL_51:

    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v109 = v29;
  if (!*(v17 + 16))
  {
LABEL_39:

LABEL_36:

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v110 = v28;
  swift_unknownObjectRetain();
  v30 = sub_1001EC1DC(0x65707954707061, 0xE700000000000000);
  if ((v31 & 1) == 0)
  {

LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v32 = *(*(v17 + 56) + 8 * v30);
  objc_opt_self();
  v108 = v32;
  if (!swift_dynamicCastObjCClass())
  {
LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_51;
  }

  swift_unknownObjectRetain();
  v107 = sub_100399B18();
  if ((v107 & 0x100000000) != 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  if (!*(v17 + 16) || (v33 = sub_1001EC1DC(0x656372756F73, 0xE600000000000000), (v34 & 1) == 0))
  {

LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v35 = *(*(v17 + 56) + 8 * v33);
  objc_opt_self();
  v106 = v35;
  if (!swift_dynamicCastObjCClass())
  {
LABEL_49:
    swift_unknownObjectRelease();
    goto LABEL_50;
  }

  swift_unknownObjectRetain();
  v105 = sub_100399B18();
  if ((v105 & 0x100000000) != 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  if (!*(v17 + 16) || (v36 = sub_1001EC1DC(0x546C6C6174736E69, 0xEB00000000657079), (v37 & 1) == 0))
  {

    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v38 = *(*(v17 + 56) + 8 * v36);
  objc_opt_self();
  v104 = v38;
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_49;
  }

  swift_unknownObjectRetain();
  v102 = sub_100399B18();
  if ((v102 & 0x100000000) != 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v39 = [a1 properties];
  if (v39)
  {
    v40 = v39;
    v41 = sub_100398E68();

    v103 = v41;
    if (*(v41 + 16))
    {

      v42 = sub_1001EC1DC(0x64496D6164417475, 0xE800000000000000);
      if (v43)
      {
        v44 = *(*(v103 + 56) + 8 * v42);
        swift_unknownObjectRetain();

        v118 = v44;
        v45 = swift_dynamicCast();
        v46 = v120;
        if (!v45)
        {
          v46 = 0;
        }

        v94 = v46;
        v47 = v45 ^ 1;
      }

      else
      {

        v94 = 0;
        v47 = 1;
      }

      v93 = v47;
      if (*(v103 + 16))
      {

        v52 = sub_1001EC1DC(0x7473656D69547475, 0xEB00000000706D61);
        if (v53)
        {
          v54 = *(*(v103 + 56) + 8 * v52);
          swift_unknownObjectRetain();

          v120 = v54;
          v55 = swift_dynamicCast();
          if (v55)
          {
            v56 = v118;
          }

          else
          {
            v56 = 0;
          }

          if (v55)
          {
            v57 = v119;
          }

          else
          {
            v57 = 0;
          }

          v100 = v57;
          v101 = v56;
        }

        else
        {

          v100 = 0;
          v101 = 0;
        }

        if (*(v103 + 16))
        {

          v58 = sub_1001EC1DC(0x6F64657273497475, 0xEE0064616F6C6E77);
          if (v59)
          {
            v60 = *(*(v103 + 56) + 8 * v58);
            swift_unknownObjectRetain();

            v118 = v60;
            v61 = swift_dynamicCast();
            v62 = v120;
            if (!v61)
            {
              v62 = 2;
            }
          }

          else
          {

            v62 = 2;
          }

          v99 = v62;
          if (*(v103 + 16))
          {

            v84 = sub_1001EC1DC(0x7461766972507475, 0xEE007475706E4965);
            if (v85)
            {
              v86 = *(*(v103 + 56) + 8 * v84);
              swift_unknownObjectRetain();

              v120 = v86;
              v87 = swift_dynamicCast();
              v88 = v118;
              if (!v87)
              {
                v88 = 0;
              }

              v96 = v88;
              if (v87)
              {
                v89 = v119;
              }

              else
              {
                v89 = 0;
              }

              v95 = v89;
LABEL_77:
              if (*(v103 + 16))
              {

                v63 = sub_1001EC1DC(0x63696C6275507475, 0xEB0000000079654BLL);
                if (v64)
                {
                  v65 = *(*(v103 + 56) + 8 * v63);
                  swift_unknownObjectRetain();

                  v120 = v65;
                  v66 = swift_dynamicCast();
                  v67 = v118;
                  if (!v66)
                  {
                    v67 = 0;
                  }

                  v92 = v67;
                  if (v66)
                  {
                    v68 = v119;
                  }

                  else
                  {
                    v68 = 0;
                  }

                  v91 = v68;
                }

                else
                {

                  v92 = 0;
                  v91 = 0;
                }

                if (*(v103 + 16))
                {

                  v70 = sub_1001EC1DC(0xD000000000000010, 0x800000010042E340);
                  if (v71)
                  {
                    v72 = *(*(v103 + 56) + 8 * v70);
                    swift_unknownObjectRetain();

                    v120 = v72;
                    v73 = swift_dynamicCast();
                    v74 = v118;
                    if (!v73)
                    {
                      v74 = 0;
                    }

                    v97 = v74;
                  }

                  else
                  {

                    v97 = 0;
                  }

                  if (*(v103 + 16))
                  {
                    v80 = sub_1001EC1DC(0xD000000000000017, 0x800000010042E360);
                    if (v81)
                    {
                      v98 = *(*(v103 + 56) + 8 * v80);
                      swift_unknownObjectRetain();

                      v118 = v98;
                      v82 = swift_dynamicCast();
                      v83 = v120;
                      LODWORD(v98) = v82 ^ 1;
                      if (!v82)
                      {
                        v83 = 0;
                      }

                      v103 = v83;
                      goto LABEL_96;
                    }
                  }

                  goto LABEL_94;
                }

                v69 = &v123;
              }

              else
              {
                v97 = 0;
                v92 = 0;
                v69 = &v121;
              }

              *(v69 - 32) = 0;
LABEL_94:

              v103 = 0;
              v51 = &v124;
              goto LABEL_95;
            }
          }

          v96 = 0;
          v95 = 0;
          goto LABEL_77;
        }
      }

      else
      {
        v100 = 0;
        v101 = 0;
      }

      v96 = 0;
      v95 = 0;
    }

    else
    {
      v94 = 0;
      v100 = 0;
      v101 = 0;
      v96 = 0;
      v95 = 0;
      v93 = 1;
    }

    v99 = 2;
    goto LABEL_77;
  }

  v103 = 0;
  v97 = 0;
  v92 = 0;
  v91 = 0;
  v96 = 0;
  v95 = 0;
  v100 = 0;
  v101 = 0;
  v94 = 0;
  v99 = 2;
  LODWORD(v98) = 1;
  v51 = &v122 + 4;
LABEL_95:
  *(v51 - 64) = 1;
LABEL_96:
  sub_100398638();
  v75 = [a1 timestamp];
  sub_100397708();

  v76 = [v109 stringValue];
  sub_100398F58();

  if (*(v17 + 16) && (v77 = sub_1001EC1DC(0xD000000000000011, 0x800000010042E320), (v78 & 1) != 0))
  {
    v79 = *(*(v17 + 56) + 8 * v77);
    swift_unknownObjectRetain();

    v120 = v79;
    swift_dynamicCast();
  }

  else
  {
  }

  sub_10023EF40(v14, v12);

  LOBYTE(v118) = v98;
  sub_100398958();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10023EFB0(v14);
  v48 = 0;
LABEL_55:
  v49 = sub_100398968();
  return (*(*(v49 - 8) + 56))(a4, v48, 1, v49);
}

uint64_t sub_10023EF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D6A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023EFB0(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D6A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10023F018(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  v67 = sub_100397748();
  v63 = *(v67 - 8);
  __chkstk_darwin(v67);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D6A28);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for WorkOrderStoreDebugDataProvider.FolderContent();
  v69 = *(v10 - 1);
  __chkstk_darwin(v10);
  v72 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003974E8();
  v68 = *(v12 - 8);
  __chkstk_darwin(v12);
  v71 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  sub_100397438(v15);
  v17 = v16;
  v74 = 0;
  v51 = v14;
  v18 = [v14 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:&v74];

  v19 = v74;
  if (v18)
  {
    v50 = sub_100399198();
    v20 = v19;

    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1003996F8(25);

    v74 = 0xD000000000000016;
    v75 = 0x800000010042E420;
    v76._countAndFlagsBits = sub_100397498();
    sub_100399068(v76);

    v77._countAndFlagsBits = 10;
    v77._object = 0xE100000000000000;
    sub_100399068(v77);
    v21 = sub_100397EC8();
    v22 = sub_1002408F4(&qword_1004D6A20, &type metadata accessor for DebugFileTextStream);
    sub_1003997D8();

    v65 = v22;
    v66 = v21;
    sub_1003997D8();
    v23 = *(v50 + 16);
    if (v23)
    {
      v24 = v12;
      v25 = *(v68 + 16);
      v26 = v50 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v27 = (v69 + 48);
      v60 = (v63 + 48);
      v69 = *(v68 + 72);
      v70 = v25;
      v54 = (v63 + 32);
      v53 = "Type: %@, Name: %@, Created: %@";
      v52 = (v63 + 8);
      v59 = "-----------------------\n";
      v58 = xmmword_1003C9260;
      v62 = v9;
      v63 = v5;
      v57 = v27;
      v64 = a2;
      v55 = v10;
      v61 = v24;
      v68 += 16;
      do
      {
        v28 = v71;
        v70(v71, v26, v24);
        sub_10023F8DC(v28, v9);
        if ((*v27)(v9, 1, v10) == 1)
        {
          sub_1001ED244(v9, &qword_1004D6A28);
        }

        else
        {
          v29 = v72;
          sub_100240834(v9, v72);
          sub_1001E2838(v29 + v10[7], v5);
          v30 = v67;
          if ((*v60)(v5, 1, v67) == 1)
          {
            sub_1001ED244(v5, &qword_1004D4CE0);
            v31 = 0xE300000000000000;
            v32 = 4271950;
          }

          else
          {
            v33 = v56;
            (*v54)(v56, v5, v30);
            v34 = [objc_allocWithZone(NSDateFormatter) init];
            v35 = sub_100398F28();
            [v34 setDateFormat:v35];

            isa = sub_100397688().super.isa;
            v37 = [v34 stringFromDate:isa];

            v32 = sub_100398F58();
            v31 = v38;

            v39 = v33;
            v10 = v55;
            (*v52)(v39, v30);
          }

          v40 = v72;
          if (*(v72 + v10[6]))
          {
            v41 = 0x726F746365726944;
          }

          else
          {
            v41 = 1701603654;
          }

          if (*(v72 + v10[6]))
          {
            v42 = 0xE900000000000079;
          }

          else
          {
            v42 = 0xE400000000000000;
          }

          sub_1001E27A8(&qword_1004D5860);
          v43 = swift_allocObject();
          *(v43 + 16) = v58;
          *(v43 + 56) = &type metadata for String;
          v44 = sub_100206BA0();
          *(v43 + 64) = v44;
          *(v43 + 32) = v41;
          *(v43 + 40) = v42;
          v45 = (v40 + v10[5]);
          v47 = *v45;
          v46 = v45[1];
          *(v43 + 96) = &type metadata for String;
          *(v43 + 104) = v44;
          *(v43 + 72) = v47;
          *(v43 + 80) = v46;
          *(v43 + 136) = &type metadata for String;
          *(v43 + 144) = v44;
          *(v43 + 112) = v32;
          *(v43 + 120) = v31;

          sub_100398F88();
          sub_1003997D8();

          sub_1003997D8();
          sub_100240898(v40);
          v9 = v62;
          v5 = v63;
          v24 = v61;
          v27 = v57;
        }

        v26 += v69;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v48 = v74;
    v49 = sub_1003973E8();

    swift_willThrow();
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1003996F8(36);
    v78._countAndFlagsBits = 0xD000000000000022;
    v78._object = 0x800000010042E3F0;
    sub_100399068(v78);
    v73 = v49;
    sub_1001E27A8(&qword_1004D4818);
    sub_1003997C8();
    sub_100397EC8();
    sub_1002408F4(&qword_1004D6A20, &type metadata accessor for DebugFileTextStream);
    sub_1003997D8();
  }
}

uint64_t sub_10023F8DC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1003974E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for WorkOrderStoreDebugDataProvider.FolderContent();
  v61 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v4;
  v13 = *(v4 + 16);
  v13(v12, a1, v3);
  v14 = sub_100397428();
  v62 = v10;
  v15 = &v12[*(v10 + 20)];
  *v15 = v14;
  v15[1] = v16;
  v58 = v16;
  v17 = [objc_opt_self() defaultManager];
  v63 = 0;
  sub_100397498();
  v18 = sub_100398F28();

  LODWORD(v10) = [v17 fileExistsAtPath:v18 isDirectory:&v63];

  if (!v10)
  {
    v56 = v17;
    v57 = v12;
    v29 = sub_1003993E8();
    sub_100206B54();
    v30 = sub_1003995A8();
    v13(v6, a1, v3);
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64[0] = v32;
      *v31 = 136315138;
      sub_1002408F4(&qword_1004D6A30, &type metadata accessor for URL);
      v33 = sub_100399998();
      v55 = v29;
      v35 = v34;
      v54 = v30;
      v36 = *(v59 + 8);
      v36(v6, v3);
      v37 = sub_100005700(v33, v35, v64);

      *(v31 + 4) = v37;
      v38 = v54;
      _os_log_impl(&_mh_execute_header, v54, v55, "File does not exist at URL: %s", v31, 0xCu);
      sub_100003894(v32);

      v36(a1, v3);
    }

    else
    {

      v36 = *(v59 + 8);
      v36(a1, v3);
      v36(v6, v3);
    }

    v36(v57, v3);

    return (*(v61 + 56))(v60, 1, 1, v62);
  }

  v57 = v3;
  v12[*(v62 + 24)] = v63;
  sub_100397498();
  v19 = sub_100398F28();

  v64[0] = 0;
  v20 = [v17 attributesOfItemAtPath:v19 error:v64];

  v21 = v64[0];
  v22 = a1;
  if (!v20)
  {
    v43 = v64[0];
    sub_1003973E8();

    swift_willThrow();
    v44 = sub_1003993E8();
    sub_100206B54();
    v45 = sub_1003995A8();
    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v45, v44, "Error getting file attributes: %@", v46, 0xCu);
      sub_1001ED244(v47, &qword_1004D8610);
    }

    else
    {
    }

    v49 = v57;
    v50 = *(v59 + 8);
    v50(v22, v57);
    v51 = v62;
    v52 = *(v62 + 28);
    v53 = sub_100397748();
    (*(*(v53 - 8) + 56))(&v12[v52], 1, 1, v53);
    v50(v12, v49);

    sub_1001ED244(&v12[*(v51 + 28)], &qword_1004D4CE0);
    return (*(v61 + 56))(v60, 1, 1, v62);
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1002408F4(&qword_1004D6178, type metadata accessor for FileAttributeKey);
  v23 = sub_100398E68();
  v24 = v21;

  if (*(v23 + 16) && (v25 = sub_10023DB30(NSFileCreationDate), (v26 & 1) != 0))
  {
    sub_1000038F4(*(v23 + 56) + 32 * v25, v64);

    (*(v59 + 8))(a1, v57);

    v27 = sub_100397748();
    v28 = swift_dynamicCast();
    (*(*(v27 - 8) + 56))(v9, v28 ^ 1u, 1, v27);
  }

  else
  {

    (*(v59 + 8))(a1, v57);
    v39 = sub_100397748();
    (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
  }

  v40 = v62;
  sub_100008BA8(v9, &v12[*(v62 + 28)]);
  v41 = v60;
  sub_10024093C(v12, v60);
  (*(v61 + 56))(v41, 0, 1, v40);
  return sub_100240898(v12);
}

uint64_t sub_100240180(uint64_t a1)
{
  v43 = sub_100397418();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v5;
  v6 = sub_1003974E8();
  v47 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v44 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v45 = &v34 - v10;
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = sub_1001E27A8(&qword_1004D6A18);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_100397EC8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397E88();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1001ED244(v15, &qword_1004D6A18);
    return 0;
  }

  else
  {
    v41 = v17;
    (*(v17 + 32))(v19, v15, v16);
    if (a1)
    {
      sub_1002408F4(&qword_1004D6A20, &type metadata accessor for DebugFileTextStream);

      sub_100397D18();
    }

    else
    {
      v50._object = 0x800000010042E380;
      v50._countAndFlagsBits = 0xD000000000000017;
      sub_100397EA8(v50);
    }

    v21 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
    v22 = sub_100399198();

    v23 = *(v22 + 16);
    if (v23)
    {
      v38 = v16;
      v39 = v12;
      v35 = *(v22 + 16 + 16 * v23);

      v34 = 0x8000000100428BE0;
      (*(v47 + 56))(v42, 1, 1, v6);
      v24 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v40 = v6;
      v25 = v46;
      v26 = *(v46 + 104);
      v37 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v27 = v43;
      v26(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v43);
      v36 = v26;
      v28 = v44;
      sub_1003974C8();
      v48 = 0xD00000000000001DLL;
      v49 = v34;
      v26(v3, v24, v27);
      v42 = sub_1001E4D94();
      v29 = v45;
      sub_1003974D8();
      v30 = *(v25 + 8);
      v46 = v25 + 8;
      v35 = v30;
      v30(v3, v27);
      v31 = *(v47 + 8);
      v31(v28, v40);
      v48 = 7562359;
      v49 = 0xE300000000000000;
      v36(v3, v37, v27);
      v6 = v40;
      sub_1003974D8();
      v32 = v27;
      v12 = v39;
      v35(v3, v32);
      v16 = v38;
      v31(v29, v6);
      sub_10023F018(v12, v19);
      v31(v12, v6);
    }

    else
    {

      v51._countAndFlagsBits = 0xD00000000000002BLL;
      v51._object = 0x800000010042E3A0;
      sub_100397EA8(v51);
    }

    sub_100397EB8();
    v33 = sub_100397498();
    (*(v47 + 8))(v12, v6);
    sub_100397E98();
    (*(v41 + 8))(v19, v16);
    return v33;
  }
}

uint64_t type metadata accessor for WorkOrderStoreDebugDataProvider.FolderContent()
{
  result = qword_1004D6A90;
  if (!qword_1004D6A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100240834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkOrderStoreDebugDataProvider.FolderContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100240898(uint64_t a1)
{
  v2 = type metadata accessor for WorkOrderStoreDebugDataProvider.FolderContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002408F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024093C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkOrderStoreDebugDataProvider.FolderContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002409D8()
{
  sub_1003974E8();
  if (v0 <= 0x3F)
  {
    sub_1001E2664();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100240A74()
{
  result = qword_1004D6AD8;
  if (!qword_1004D6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6AD8);
  }

  return result;
}

unint64_t sub_100240ADC()
{
  result = qword_1004D6AE0;
  if (!qword_1004D6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6AE0);
  }

  return result;
}

unint64_t sub_100240B30(uint64_t a1)
{
  sub_1001E27A8(&unk_1004D5A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  *(inited + 32) = 7955819;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_100397548(0);
  *(inited + 56) = v3;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x647261646E617473;
  *(inited + 88) = 0xE800000000000000;
  v9 = *(a1 + 40);
  *(inited + 96) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x64656C6961746564;
  *(inited + 136) = 0xE800000000000000;
  v8 = *(a1 + 80);
  v4 = v8;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v4;
  sub_100240F48(&v9, v7);
  sub_100240F48(&v8, v7);
  v5 = sub_1002142A8(inited);
  swift_setDeallocating();
  sub_1001E27A8(&unk_1004D5DD0);
  swift_arrayDestroy();
  return v5;
}

__n128 sub_100240C60@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_100397DD8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_100398E88();
  if (v2)
  {
    (*(v6 + 32))(a1, v10, v5);
  }

  else
  {
    v17 = v18;
    sub_100398E98();
    v19 = v18.n128_u64[1];
    v16 = v18.n128_u64[0];
    v12 = v17;
    sub_1001EF9F4(v17.n128_i64[0], v17.n128_u64[1]);
    sub_100398E98();
    v13 = v18;
    sub_1001EF9F4(v12.n128_i64[0], v12.n128_u64[1]);
    result = v17;
    *a2 = v17;
    *(a2 + 16) = result;
    *(a2 + 32) = 0;
    v14 = v19;
    *(a2 + 40) = v16;
    *(a2 + 48) = v14;
    *(a2 + 56) = result;
    *(a2 + 72) = 1;
    *(a2 + 80) = v13;
  }

  return result;
}

uint64_t sub_100240F00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100397508();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  v5 = 0xF000000000000000;
  if (v3 >> 60 != 15)
  {
    v5 = v3;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributionTokenType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributionTokenType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10024112C()
{
  result = qword_1004D6B90;
  if (!qword_1004D6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6B90);
  }

  return result;
}

unint64_t sub_100241180()
{
  v1 = objc_opt_self();
  sub_100241308();
  v2 = [v1 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = v3, (v5 = [v3 clientCodeBuckets]) == 0))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = v5;
  v7 = sub_100398E68();

  v8 = [v4 serverCodeBuckets];
  if (!v8)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v9 = v8;
  v10 = sub_100398E68();

  if (*(v0 + 16))
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = sub_10023D684(v11);

  swift_unknownObjectRelease();
  return v12;
}

unint64_t sub_100241308()
{
  result = qword_1004D6B98;
  if (!qword_1004D6B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D6B98);
  }

  return result;
}

uint64_t sub_100241378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1003999B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1002413FC(uint64_t a1)
{
  v2 = sub_100241850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100241438(uint64_t a1)
{
  v2 = sub_100241850();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100241474()
{
  sub_100399B58();
  sub_100399018();
  return sub_100399B88();
}

Swift::Int sub_1002414C8()
{
  sub_100399B58();
  sub_100399018();
  return sub_100399B88();
}

uint64_t sub_100241510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001E27A8(&qword_1004D6BA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_100241850();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v9 = sub_1003998B8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100003894(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_10024168C(void *a1)
{
  v2 = sub_1001E27A8(&qword_1004D6BB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035B8(a1, a1[3]);
  sub_100241850();
  sub_100399BF8();
  sub_100399958();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002417C8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1003999B8();
  }
}

unint64_t sub_1002417FC()
{
  result = qword_1004D6BA0;
  if (!qword_1004D6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6BA0);
  }

  return result;
}

unint64_t sub_100241850()
{
  result = qword_1004D6BB0;
  if (!qword_1004D6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6BB0);
  }

  return result;
}

unint64_t sub_1002418B8()
{
  result = qword_1004D6BC0;
  if (!qword_1004D6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6BC0);
  }

  return result;
}

unint64_t sub_100241910()
{
  result = qword_1004D6BC8;
  if (!qword_1004D6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6BC8);
  }

  return result;
}

unint64_t sub_100241968()
{
  result = qword_1004D6BD0;
  if (!qword_1004D6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6BD0);
  }

  return result;
}

uint64_t sub_1002419C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100397748();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v32[-v10];
  v12 = sub_1001E27A8(&qword_1004D4CE0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v32[-v16];
  v18 = *(v2 + 24);
  os_unfair_lock_lock(v18 + 4);
  swift_beginAccess();
  sub_10023BE68(a1, a2, v17);
  swift_endAccess();
  os_unfair_lock_unlock(v18 + 4);
  sub_1001E2838(v17, v15);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    sub_1001ED244(v17, &qword_1004D4CE0);
    v17 = v15;
  }

  else
  {
    (*(v6 + 32))(v11, v15, v5);
    sub_100397738();
    sub_100397668();
    v20 = v19;
    v21 = *(v6 + 8);
    v21(v9, v5);
    v22 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30);
    v23 = sub_1003995A8();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v23, v22, "App Installed to App Open delay is %fs", v24, 0xCu);
    }

    sub_1001E27A8(&unk_1004D5DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = 0x79616C6564;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithDouble:v20 * 1000.0];
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &qword_1004D5A28);
    v26 = [objc_opt_self() processInfo];
    v27 = [v26 isRunningTests];

    if (v27)
    {
    }

    else
    {
      v28 = objc_opt_self();
      v29 = sub_100398F28();
      sub_100004218(0, &qword_1004D5DC0);
      isa = sub_100398E48().super.isa;

      [v28 sendEventAppleDomain:v29 customPayload:isa];
    }

    v21(v11, v5);
  }

  return sub_1001ED244(v17, &qword_1004D4CE0);
}

uint64_t sub_100241E6C()
{

  return swift_deallocClassInstance();
}

unint64_t TokenProviderError.localizedDescription.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

Swift::Int TokenProviderError.hashValue.getter(char a1)
{
  sub_100399B58();
  sub_100399B68(a1 & 1);
  return sub_100399B88();
}

unint64_t sub_100241F88()
{
  result = qword_1004D6CA8;
  if (!qword_1004D6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6CA8);
  }

  return result;
}

uint64_t sub_100241FEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v62 = a3;
  v15 = sub_100397748();
  v64 = *(v15 - 8);
  v65 = v15;
  __chkstk_darwin(v15);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1003979F8();
  __chkstk_darwin(v17);
  v66 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AttributionSigner.Result();
  __chkstk_darwin(v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    sub_10024321C(a8, v21, type metadata accessor for AttributionPayloadDTO);
    v34 = type metadata accessor for AttributionPayloadDTO(0);
    (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
    v21[*(v19 + 24)] = 1;
    swift_storeEnumTagMultiPayload();
    v35 = &v21[*(v19 + 20)];
    *v35 = a1;
    v35[1] = a2;
    sub_1001EF9F4(a1, a2);
    a6(v21);
LABEL_8:
    v38 = type metadata accessor for AttributionSigner.Result;
    v39 = v21;
    return sub_100243298(v39, v38);
  }

  v60 = v17;
  v61 = a7;
  v59 = a6;
  v22 = sub_10024283C();
  v24 = sub_10024672C(a4, a5, v22, v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  if (!v28)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v36 = sub_1003995A8();
    sub_100398B98();

    goto LABEL_7;
  }

  if (v28 == 1)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v31 = sub_1003995A8();
    sub_100398B98();

    v32 = sub_100398F28();
    v33 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(10);
LABEL_7:
    v37 = type metadata accessor for AttributionPayloadDTO(0);
    (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
    v21[*(v19 + 24)] = 0;
    swift_storeEnumTagMultiPayload();
    *&v21[*(v19 + 20)] = xmmword_1003ECAE0;
    v59(v21);
    goto LABEL_8;
  }

  v58 = v30;
  v57 = v26;

  v41 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30);
  v42 = sub_1003995A8();
  v43 = os_log_type_enabled(v42, v41);
  v44 = v66;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543618;
    if (v62)
    {
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      v48 = v47;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    *(v45 + 4) = v47;
    *v46 = v48;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v42, v41, "Signing failed with %{public}@ .Scheduling signing retry with delay %f.", v45, 0x16u);
    sub_1001ED244(v46, &qword_1004D8610);
  }

  v62 = v24;

  v49 = *(sub_1001E27A8(&qword_1004D6CB8) + 64);
  v50 = v57;
  *v44 = v57;
  v44[1] = v28;
  v51 = v63;
  sub_100397738();
  sub_1003976B8();
  (*(v64 + 8))(v51, v65);
  v52 = sub_100397C98();
  if (v58)
  {
    v67 = _swiftEmptyArrayStorage;
    sub_1002432F8();
    sub_1001E27A8(&qword_1004D6CC8);
    sub_100243350();
    v50 = v57;
    sub_100399658();
    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = v59;
  (*(*(v52 - 8) + 56))(v44 + v49, v53, 1, v52);
  swift_storeEnumTagMultiPayload();
  v55 = type metadata accessor for AttributionPayloadDTO(0);
  (*(*(v55 - 8) + 56))(v21, 1, 1, v55);
  sub_10024321C(v44, &v21[*(v19 + 24)], &type metadata accessor for WorkResult);
  *&v21[*(v19 + 20)] = xmmword_1003ECAE0;
  v54(v21);
  sub_100243284(v62, v50, v28);
  sub_100243298(v21, type metadata accessor for AttributionSigner.Result);
  v38 = &type metadata accessor for WorkResult;
  v39 = v44;
  return sub_100243298(v39, v38);
}

uint64_t sub_100242790(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_100397558();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1001DDE50(v4, v8);
}

char *sub_10024283C()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D6928);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = v2, (v4 = [v2 signingBackoffSchedule]) == 0))
  {
    swift_unknownObjectRelease();
    return &off_1004799B8;
  }

  v5 = v4;
  sub_100004218(0, &qword_1004D43F0);
  v6 = sub_100399198();

  v7 = [v3 signingHoldTransactionLimit];
  if (!v7)
  {
    swift_unknownObjectRelease();

    return &off_1004799B8;
  }

  v8 = v7;
  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_19:

    v12 = _swiftEmptyArrayStorage;
LABEL_20:
    [v8 doubleValue];

    swift_unknownObjectRelease();
    return v12;
  }

  v9 = sub_1003997F8();
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_6:
  result = sub_1002373D4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = sub_100399708();
      }

      else
      {
        v13 = *(v6 + 8 * v11 + 32);
      }

      v14 = v13;
      [v13 doubleValue];
      v16 = v15;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_1002373D4((v17 > 1), v18 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      _swiftEmptyArrayStorage[v18 + 4] = v16;
    }

    while (v9 != v11);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_100242ABC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v12 = sub_100398FA8();
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributionPayloadDTO(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v47 = a1;
  v19 = a1;
  v21 = v20;
  sub_10024321C(v19, &v41 - v17, type metadata accessor for AttributionPayloadDTO);
  sub_10024321C(v18, v21, type metadata accessor for AttributionPayloadDTO);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = swift_allocObject();
  v44 = a2;
  v45 = a5;
  v23[2] = a2;
  v23[3] = a3;
  v24 = a6;
  v23[4] = a5;
  v23[5] = a6;
  sub_100243088(v18, v23 + v22);
  v25 = objc_opt_self();

  if (![v25 isAppleInternalInstall])
  {
    sub_100243298(v21, type metadata accessor for AttributionPayloadDTO);
LABEL_14:
    isa = sub_100397538().super.isa;
    v53 = sub_1002430EC;
    v54 = v23;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_100242790;
    *(&v52 + 1) = &unk_10047A890;
    v35 = _Block_copy(&aBlock);

    [a4 signatureForData:isa completion:v35];
    _Block_release(v35);

    return;
  }

  v46 = a4;
  sub_100398F58();
  v26 = objc_allocWithZone(NSUserDefaults);
  v27 = sub_100398F28();

  v28 = [v26 initWithSuiteName:v27];

  if (!v28)
  {
    sub_100243298(v21, type metadata accessor for AttributionPayloadDTO);
    a4 = v46;
    goto LABEL_14;
  }

  v29 = sub_100398F28();
  v30 = [v28 objectForKey:v29];

  if (v30)
  {
    sub_100399648();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  a4 = v46;
  aBlock = v49;
  v52 = v50;
  if (!*(&v50 + 1))
  {
    sub_100243298(v21, type metadata accessor for AttributionPayloadDTO);

    sub_1001ED244(&aBlock, &qword_1004D5D40);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100243298(v21, type metadata accessor for AttributionPayloadDTO);

    goto LABEL_14;
  }

  v31 = v48;
  v32 = [objc_opt_self() processInfo];
  v33 = [v32 isRunningTests];

  if (v33)
  {
    sub_100243298(v21, type metadata accessor for AttributionPayloadDTO);

    a4 = v46;
    goto LABEL_14;
  }

  if (v31)
  {
    sub_10024317C();
    v36 = swift_allocError();
    sub_100241FEC(0, 0xF000000000000000, v36, v44, a3, v45, a6, v21);
  }

  else
  {
    v37 = v41;
    sub_100398F98();
    v38 = sub_100398F68();
    v40 = v39;
    (*(v42 + 8))(v37, v43);
    sub_100241FEC(v38, v40, 0, v44, a3, v45, v24, v21);

    sub_1001DDE50(v38, v40);
  }

  sub_100243298(v21, type metadata accessor for AttributionPayloadDTO);
}

uint64_t sub_100243088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionPayloadDTO(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002430EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AttributionPayloadDTO(0) - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_100241FEC(a1, a2, a3, v8, v9, v10, v11, v12);
}

unint64_t sub_10024317C()
{
  result = qword_1004D6CB0;
  if (!qword_1004D6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6CB0);
  }

  return result;
}

uint64_t type metadata accessor for AttributionSigner.Result()
{
  result = qword_1004D6D38;
  if (!qword_1004D6D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10024321C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100243284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100243298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002432F8()
{
  result = qword_1004D6CC0;
  if (!qword_1004D6CC0)
  {
    sub_100397C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6CC0);
  }

  return result;
}

unint64_t sub_100243350()
{
  result = qword_1004D6CD0;
  if (!qword_1004D6CD0)
  {
    sub_1001E27F0(&qword_1004D6CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6CD0);
  }

  return result;
}

void sub_1002433DC()
{
  sub_100243478();
  if (v0 <= 0x3F)
  {
    sub_1002434D0();
    if (v1 <= 0x3F)
    {
      sub_1003979F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100243478()
{
  if (!qword_1004D6D48)
  {
    type metadata accessor for AttributionPayloadDTO(255);
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D6D48);
    }
  }
}

void sub_1002434D0()
{
  if (!qword_1004D6D50)
  {
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D6D50);
    }
  }
}

unint64_t sub_100243534()
{
  result = qword_1004D6D88;
  if (!qword_1004D6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6D88);
  }

  return result;
}

uint64_t sub_100243588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1001E27A8(&qword_1004D9A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003EB200;
  *(inited + 32) = a1;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = a2;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = a5;
  *(inited + 80) = a6;
  v12 = sub_100397748();
  *(inited + 136) = v12;
  *(inited + 144) = &protocol witness table for Date;
  v13 = sub_1001E6B7C((inited + 112));
  v14 = *(*(v12 - 8) + 16);
  v14(v13, a3, v12);
  *(inited + 176) = v12;
  *(inited + 184) = &protocol witness table for Date;
  v15 = sub_1001E6B7C((inited + 152));
  v14(v15, a3, v12);

  sub_10028037C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&unk_1004D9A30);
  swift_arrayDestroy();
  type metadata accessor for AttributionCandidate(0);
  sub_100397CF8();
}

uint64_t sub_100243964@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003970B8();
  swift_allocObject();
  sub_1003970A8();
  sub_1000035B8(a1, a1[3]);
  v5 = sub_100397B68();
  if (v2)
  {
  }

  v8 = v5;
  v9 = v6;
  v10 = type metadata accessor for AttributionCandidate(0);
  sub_100245F6C(&qword_1004D6D90, type metadata accessor for AttributionCandidate);
  sub_100397098();
  sub_1001EFA90(v8, v9);

  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

uint64_t sub_100243AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001E27A8(&unk_1004DCD00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003EB210;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = &protocol witness table for String;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = &protocol witness table for String;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  sub_100397748();

  sub_100397CF8();
}

uint64_t sub_100243E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a2;
  v10 = type metadata accessor for ComputedAttributions(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0x800000010042E850;
  sub_1003970E8();
  swift_allocObject();
  v14 = sub_1003970D8();
  sub_100245DE0(a1, v13, type metadata accessor for ComputedAttributions);
  v15 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v25;
  v17[2] = a4;
  v17[3] = v18;
  v17[4] = a6;
  v17[5] = 0xD000000000000041;
  v19 = v26;
  v17[6] = 0x800000010042E8C0;
  v17[7] = v19;
  v17[8] = a3;
  sub_100245E48(v13, v17 + v15);
  *(v17 + v16) = v14;
  v20 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v24;
  *v20 = 0xD00000000000006CLL;
  v20[1] = v21;

  sub_100397CC8();
}