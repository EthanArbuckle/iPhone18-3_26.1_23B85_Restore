void sub_100070394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000703B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = "[WAEngine _convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:forProcessToken:andReply:]_block_invoke";
      v17 = 1024;
      v18 = 3984;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to reply percentileWiFiStats", buf, 0x12u);
    }

    v13 = NSLocalizedFailureReasonErrorKey;
    v14 = @"WAErrorCodeInternalError";
    v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 40) + 8) + 40);
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 32) + 16);

    return v12();
  }
}

void sub_100071E70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446722;
    v9 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v10 = 1024;
    v11 = 4151;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:made DPSR %@ ", &v8, 0x1Cu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100071F70(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v5 = 1024;
    v6 = 4176;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:kSendReportAfterDelay expired", &v3, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100072034(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 112);
    *buf = 136446722;
    v29 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v30 = 1024;
    v31 = 4217;
    v32 = 1024;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS Study: Instance %d : start", buf, 0x18u);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    if (*(a1 + 88) == v4)
    {
      v5 = @"decisionInstance";
    }

    else
    {
      if (*(a1 + 96) - 1 != v4)
      {
        goto LABEL_10;
      }

      v5 = @"LastInstance";
    }
  }

  else
  {
    v5 = @"firstInstance";
  }

  v6 = +[NSDate date];
  [*(*(a1 + 32) + 176) setObject:v6 forKeyedSubscript:v5];

LABEL_10:
  v7 = (a1 + 32);
  *(*(*(a1 + 56) + 8) + 24) &= [*(a1 + 32) isWiFiAssociatedToNetwork];
  *(*(*(a1 + 64) + 8) + 24) &= [*(a1 + 32) isWiFiInterfacePrimary];
  v8 = *(a1 + 32);
  if (*(v8 + 43) == 1)
  {
    v9 = *(a1 + 112);
    if (v9)
    {
      v10 = *(a1 + 112);
    }

    else
    {
      v7 = [*(v8 + 184) preferences];
      if ([v7 dns_symptoms_trap_evaluated_at_sample] > v9)
      {

        goto LABEL_23;
      }

      v10 = *(a1 + 112);
      v8 = *(a1 + 32);
    }

    v11 = [*(v8 + 184) preferences];
    if ([v11 dns_symptoms_trap_evaluated_at_sample] <= v10)
    {
      v12 = (v9 & 1) == 0;
      v13 = [*(a1 + 32) isWiFiInterfacePrimary];

      if (v12)
      {

        if ((v13 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v13)
      {
LABEL_23:
        [*(a1 + 32) triggerDiagnosticPingWithrequestId:*(a1 + 112)];
        [*(a1 + 32) fetchSymptomsScores:*(a1 + 112)];
      }
    }

    else
    {

      if ((v9 & 1) == 0)
      {
      }
    }
  }

LABEL_24:
  objc_initWeak(buf, *(a1 + 32));
  v14 = *(a1 + 104);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000723A4;
  v20[3] = &unk_1000EE228;
  objc_copyWeak(v26, buf);
  v17 = *(a1 + 104);
  v24 = *(a1 + 72);
  v26[1] = v17;
  v21 = *(a1 + 40);
  v18 = *(a1 + 48);
  v27 = *(a1 + 112);
  v25 = *(a1 + 80);
  v19 = *(a1 + 32);
  v22 = v18;
  v23 = v19;
  [v15 _getNewMessageForKey:@"DPSCS" groupType:v14 forProcessToken:v16 shouldCheckForPrePopulation:1 andReply:v20];

  objc_destroyWeak(v26);
  objc_destroyWeak(buf);
}

void sub_100072380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000723A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained[66];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000724F4;
  v18[3] = &unk_1000EE200;
  v19 = v6;
  v20 = v5;
  v9 = *(a1 + 80);
  v21 = WeakRetained;
  v25 = v9;
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v26 = *(a1 + 88);
  *&v13 = *(a1 + 48);
  *(&v13 + 1) = v10;
  v24 = *(a1 + 64);
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v22 = v14;
  v23 = v13;
  v15 = WeakRetained;
  v16 = v5;
  v17 = v6;
  dispatch_async(v8, v18);
}

void sub_1000724F4(uint64_t a1)
{
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_10005CFFC;
  v77 = sub_10005D00C;
  v78 = 0;
  if (*(a1 + 32))
  {
    goto LABEL_11;
  }

  v2 = [*(a1 + 40) fieldForKey:@"DPSCS_peerStats"];
  v3 = [v2 subMessageValue];
  v4 = v3 == 0;

  if (!v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) fieldForKey:@"DPSCS_peerStats"];
    v7 = [v6 subMessageValue];
    [v5 _examinePeerMessageForIntegrity:v7];
  }

  if (*(a1 + 32))
  {
    goto LABEL_11;
  }

  v8 = [*(a1 + 40) fieldForKey:@"DPSCS_peerStats"];
  v9 = [v8 subMessageValue];
  v10 = [v9 fieldForKey:@"NWAPS_ccas"];
  v11 = [v10 repeatableValues];
  v12 = [v11 count] == 0;

  if (v12)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 40) fieldForKey:@"DPSCS_peerStats"];
      v16 = [v15 subMessageValue];
      *buf = 136446722;
      v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke_2";
      v83 = 1024;
      v84 = 4256;
      v85 = 2112;
      v86 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to get CCA %@", buf, 0x1Cu);
    }

    v79 = NSLocalizedFailureReasonErrorKey;
    v80 = @"WAErrorCodeCCAMissing";
    v17 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9021 userInfo:v17];
    v19 = *(*(a1 + 80) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 32))
  {
LABEL_11:
    v21 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      *buf = 136446722;
      v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v83 = 1024;
      v84 = 4263;
      v85 = 2112;
      v86 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Got error retrieving DPSCS due to %@", buf, 0x1Cu);
    }

    v23 = *(*(a1 + 80) + 8);
    v25 = *(v23 + 40);
    v24 = (v23 + 40);
    if (!v25)
    {
      objc_storeStrong(v24, *(a1 + 32));
      v26 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 136446722;
        v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        v83 = 1024;
        v84 = 4267;
        v85 = 2112;
        v86 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr will return %@", buf, 0x1Cu);
      }
    }

    v13 = 1;
  }

  if (*(*(a1 + 48) + 52) == 1)
  {
    v28 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v83 = 1024;
      v84 = 4273;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Setting shouldRetry to true due to debug command kWAIORCommandForceStudyErrorFromMsg", buf, 0x12u);
    }

    *(*(a1 + 48) + 52) = 0;
  }

  else if (!v13)
  {
    v41 = [*(a1 + 40) copy];
    v31 = v74[5];
    v74[5] = v41;
    goto LABEL_36;
  }

  v29 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v83 = 1024;
    v84 = 4281;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting Rescan", buf, 0x12u);
  }

  v30 = +[NSDate date];
  v31 = v30;
  if (*(*(a1 + 48) + 664) && ([v30 timeIntervalSinceDate:?], v32 > 30.0))
  {
    v33 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v83 = 1024;
      v84 = 4285;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attemping determineChannelsPerIORPopulatable", buf, 0x12u);
    }

    v34 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine DPSCS MissingChannelsRepopulate", "", buf, 2u);
    }

    v35 = [*(a1 + 48) iorMessagePopulator];
    [v35 determineChannelsPerIORPopulatable];

    v36 = *(a1 + 96);
    v37 = *(a1 + 48);
    v38 = *(a1 + 56);
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100072EB8;
    v68[3] = &unk_1000EE3B8;
    v71 = *(a1 + 80);
    v72 = &v73;
    v69 = *(a1 + 40);
    v70 = *(a1 + 64);
    [v37 _getNewMessageForKey:@"DPSCS" groupType:v36 forProcessToken:v38 shouldCheckForPrePopulation:1 andReply:v68];
    objc_storeStrong((*(a1 + 48) + 664), v31);
  }

  else
  {
    v39 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *(*(a1 + 48) + 664);
      *buf = 136446722;
      v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v83 = 1024;
      v84 = 4311;
      v85 = 2112;
      v86 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}s::%d:Rescanned too recently, waiting for 30s to elapse since last check at %@", buf, 0x1Cu);
    }

    dispatch_semaphore_signal(*(a1 + 64));
  }

LABEL_36:

  if (!v74[5])
  {
    goto LABEL_54;
  }

  v42 = *(a1 + 104);
  if (v42 == 1 || (v49 = *(a1 + 48), *(v49 + 43) == 1) && ([*(v49 + 184) preferences], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "dns_symptoms_trap_evaluated_at_sample") - 1 == v42, v50, v51))
  {
    v43 = *(a1 + 96);
    v44 = *(a1 + 48);
    v45 = *(a1 + 56);
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_100073154;
    v63 = &unk_1000EE1D8;
    v46 = v44;
    v47 = *(a1 + 88);
    v67 = *(a1 + 104);
    v48 = *(a1 + 72);
    v64 = v46;
    v65 = v48;
    v66 = v47;
    [v46 _getNewMessageForKey:@"DPSS" groupType:v43 forProcessToken:v45 shouldCheckForPrePopulation:1 andReply:&v60];
  }

  if (*(*(a1 + 48) + 43) != 1)
  {
    if (*(a1 + 104) >= 2u)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v52 = [*(*(a1 + 72) + 184) preferences];
  if ([v52 dns_symptoms_trap_evaluated_at_sample] != 1)
  {

LABEL_49:
    v54 = *(a1 + 48);
    v52 = [v74[5] fieldForKey:{@"DPSCS_controllerStats", v60, v61, v62, v63}];
    v55 = [v52 subMessageValue];
    [v54 populateChannelInfo:v55];

    goto LABEL_50;
  }

  if ((*(*(a1 + 48) + 43) & 1) == 0)
  {
    v53 = *(a1 + 104) < 2u;

    if (!v53)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

LABEL_50:

LABEL_51:
  v56 = [v74[5] fieldForKey:{@"DPSCS_timestamp", v60, v61, v62, v63}];
  [v56 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

  v57 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = v74[5];
    *buf = 136446722;
    v82 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v83 = 1024;
    v84 = 4342;
    v85 = 2112;
    v86 = v58;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding dpsStatsContainer %@ ", buf, 0x1Cu);
  }

  v59 = [*(*(*(a1 + 88) + 8) + 40) fieldForKey:@"DPSR_dpsCounterSamples"];
  [v59 addRepeatableSubMessageValue:v74[5]];

  dispatch_semaphore_signal(*(a1 + 64));
LABEL_54:
  _Block_object_dispose(&v73, 8);
}

void sub_100072E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072EB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v20 = 136446722;
      v21 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v22 = 1024;
      v23 = 4294;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr reset %@", &v20, 0x1Cu);
    }

    v17 = [*(a1 + 32) copy];
    v18 = *(*(a1 + 56) + 8);
    v11 = *(v18 + 40);
    *(v18 + 40) = v17;
    goto LABEL_10;
  }

  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v20 = 136446722;
    v21 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v22 = 1024;
    v23 = 4298;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:DPSCS retry still has error %@", &v20, 0x1Cu);
  }

  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a3);
    v11 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v20 = 136446722;
      v21 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v22 = 1024;
      v23 = 4302;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr will return %@", &v20, 0x1Cu);
    }

LABEL_10:
  }

  v19 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v19))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine DPSCS MissingChannelsRepopulate", "", &v20, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100073154(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 43) == 1)
  {
    v8 = *(v7 + 192);
    v9 = [*(*(*(a1 + 48) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
    v10 = [v9 subMessageValue];
    v11 = [v10 fieldForKey:@"DPSE_symptomsDnsStats"];
    v12 = [v11 subMessageValue];
    *(*(a1 + 32) + 48) |= [v8 checkAWDLActivity:v5 symptomsDnsStats:v12];
  }

  if (v6)
  {
    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446466;
      v17 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v18 = 1024;
      v19 = 4331;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:error populating DPSR_snapshot", &v16, 0x12u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (*(a1 + 56) == 1)
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446466;
      v17 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v18 = 1024;
      v19 = 4326;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding DPSR_snapshot", &v16, 0x12u);
    }

    v15 = +[NSDate date];
    [*(*(a1 + 40) + 176) setObject:v15 forKeyedSubscript:@"snapshotInstance"];

    v13 = [*(*(*(a1 + 48) + 8) + 40) fieldForKey:@"DPSR_snapshot"];
    [v13 setSubMessageValue:v5];
    goto LABEL_10;
  }

LABEL_11:
}

void sub_1000733A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 88);
    if (*(v4 + 43))
    {
      v6 = [*(v4 + 184) preferences];
      v7 = [v6 dns_symptoms_trap_evaluated_at_sample] - 1;

      if (v7 != v5)
      {
        goto LABEL_105;
      }

      v8 = [*(a1 + 32) isWiFiNetworkCaptive];
      [*(a1 + 32) computeAverageCcaSinceStudyStart:*(*(*(a1 + 56) + 8) + 40)];
      v9 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "NO";
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v11 = "YES";
        }

        else
        {
          v11 = "NO";
        }

        if (*(*(*(a1 + 80) + 8) + 24))
        {
          v12 = "YES";
        }

        else
        {
          v12 = "NO";
        }

        if (v8)
        {
          v13 = "YES";
        }

        else
        {
          v13 = "NO";
        }

        if (*(a1 + 92))
        {
          v10 = "YES";
        }

        *buf = 136447490;
        v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        v115 = 1024;
        v116 = 4497;
        v117 = 2080;
        v118 = v11;
        v119 = 2080;
        v120 = v12;
        v121 = 2080;
        v122 = v13;
        v123 = 2080;
        v124 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS Symptoms pre-decision check:: Associated:%s Primary:%s isCaptive:%s isValidDnsConfig:%s", buf, 0x3Au);
      }

      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        if (!(v8 & 1 | ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)) && *(a1 + 92) == 1)
        {
          v14 = [*(a1 + 32) dpsQuickRecoveryEngine];
          v15 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
          v16 = [v15 subMessageValue];
          v17 = [v16 fieldForKey:@"DPSE_symptomsDnsStats"];
          v18 = [v17 subMessageValue];
          v19 = *(a1 + 32);
          LODWORD(v97) = *(v19 + 248);
          v20 = [v14 recommendSymptomsDpsRecovery:0 symptomsDnsStats:v18 awdlState:*(v19 + 48) currentSymptomsCondition:*(v19 + 45) isLANPingSuccessful:*(v19 + 47) appUsage:*(v19 + 42) averageCCA:v97 driverType:*(v19 + 776)];

          goto LABEL_62;
        }

        if (*(*(*(a1 + 80) + 8) + 24))
        {
          v58 = *(a1 + 92);
          v59 = WALogCategoryDefaultHandle();
          v14 = v59;
          if (v58)
          {
            if (!v8)
            {
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
                v115 = 1024;
                v116 = 4525;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:SDNS: Unhandled running conditions", buf, 0x12u);
              }

              goto LABEL_61;
            }

            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
              v115 = 1024;
              v116 = 4522;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: WiFi is Captive - setting suppressedReason kSymptomsDnsWiFiNetworkIsCaptive", buf, 0x12u);
            }

            v14 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
            v52 = [v14 subMessageValue];
            v53 = [v52 fieldForKey:@"DPSE_symptomsDnsStats"];
            v54 = [v53 subMessageValue];
            v55 = [v54 fieldForKey:@"WFAAWDWASDS_suppressedReason"];
            v56 = v55;
            v57 = 9;
          }

          else
          {
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
              v115 = 1024;
              v116 = 4518;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: DNS Config Not Valid - setting suppressedReason kSymptomsDnsServerConfigurationInvalid", buf, 0x12u);
            }

            v14 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
            v52 = [v14 subMessageValue];
            v53 = [v52 fieldForKey:@"DPSE_symptomsDnsStats"];
            v54 = [v53 subMessageValue];
            v55 = [v54 fieldForKey:@"WFAAWDWASDS_suppressedReason"];
            v56 = v55;
            v57 = 10;
          }
        }

        else
        {
          v60 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
            v115 = 1024;
            v116 = 4514;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: WiFi Not Primary - setting suppressedReason kSymptomsDnsWiFiInterfaceNotPrimary", buf, 0x12u);
          }

          v14 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
          v52 = [v14 subMessageValue];
          v53 = [v52 fieldForKey:@"DPSE_symptomsDnsStats"];
          v54 = [v53 subMessageValue];
          v55 = [v54 fieldForKey:@"WFAAWDWASDS_suppressedReason"];
          v56 = v55;
          v57 = 8;
        }
      }

      else
      {
        v51 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v115 = 1024;
          v116 = 4510;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: WiFi Not Associated - setting suppressedReason kSymptomsDnsWiFiDisassociatedDuringStudy", buf, 0x12u);
        }

        v14 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
        v52 = [v14 subMessageValue];
        v53 = [v52 fieldForKey:@"DPSE_symptomsDnsStats"];
        v54 = [v53 subMessageValue];
        v55 = [v54 fieldForKey:@"WFAAWDWASDS_suppressedReason"];
        v56 = v55;
        v57 = 6;
      }

      [v55 setInt32Value:v57];

LABEL_61:
      v20 = 0;
LABEL_62:

      v67 = [*(a1 + 32) interfaceNameToApple80211InstanceMap];
      v68 = [*(a1 + 32) infraInterfaceName];
      v69 = [v67 objectForKeyedSubscript:v68];

      if (!v69)
      {
        [*(a1 + 32) queryInfraInterfaceInstanceAndChip];
      }

      if (v20 == 2)
      {
        v71 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v115 = 1024;
          v116 = 4541;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: Recommendation - kSymptomsdDPSReassoc, Triggering Reassoc for symptoms-dps with reason kDNSSymptomsRecoveryReassocOnlyCCReason", buf, 0x12u);
        }

        *(*(a1 + 32) + 60) |= 0x80u;
        v72 = [*(a1 + 32) interfaceNameToApple80211InstanceMap];
        v73 = [*(a1 + 32) infraInterfaceName];
        v74 = [v72 objectForKeyedSubscript:v73];
        [v74 triggerReassociation:@"DNSFailureRecovery-Reassoc-Only"];
      }

      else
      {
        if (v20 != 1)
        {
          v72 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
            v115 = 1024;
            v116 = 4545;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: No Recommendation for symptoms-dps", buf, 0x12u);
          }

          goto LABEL_77;
        }

        v70 = *(a1 + 32);
        if (v70[97] == 3)
        {
          [v70 triggerStepwiseDNSRecovery];
LABEL_78:
          v76 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
            v115 = 1024;
            v116 = 4547;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Persisting after DNS symptoms recovery decision", buf, 0x12u);
          }

          [*(a1 + 32) persist];
          goto LABEL_105;
        }

        v75 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v115 = 1024;
          v116 = 4536;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: Recommendation - WASymptomsDpsRecommendDoReset, Triggering Trap for symptoms-dps with reason TrapOnDNSSymptoms", buf, 0x12u);
        }

        *(*(a1 + 32) + 60) |= 0x40u;
        v72 = [*(a1 + 32) interfaceNameToApple80211InstanceMap];
        v73 = [*(a1 + 32) infraInterfaceName];
        v74 = [v72 objectForKeyedSubscript:v73];
        [v74 triggerDpsReset:@"TrapOnDNSSymptoms" metaData:0];
      }

LABEL_77:
      goto LABEL_78;
    }

    v22 = "DictionaryRef";
    if (v5 != 1)
    {
      goto LABEL_104;
    }

    if (!*(a1 + 40))
    {
      goto LABEL_104;
    }

    v23 = [v3 fieldForKey:@"DPSR_dpsCounterSamples"];
    v24 = [v23 repeatableValues];
    v25 = [v24 count];

    v4 = *(a1 + 32);
    if (v25 < 2)
    {
LABEL_104:
      v94 = *(v4 + 184);
      v95 = *(*(*(a1 + 56) + 8) + 40);
      v96 = *(v4 + 776);
      v109[0] = _NSConcreteStackBlock;
      v109[1] = *(v22 + 106);
      v109[2] = sub_100074770;
      v109[3] = &unk_1000EE278;
      v111 = *(a1 + 72);
      v109[4] = v4;
      v110 = *(a1 + 48);
      [v94 recommendActionFromData:v95 driverType:v96 andReply:v109];

      goto LABEL_105;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000746FC;
    block[3] = &unk_1000ED880;
    block[4] = v4;
    if (qword_10010DEB8 != -1)
    {
      dispatch_once(&qword_10010DEB8, block);
    }

    v26 = [*(*(a1 + 32) + 168) getAggregateFailureSnapshotFromDPSR:*(*(*(a1 + 56) + 8) + 40)];
    v27 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke_2";
      v115 = 1024;
      v116 = 4377;
      v117 = 2112;
      v118 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS: AggregateSnapshot: %@\n", buf, 0x1Cu);
    }

    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      v61 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        v115 = 1024;
        v116 = 4424;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Aborting DPS recovery since WiFi got disassociated atleast once since initial trigger", buf, 0x12u);
      }

      v62 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
      v63 = [v62 subMessageValue];
      v64 = [v63 fieldForKey:@"DPSE_qDpsStats"];
      v65 = [v64 subMessageValue];
      v66 = [v65 fieldForKey:@"WFAAWDWAQDS_suppressedReason"];
      [v66 setInt32Value:4];

      goto LABEL_103;
    }

    v104 = *(a1 + 40);
    v108 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsCounterSamples"];
    v107 = [v108 repeatableValues];
    v103 = [v107 objectAtIndex:0];
    v106 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsCounterSamples"];
    v105 = [v106 repeatableValues];
    v28 = [v105 objectAtIndex:1];
    v99 = *(*(a1 + 32) + 544);
    v100 = v28;
    v102 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
    v101 = [v102 subMessageValue];
    v29 = [v101 fieldForKey:@"DPSE_qDpsStats"];
    v30 = [v29 subMessageValue];
    v31 = [*(a1 + 32) wifiChipSet];
    v32 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_snapshot"];
    v33 = [v32 subMessageValue];
    v34 = [*(a1 + 32) dpsNotificationCCA];
    v35 = *(a1 + 32);
    v36 = v35[97];
    LOBYTE(v98) = [v35 isNANEnabled];
    LODWORD(v97) = v34;
    v37 = [v104 recommendReset:v103 currentSample:v100 acList:v99 qDpsStat:v30 chipNumber:v31 dpsSnapshot:v33 originalCCA:v97 aggregateFailureSnaphot:v26 driverType:v36 nanEnabled:v98];

    v38 = +[NSDate date];
    [v38 timeIntervalSince1970];
    v40 = v39;

    v41 = *(*(a1 + 32) + 208);
    if (v40 > v41)
    {
      v42 = v40 - v41;
      v43 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        v115 = 1024;
        v116 = 4396;
        v117 = 1024;
        LODWORD(v118) = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Time elapsed since original dps detection: %d seconds", buf, 0x18u);
      }

      if (v37 == 1 && v42 <= 5)
      {
        v44 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v115 = 1024;
          v116 = 4400;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Reseting (fast reset recovery)... to recover from DPS at 6s stall checkpoint.", buf, 0x12u);
        }

        v45 = [*(a1 + 32) interfaceNameToApple80211InstanceMap];
        v46 = [*(a1 + 32) infraInterfaceName];
        v47 = [v45 objectForKeyedSubscript:v46];
        v22 = "DictionaryRef";
        if (v47)
        {
          v48 = v47;
          v49 = [*(a1 + 32) wifiChipSet];
          v50 = [v49 isEqualToString:&stru_1000F04E0];

          if (!v50)
          {
            goto LABEL_93;
          }
        }

        else
        {
        }

        [*(a1 + 32) queryInfraInterfaceInstanceAndChip];
LABEL_93:
        *(*(a1 + 32) + 60) |= 4u;
        v82 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = [*(a1 + 32) wifiChipSet];
          v84 = [*(a1 + 32) infraInterfaceName];
          v85 = [*(a1 + 32) interfaceNameToApple80211InstanceMap];
          v86 = [*(a1 + 32) infraInterfaceName];
          v87 = [v85 objectForKeyedSubscript:v86];
          *buf = 136447234;
          v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v88 = @"Yes";
          v115 = 1024;
          v116 = 4408;
          if (!v87)
          {
            v88 = @"No";
          }

          v117 = 2112;
          v118 = v83;
          v119 = 2112;
          v120 = v84;
          v121 = 2112;
          v122 = v88;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Triggering Trap for Quick DPS in chip:%@ interface:%@ apple80211InstanceValid:%@", buf, 0x30u);
        }

        v89 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v115 = 1024;
          v116 = 4410;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:QDPS: Recommendation - kFastDPSWatchdog, triggering DpsReset with reason TrapOnQuickDPS", buf, 0x12u);
        }

        v77 = [*(a1 + 32) interfaceNameToApple80211InstanceMap];
        v90 = [*(a1 + 32) infraInterfaceName];
        v91 = [v77 objectForKeyedSubscript:v90];
        v92 = [*(a1 + 32) getDpsMetaDataString];
        [v91 triggerDpsReset:@"TrapOnQuickDPS" metaData:v92];

        goto LABEL_100;
      }
    }

    if (v37 == 2)
    {
      *(*(a1 + 32) + 60) |= 0x10u;
      v77 = WALogCategoryDefaultHandle();
      v22 = "NCFDictionaryRef" + 3;
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
LABEL_100:

        v93 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v115 = 1024;
          v116 = 4421;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Persisting after Quick DPS recovery decision", buf, 0x12u);
        }

        [*(a1 + 32) persist];
LABEL_103:

        v4 = *(a1 + 32);
        goto LABEL_104;
      }

      *buf = 136446466;
      v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v115 = 1024;
      v116 = 4415;
      v78 = "%{public}s::%d:QDPS: No Watchdog Budget";
      v79 = v77;
      v80 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v81 = WALogCategoryDefaultHandle();
      v22 = "NCFDictionaryRef" + 3;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        v115 = 1024;
        v116 = 4417;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Aborting Quick DPS recovery action due to notification/study delay", buf, 0x12u);
      }

      v77 = WALogCategoryDefaultHandle();
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_100;
      }

      *buf = 136446466;
      v114 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v115 = 1024;
      v116 = 4419;
      v78 = "%{public}s::%d:QDPS: Unhandled case";
      v79 = v77;
      v80 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&_mh_execute_header, v79, v80, v78, buf, 0x12u);
    goto LABEL_100;
  }

  v21 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "nil message passed in to recommendActionFromData", buf, 2u);
  }

LABEL_105:
  objc_autoreleasePoolPop(v2);
}

void sub_1000746FC(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiChipSet];
  v3 = [v2 isEqualToString:&stru_1000F04E0];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 queryInfraInterfaceInstanceAndChip];
  }
}

void sub_100074770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = &__kCFBooleanFalse;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_41;
      }

      v7 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136446466;
        *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        *&v20[12] = 1024;
        *&v20[14] = 4450;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendFullCapture", v20, 0x12u);
      }

      v8 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136446722;
        *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        *&v20[12] = 1024;
        *&v20[14] = 4451;
        *&v20[18] = 2112;
        *&v20[20] = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDPS: Recommend Full Capture, with classification %@", v20, 0x1Cu);
      }

      [*(*(a1 + 32) + 512) __dumpCoreCaptureLogsWithReason:v5];
      goto LABEL_40;
    }

    v13 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136446466;
      *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      *&v20[12] = 1024;
      *&v20[14] = 4433;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendNull", v20, 0x12u);
    }

    if ([v5 isEqualToString:@"dps_wd_cca"])
    {
      [*(*(*(a1 + 48) + 8) + 40) setObject:@"SlowDpsCcaThreshold" forKeyedSubscript:@"sDpsSuppressionReason"];
      v10 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"sDpsSuppressionReason"];
        *v20 = 136446722;
        *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        *&v20[12] = 1024;
        *&v20[14] = 4437;
        *&v20[18] = 2112;
        *&v20[20] = v11;
        v12 = "%{public}s::%d:SDPS: No Recommendation - setting suppressedReason %@";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, v20, 0x1Cu);
      }
    }

    else if ([v5 isEqualToString:@"dps_wd_rssi"])
    {
      [*(*(*(a1 + 48) + 8) + 40) setObject:@"SlowDpsRssiThreshold" forKeyedSubscript:@"sDpsSuppressionReason"];
      v10 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"sDpsSuppressionReason"];
        *v20 = 136446722;
        *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        *&v20[12] = 1024;
        *&v20[14] = 4440;
        *&v20[18] = 2112;
        *&v20[20] = v11;
        v12 = "%{public}s::%d:SDPS: No Recommendation - setting suppressedReason %@";
        goto LABEL_38;
      }
    }

    else
    {
      if (![v5 isEqualToString:&stru_1000F04E0])
      {
        v10 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136446466;
          *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          *&v20[12] = 1024;
          *&v20[14] = 4445;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDPS: No Recommendation", v20, 0x12u);
        }

        goto LABEL_39;
      }

      [*(*(*(a1 + 48) + 8) + 40) setObject:@"SlowDpsRecoveryObserved" forKeyedSubscript:@"sDpsSuppressionReason"];
      v10 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"sDpsSuppressionReason"];
        *v20 = 136446722;
        *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
        *&v20[12] = 1024;
        *&v20[14] = 4443;
        *&v20[18] = 2112;
        *&v20[20] = v11;
        v12 = "%{public}s::%d:SDPS: No Recommendation - setting suppressedReason %@";
        goto LABEL_38;
      }
    }

LABEL_39:

LABEL_40:
    v6 = &__kCFBooleanFalse;
    goto LABEL_41;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      goto LABEL_41;
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136446466;
      *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      *&v20[12] = 1024;
      *&v20[14] = 4472;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendNoneNoWatchdogBudget", v20, 0x12u);
    }

    *(*(a1 + 32) + 60) |= 8u;
    [*(*(*(a1 + 48) + 8) + 40) setObject:@"SlowDpsNoBudget" forKeyedSubscript:@"sDpsSuppressionReason"];
    v10 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v11 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"sDpsSuppressionReason"];
    *v20 = 136446722;
    *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    *&v20[12] = 1024;
    *&v20[14] = 4477;
    *&v20[18] = 2112;
    *&v20[20] = v11;
    v12 = "%{public}s::%d:SDPS: No Watchdog Budget - setting suppressedReason %@";
    goto LABEL_38;
  }

  v14 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 136446466;
    *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    *&v20[12] = 1024;
    *&v20[14] = 4456;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WARecommendTrapWatchdog", v20, 0x12u);
  }

  if ((*(*(a1 + 32) + 60) & 4) != 0)
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136446466;
      *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      *&v20[12] = 1024;
      *&v20[14] = 4458;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fast DPS already triggered, not proceeding with WARecommendTrapWatchdog", v20, 0x12u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:@"SlowDpsAbortedSinceQDpsTriggered" forKeyedSubscript:@"sDpsSuppressionReason"];
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"sDpsSuppressionReason"];
      *v20 = 136446722;
      *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      *&v20[12] = 1024;
      *&v20[14] = 4461;
      *&v20[18] = 2112;
      *&v20[20] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDPS: Recommendation WARecommendTrapWatchdog - setting suppressedReason %@", v20, 0x1Cu);
    }
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:@"SlowDpsNotSuppressed" forKeyedSubscript:@"sDpsSuppressionReason"];
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136446722;
      *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      *&v20[12] = 1024;
      *&v20[14] = 4464;
      *&v20[18] = 2112;
      *&v20[20] = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDPS: Recommendation WARecommendTrapWatchdog - triggering DpsReset with reason %@", v20, 0x1Cu);
    }

    [*(a1 + 32) _trapFWWithReason:v5 andReply:*(a1 + 40)];
    *(*(a1 + 32) + 60) |= 2u;
  }

  v6 = &__kCFBooleanTrue;
LABEL_41:
  [*(*(*(a1 + 48) + 8) + 40) setObject:v6 forKeyedSubscript:{@"sDpsStudyRecommendation", *v20, *&v20[16]}];
  v19 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 136446466;
    *&v20[4] = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    *&v20[12] = 1024;
    *&v20[14] = 4485;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Persisting after Slow DPS recovery decision", v20, 0x12u);
  }

  [*(a1 + 32) persist];
}

void sub_100074FF8(uint64_t a1)
{
  v2 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v3 = [v2 subMessageValue];
  v4 = [v3 fieldForKey:@"DPSE_isAssociatedAtStudyEnd"];
  [v4 setBoolValue:{objc_msgSend(*(a1 + 32), "isWiFiAssociatedToNetwork")}];

  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v7 = [v6 subMessageValue];
  v8 = [v7 fieldForKey:@"DPSE_discoveredPeerInfo"];
  v9 = [v8 subMessageValue];
  [v5 gatherDiscoveredPeerInfo:v9];

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v138 = a1;
  v10 = *(*(a1 + 32) + 544);
  v11 = [v10 countByEnumeratingWithState:&v156 objects:v174 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v157;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v157 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v156 + 1) + 8 * i);
        v16 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v162 = 1024;
          v163 = 4567;
          v164 = 2112;
          v165 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached DPSR_stallNotifications: %@", buf, 0x1Cu);
        }

        v17 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_stallNotifications"];
        [v17 addRepeatableSubMessageValue:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v156 objects:v174 count:16];
    }

    while (v12);
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v18 = *(*(v138 + 32) + 552);
  v19 = [v18 countByEnumeratingWithState:&v152 objects:v173 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v153;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v153 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v152 + 1) + 8 * j);
        v24 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v162 = 1024;
          v163 = 4572;
          v164 = 2112;
          v165 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached DPSR_probeResults: %@", buf, 0x1Cu);
        }

        v25 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_probeResults"];
        [v25 addRepeatableSubMessageValue:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v152 objects:v173 count:16];
    }

    while (v20);
  }

  v26 = [*(*(v138 + 32) + 560) lastObject];
  if (v26)
  {
    v27 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v162 = 1024;
      v163 = 4580;
      v164 = 2112;
      v165 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached DPSR_dpsCounterSamples: %@", buf, 0x1Cu);
    }

    v28 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsCounterSamples"];
    [v28 addRepeatableSubMessageValue:v26];
  }

  v29 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v162 = 1024;
    v163 = 4584;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DatapathStall Summary!", buf, 0x12u);
  }

  v30 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_stallNotifications"];
    v32 = [v31 repeatableValues];
    v33 = [v32 count];
    *buf = 136446722;
    v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v162 = 1024;
    v163 = 4585;
    v164 = 2048;
    v165 = v33;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPSR_stallNotifications: %lu", buf, 0x1Cu);
  }

  v34 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_probeResults"];
    v36 = [v35 repeatableValues];
    v37 = [v36 count];
    *buf = 136446722;
    v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v162 = 1024;
    v163 = 4586;
    v164 = 2048;
    v165 = v37;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPSR_probeResults: %lu", buf, 0x1Cu);
  }

  v137 = v26;

  v38 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsCounterSamples"];
    v40 = [v39 repeatableValues];
    v41 = [v40 count];
    *buf = 136446722;
    v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v162 = 1024;
    v163 = 4587;
    v164 = 2048;
    v165 = v41;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPSR_dpsCounterSamples: %lu", buf, 0x1Cu);
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v42 = *(*(v138 + 32) + 568);
  v43 = [v42 countByEnumeratingWithState:&v148 objects:v172 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v149;
    do
    {
      for (k = 0; k != v44; k = k + 1)
      {
        if (*v149 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v148 + 1) + 8 * k);
        v48 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v162 = 1024;
          v163 = 4591;
          v164 = 2112;
          v165 = v47;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached DPSE_associationChanges: %@", buf, 0x1Cu);
        }

        v49 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
        v50 = [v49 subMessageValue];
        v51 = [v50 fieldForKey:@"DPSE_associationChanges"];
        [v51 addRepeatableSubMessageValue:v47];
      }

      v44 = [v42 countByEnumeratingWithState:&v148 objects:v172 count:16];
    }

    while (v44);
  }

  v146 = 0u;
  v147 = 0u;
  v145 = 0u;
  v144 = 0u;
  v52 = *(*(v138 + 32) + 488);
  v53 = [v52 countByEnumeratingWithState:&v144 objects:v171 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v145;
    do
    {
      for (m = 0; m != v54; m = m + 1)
      {
        if (*v145 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v144 + 1) + 8 * m);
        v58 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v162 = 1024;
          v163 = 4596;
          v164 = 2112;
          v165 = v57;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached DPSE_accessPointInfo: %@", buf, 0x1Cu);
        }

        v59 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
        v60 = [v59 subMessageValue];
        v61 = [v60 fieldForKey:@"DPSE_accessPointInfos"];
        [v61 addRepeatableSubMessageValue:v57];
      }

      v54 = [v52 countByEnumeratingWithState:&v144 objects:v171 count:16];
    }

    while (v54);
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v62 = v138;
  v63 = *(*(v138 + 32) + 504);
  v64 = [v63 countByEnumeratingWithState:&v140 objects:v170 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v141;
    do
    {
      for (n = 0; n != v65; n = n + 1)
      {
        if (*v141 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v140 + 1) + 8 * n);
        v69 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
          v162 = 1024;
          v163 = 4601;
          v164 = 2112;
          v165 = v68;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached DPSR_usbEvent: %@", buf, 0x1Cu);
        }

        v62 = v138;
        v70 = [*(*(*(v138 + 56) + 8) + 40) fieldForKey:@"DPSR_usbEvents"];
        [v70 addRepeatableSubMessageValue:v68];
      }

      v65 = [v63 countByEnumeratingWithState:&v140 objects:v170 count:16];
    }

    while (v65);
  }

  v71 = *(v62 + 32);
  if (*(v71 + 43))
  {
    v72 = *(v71 + 496);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007655C;
    block[3] = &unk_1000EE2C8;
    v73 = *(v62 + 80);
    v74 = *(v62 + 56);
    block[4] = v71;
    block[5] = v74;
    block[6] = v73;
    dispatch_sync(v72, block);
  }

  else
  {
    v75 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
    v76 = [v75 subMessageValue];
    v77 = [v76 fieldForKey:@"DPSE_studyType"];
    [v77 setInt32Value:0];
  }

  v78 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v79 = [v78 subMessageValue];
  v80 = [v79 fieldForKey:@"DPSE_action"];
  [v80 setInt32Value:*(*(v62 + 32) + 60)];

  v81 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v82 = [v81 subMessageValue];
  v83 = [v82 fieldForKey:@"DPSE_actionIntVal"];
  [v83 setUint32Value:*(*(v62 + 32) + 60)];

  v84 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v85 = [v84 subMessageValue];
  v86 = [v85 fieldForKey:@"DPSE_timestamp"];
  [v86 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

  v87 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    v88 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
    *buf = 136446722;
    v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v162 = 1024;
    v163 = 4667;
    v164 = 2112;
    v165 = v88;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPSR_dpsEpiloge: %@", buf, 0x1Cu);
  }

  [*(*(*(v62 + 56) + 8) + 40) setMetricID:589928];
  if (!*(v62 + 40))
  {
    v133 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v162 = 1024;
      v163 = 4673;
      _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil processToken", buf, 0x12u);
    }

    v168 = NSLocalizedFailureReasonErrorKey;
    v169 = @"WAErrorCodeLacksRequiredArgument";
    v108 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
    v134 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v108];
    v135 = *(*(v62 + 64) + 8);
    v136 = *(v135 + 40);
    *(v135 + 40) = v134;

    goto LABEL_77;
  }

  v89 = [*(v62 + 32) submitterMap];
  v90 = [v89 objectForKeyedSubscript:*(v62 + 40)];
  v91 = [NSNumber numberWithInteger:*(v62 + 88)];
  v92 = [v90 objectForKeyedSubscript:v91];

  if (!v92)
  {
    v93 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v162 = 1024;
      v163 = 4675;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%{public}s::%d:Registration somehow was cleared", buf, 0x12u);
    }

    [*(v62 + 32) _purgeGroupTypeIfNecessary:*(v62 + 88)];
    v94 = [*(v62 + 32) processTokenToGroupTypeMap];
    v95 = [v94 objectForKeyedSubscript:*(v62 + 40)];

    if (!v95)
    {
      v96 = objc_alloc_init(NSMutableSet);
      v97 = [*(v62 + 32) processTokenToGroupTypeMap];
      [v97 setObject:v96 forKeyedSubscript:*(v62 + 40)];
    }

    v98 = [*(v62 + 32) processTokenToGroupTypeMap];
    v99 = [v98 objectForKeyedSubscript:*(v62 + 40)];
    v100 = [NSNumber numberWithInteger:*(v62 + 88)];
    [v99 addObject:v100];

    [*(v62 + 32) _initSubmitterAndQueryableRegistrationForProcessToken:*(v62 + 40) andGroupType:*(v62 + 88)];
    v101 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v102 = *(v62 + 88);
      v103 = [WAUtil trimTokenForLogging:*(v62 + 40)];
      *buf = 136446978;
      v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v162 = 1024;
      v163 = 4686;
      v164 = 2048;
      v165 = v102;
      v166 = 2112;
      v167 = v103;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:registering message group type: %ld for process: %@", buf, 0x26u);
    }
  }

  v104 = [*(v62 + 32) _submitMessage:*(*(*(v62 + 56) + 8) + 40) groupType:*(v62 + 88) forProcessToken:*(v62 + 40)];
  v105 = *(*(v62 + 64) + 8);
  v106 = *(v105 + 40);
  *(v105 + 40) = v104;

  if (*(*(*(v62 + 64) + 8) + 40))
  {
    v107 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
      v162 = 1024;
      v163 = 4698;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%{public}s::%d:Not sending incomplete DPSR to AWD", buf, 0x12u);
    }

    v108 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
    {
      v132 = *(*(*(v62 + 64) + 8) + 40);
      *buf = 138412290;
      v161 = v132;
      _os_log_fault_impl(&_mh_execute_header, v108, OS_LOG_TYPE_FAULT, "Not sending incomplete DPSR to AWD %@", buf, 0xCu);
    }

LABEL_77:

    goto LABEL_81;
  }

  v109 = *(v62 + 32);
  v110 = *(*(*(v62 + 56) + 8) + 40);
  v111 = *(*(*(v62 + 72) + 8) + 40);
  v112 = *(v109 + 168);
  v113 = *(v109 + 176);
  if (*(v109 + 43))
  {
    [v112 transformAndSubmitDNSMessageToCA:v110 additionalInfo:v111 timestamps:v113];
  }

  else
  {
    [v112 transformAndSubmitDPSMessageToCA:v110 additionalInfo:v111 timestamps:v113];
  }

LABEL_81:
  v114 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_stallNotifications"];
  v115 = [v114 repeatableValues];
  [v115 removeAllObjects];

  v116 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_probeResults"];
  v117 = [v116 repeatableValues];
  [v117 removeAllObjects];

  v118 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsCounterSamples"];
  v119 = [v118 repeatableValues];
  [v119 removeAllObjects];

  v120 = [*(*(*(v62 + 56) + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v121 = [v120 subMessageValue];
  v122 = [v121 fieldForKey:@"DPSE_associationChanges"];
  v123 = [v122 repeatableValues];
  [v123 removeAllObjects];

  [*(*(v62 + 32) + 544) removeAllObjects];
  [*(*(v62 + 32) + 552) removeAllObjects];
  [*(*(v62 + 32) + 560) removeAllObjects];
  [*(*(v62 + 32) + 568) removeAllObjects];
  [*(*(v62 + 32) + 488) removeAllObjects];
  [*(*(v62 + 32) + 504) removeAllObjects];
  [*(*(v62 + 32) + 176) removeAllObjects];
  v124 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v162 = 1024;
    v163 = 4716;
    _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_dpsCurrentlyGatheringConsecutiveSamples FALSE", buf, 0x12u);
  }

  *(*(v62 + 32) + 33) = 0;
  v125 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v161 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v162 = 1024;
    v163 = 4718;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_dpsStudyInProgress False", buf, 0x12u);
  }

  *(*(v62 + 32) + 43) = 0;
  *(*(v62 + 32) + 32) = 0;
  v126 = [*(v62 + 32) dpsStudyTransaction];

  if (v126)
  {
    v127 = +[WAActivityManager sharedActivityManager];
    v128 = [*(v62 + 32) dpsStudyTransaction];
    [v127 osTransactionComplete:v128];

    [*(v62 + 32) setDpsStudyTransaction:0];
  }

  v129 = [*(v62 + 32) dnsStudyTransaction];

  if (v129)
  {
    v130 = +[WAActivityManager sharedActivityManager];
    v131 = [*(v62 + 32) dnsStudyTransaction];
    [v130 osTransactionComplete:v131];

    [*(v62 + 32) setDnsStudyTransaction:0];
  }

  if ([*(v62 + 32) isMemoryPressureRequestDeferred])
  {
    [*(v62 + 32) handleMemoryWarning:1];
  }

  dispatch_semaphore_signal(*(v62 + 48));
}

void sub_10007655C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = v3[32];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = v3[33] / v4 * 100.0;
  }

  v7 = v3[34];
  if (v7)
  {
    v5 = v3[35] / v7 * 100.0;
  }

  v8 = v3[36];
  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    v10 = v3[37] / v8 * 100.0;
  }

  v11 = v3[38];
  if (v11)
  {
    v9 = v3[39] / v11 * 100.0;
  }

  v12 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[4];
    v14 = *(v13 + 256);
    v15 = *(v13 + 288);
    v158 = 136447490;
    v159 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v160 = 1024;
    v161 = 4615;
    v162 = 2048;
    v163 = v6;
    v164 = 2048;
    v165 = v10;
    v166 = 2048;
    v167 = v14;
    v168 = 2048;
    v169 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LANPingResultSummary: LANHealth-before-trap:%.2f%% LANHealth-after-trap:%.2f%% totalPingsBeforeTrap:%lu totalPingsAfterTrap:%lu", &v158, 0x3Au);
  }

  v16 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = a1[4];
    v18 = *(v17 + 272);
    v19 = *(v17 + 304);
    v158 = 136447490;
    v159 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v160 = 1024;
    v161 = 4616;
    v162 = 2048;
    v163 = v5;
    v164 = 2048;
    v165 = v9;
    v166 = 2048;
    v167 = v18;
    v168 = 2048;
    v169 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WANPingResultSummary: WANHealth-before-trap:%.2f%% WANHealth-after-trap:%.2f%% totalPingsBeforeTrap:%lu totalPingsAfterTrap:%lu", &v158, 0x3Au);
  }

  v20 = [*(a1[4] + 184) preferences];
  v21 = [v20 dns_symptoms_trap_evaluated_at_sample];
  v22 = v21 >> 1;

  v23 = a1[6];
  v24 = [*(a1[4] + 184) preferences];
  v25 = [v24 dns_symptoms_trap_evaluated_at_sample];

  v26 = 0.0;
  v27 = 0.0;
  if (v21 >= 2)
  {
    v27 = (v22 - *(a1[4] + 320)) / v22 * 100.0;
  }

  v28 = v23 - v25;
  if (v23 != v25)
  {
    v26 = (v28 - *(a1[4] + 328)) / v28 * 100.0;
  }

  v29 = 0.0;
  v30 = 0.0;
  if (v21 >= 2)
  {
    v30 = (100 * ((v22 - *(a1[4] + 336)) / v22));
  }

  if (v23 != v25)
  {
    v29 = (100 * ((v28 - *(a1[4] + 344)) / v28));
  }

  v31 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1[4] + 320);
    v158 = 136447234;
    v159 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v160 = 1024;
    v161 = 4626;
    v162 = 2048;
    v163 = *&v22;
    v164 = 2048;
    *&v165 = v23 - v25;
    v166 = 2048;
    v167 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:totalInstancesBeforeTrap:%lu totalInstancesAfterTrap:%lu times-netscore-below-threshold-before-trap:%lu", &v158, 0x30u);
  }

  v33 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v158 = 136446978;
    v159 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v160 = 1024;
    v161 = 4627;
    v162 = 2048;
    v163 = v27;
    v164 = 2048;
    v165 = v26;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:NetScoreSummary: NetScore Health-before-trap:%.2f%% Health-after-trap:%.2f%%", &v158, 0x26u);
  }

  v34 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v158 = 136446978;
    v159 = "[WAEngine gatherConsecutiveDatapathReadings:forProcessToken:andReply:]_block_invoke";
    v160 = 1024;
    v161 = 4628;
    v162 = 2048;
    v163 = v30;
    v164 = 2048;
    v165 = v29;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DataStallScoreSummary: DataStallScore Health-before-trap:%.2f%% Health-after-trap:%.2f%%", &v158, 0x26u);
  }

  v35 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v36 = [v35 subMessageValue];
  v37 = [v36 fieldForKey:@"DPSE_studyType"];
  [v37 setInt32Value:1];

  v38 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v39 = [v38 subMessageValue];
  v40 = [v39 fieldForKey:@"DPSE_symptomsDnsStats"];
  v41 = [v40 subMessageValue];
  v42 = [v41 fieldForKey:@"WFAAWDWASDS_totalDnsServers"];
  [v42 setUint32Value:*(a1[4] + 352)];

  v43 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v44 = [v43 subMessageValue];
  v45 = [v44 fieldForKey:@"DPSE_symptomsDnsStats"];
  v46 = [v45 subMessageValue];
  v47 = [v46 fieldForKey:@"WFAAWDWASDS_numIpv4DnsServers"];
  [v47 setUint32Value:*(a1[4] + 360)];

  v48 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v49 = [v48 subMessageValue];
  v50 = [v49 fieldForKey:@"DPSE_symptomsDnsStats"];
  v51 = [v50 subMessageValue];
  v52 = [v51 fieldForKey:@"WFAAWDWASDS_numIpv6DnsServers"];
  [v52 setUint32Value:*(a1[4] + 368)];

  v53 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v54 = [v53 subMessageValue];
  v55 = [v54 fieldForKey:@"DPSE_symptomsDnsStats"];
  v56 = [v55 subMessageValue];
  v57 = [v56 fieldForKey:@"WFAAWDWASDS_numLocalDnsServers"];
  [v57 setUint32Value:*(a1[4] + 376)];

  v58 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v59 = [v58 subMessageValue];
  v60 = [v59 fieldForKey:@"DPSE_symptomsDnsStats"];
  v61 = [v60 subMessageValue];
  v62 = [v61 fieldForKey:@"WFAAWDWASDS_numRemoteDnsServers"];
  [v62 setUint32Value:*(a1[4] + 384)];

  v63 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v64 = [v63 subMessageValue];
  v65 = [v64 fieldForKey:@"DPSE_symptomsDnsStats"];
  v66 = [v65 subMessageValue];
  v67 = [v66 fieldForKey:@"WFAAWDWASDS_configType"];
  [v67 setInt32Value:*(a1[4] + 392)];

  v68 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v69 = [v68 subMessageValue];
  v70 = [v69 fieldForKey:@"DPSE_symptomsDnsStats"];
  v71 = [v70 subMessageValue];
  v72 = [v71 fieldForKey:@"WFAAWDWASDS_netscoreAtStudyStart"];
  [v72 setUint32Value:*(a1[4] + 400)];

  v73 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v74 = [v73 subMessageValue];
  v75 = [v74 fieldForKey:@"DPSE_symptomsDnsStats"];
  v76 = [v75 subMessageValue];
  v77 = [v76 fieldForKey:@"WFAAWDWASDS_stallscoreAtStudyStart"];
  [v77 setUint32Value:*(a1[4] + 408)];

  v78 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v79 = [v78 subMessageValue];
  v80 = [v79 fieldForKey:@"DPSE_symptomsDnsStats"];
  v81 = [v80 subMessageValue];
  v82 = [v81 fieldForKey:@"WFAAWDWASDS_impactedServersAtStudyStart"];
  [v82 setUint32Value:*(a1[4] + 416)];

  v83 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v84 = [v83 subMessageValue];
  v85 = [v84 fieldForKey:@"DPSE_symptomsDnsStats"];
  v86 = [v85 subMessageValue];
  v87 = [v86 fieldForKey:@"WFAAWDWASDS_netscoreHealthBeforeDecision"];
  [v87 setUint32Value:v27];

  v88 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v89 = [v88 subMessageValue];
  v90 = [v89 fieldForKey:@"DPSE_symptomsDnsStats"];
  v91 = [v90 subMessageValue];
  v92 = [v91 fieldForKey:@"WFAAWDWASDS_stallscoreHealthBeforeDecision"];
  [v92 setUint32Value:v30];

  v93 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v94 = [v93 subMessageValue];
  v95 = [v94 fieldForKey:@"DPSE_symptomsDnsStats"];
  v96 = [v95 subMessageValue];
  v97 = [v96 fieldForKey:@"WFAAWDWASDS_lanHealthBeforeDecision"];
  [v97 setUint32Value:v6];

  v98 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v99 = [v98 subMessageValue];
  v100 = [v99 fieldForKey:@"DPSE_symptomsDnsStats"];
  v101 = [v100 subMessageValue];
  v102 = [v101 fieldForKey:@"WFAAWDWASDS_wanHealthBeforeDecision"];
  [v102 setUint32Value:v5];

  v103 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v104 = [v103 subMessageValue];
  v105 = [v104 fieldForKey:@"DPSE_symptomsDnsStats"];
  v106 = [v105 subMessageValue];
  v107 = [v106 fieldForKey:@"WFAAWDWASDS_isCaptiveServerIPResolved"];
  [v107 setBoolValue:*(a1[4] + 44)];

  v108 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v109 = [v108 subMessageValue];
  v110 = [v109 fieldForKey:@"DPSE_symptomsDnsStats"];
  v111 = [v110 subMessageValue];
  v112 = [v111 fieldForKey:@"WFAAWDWASDS_netscoreAtStudyEnd"];
  [v112 setUint32Value:*(a1[4] + 424)];

  v113 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v114 = [v113 subMessageValue];
  v115 = [v114 fieldForKey:@"DPSE_symptomsDnsStats"];
  v116 = [v115 subMessageValue];
  v117 = [v116 fieldForKey:@"WFAAWDWASDS_stallscoreAtStudyEnd"];
  [v117 setUint32Value:*(a1[4] + 432)];

  v118 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v119 = [v118 subMessageValue];
  v120 = [v119 fieldForKey:@"DPSE_symptomsDnsStats"];
  v121 = [v120 subMessageValue];
  v122 = [v121 fieldForKey:@"WFAAWDWASDS_impactedServersAtStudyEnd"];
  [v122 setUint32Value:*(a1[4] + 440)];

  v123 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v124 = [v123 subMessageValue];
  v125 = [v124 fieldForKey:@"DPSE_symptomsDnsStats"];
  v126 = [v125 subMessageValue];
  v127 = [v126 fieldForKey:@"WFAAWDWASDS_netscoreHealthAfterDecision"];
  [v127 setUint32Value:v26];

  v128 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v129 = [v128 subMessageValue];
  v130 = [v129 fieldForKey:@"DPSE_symptomsDnsStats"];
  v131 = [v130 subMessageValue];
  v132 = [v131 fieldForKey:@"WFAAWDWASDS_stallscoreHealthAfterDecision"];
  [v132 setUint32Value:v29];

  v133 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v134 = [v133 subMessageValue];
  v135 = [v134 fieldForKey:@"DPSE_symptomsDnsStats"];
  v136 = [v135 subMessageValue];
  v137 = [v136 fieldForKey:@"WFAAWDWASDS_lanHealthAfterDecision"];
  [v137 setUint32Value:v10];

  v138 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v139 = [v138 subMessageValue];
  v140 = [v139 fieldForKey:@"DPSE_symptomsDnsStats"];
  v141 = [v140 subMessageValue];
  v142 = [v141 fieldForKey:@"WFAAWDWASDS_wanHealthAfterDecision"];
  [v142 setUint32Value:v9];

  v143 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v144 = [v143 subMessageValue];
  v145 = [v144 fieldForKey:@"DPSE_symptomsDnsStats"];
  v146 = [v145 subMessageValue];
  v147 = [v146 fieldForKey:@"WFAAWDWASDS_dpsNotificationReceivedDuringStudy"];
  [v147 setBoolValue:*(a1[4] + 39)];

  v148 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v149 = [v148 subMessageValue];
  v150 = [v149 fieldForKey:@"DPSE_symptomsDnsStats"];
  v151 = [v150 subMessageValue];
  v152 = [v151 fieldForKey:@"WFAAWDWASDS_slowWiFiNotificationReceivedDuringStudy"];
  [v152 setBoolValue:*(a1[4] + 40)];

  v153 = [*(*(a1[5] + 8) + 40) fieldForKey:@"DPSR_dpsEpiloge"];
  v154 = [v153 subMessageValue];
  v155 = [v154 fieldForKey:@"DPSE_symptomsDnsStats"];
  v156 = [v155 subMessageValue];
  v157 = [v156 fieldForKey:@"WFAAWDWASDS_isPingEnqueueFailing"];
  [v157 setBoolValue:*(a1[4] + 41)];

  objc_autoreleasePoolPop(v2);
}

void sub_100078ACC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) initializeProbeCxt];

  objc_autoreleasePoolPop(v2);
}

void sub_100078B10(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) triggerPeerDiagnosticsStudy:*(a1 + 40) symptomsDnsStats:0];

  objc_autoreleasePoolPop(v2);
}

void sub_100078B58(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = [v3 fieldForKey:@"DPSCS_timestamp"];
  [v4 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]_block_invoke";
    v9 = 1024;
    v10 = 4829;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding dpsStatsContainer while _dpsStudyInProgress %@ ", &v7, 0x1Cu);
  }

  [*(*(a1 + 32) + 560) addObject:v3];
  v6 = +[NSDate date];
  [*(*(a1 + 32) + 176) setObject:v6 forKeyedSubscript:@"end"];
}

void sub_100078CA8(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = [v3 fieldForKey:@"DPSCS_timestamp"];
  [v4 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]_block_invoke";
    v8 = 1024;
    v9 = 4893;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding dpsStatsContainer while _dpsStudyInProgress %@ ", &v6, 0x1Cu);
  }

  [*(*(a1 + 32) + 560) addObject:v3];
}

void sub_100078DC8(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = [v3 fieldForKey:@"DPSCS_timestamp"];
  [v4 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]_block_invoke";
    v8 = 1024;
    v9 = 4922;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding dpsStatsContainer while _dpsStudyInProgress %@ ", &v6, 0x1Cu);
  }

  [*(*(a1 + 32) + 560) addObject:v3];
}

void sub_100078EE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100078F98;
  v5[3] = &unk_1000EDBA8;
  v6 = *(a1 + 48);
  [v3 gatherConsecutiveDatapathReadings:0 forProcessToken:v4 andReply:v5];

  objc_autoreleasePoolPop(v2);
}

void sub_100078F98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[WAEngine _triggerDPSStudy:forProcessToken:waMessage:andReply:]_block_invoke_2";
    v8 = 1024;
    v9 = 4946;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:gatherConsecutiveDatapathReadings replied err %@", &v6, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_100079974()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10010DED0;
  v7 = qword_10010DED0;
  if (!qword_10010DED0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100085DDC;
    v3[3] = &unk_1000EDA60;
    v3[4] = &v4;
    sub_100085DDC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100079A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079A54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007A2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10007A328(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v5 = 1024;
    v6 = 5064;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:slow_wifi_report_sent_after expired", &v3, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10007A3EC(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007A524;
  v10[3] = &unk_1000EE408;
  objc_copyWeak(v13, &location);
  v9 = *(a1 + 48);
  v5 = v9.i64[0];
  v13[1] = *(a1 + 72);
  v6 = *(a1 + 40);
  *&v7 = vdupq_laneq_s64(v9, 1).u64[0];
  v8.i64[0] = v6;
  *(&v7 + 1) = *(a1 + 64);
  v12 = v7;
  v11 = vzip1q_s64(v9, v8);
  [v3 _getNewMessageForKey:@"WFAAWDLQM" groupType:v2 forProcessToken:v4 shouldCheckForPrePopulation:1 andReply:v10];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void sub_10007A508(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10007A524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A680;
  block[3] = &unk_1000EE3E0;
  v18 = WeakRetained;
  v19 = v6;
  v20 = v5;
  v16 = *(a1 + 48);
  v9 = *(a1 + 32);
  v23 = *(a1 + 72);
  v10 = *(a1 + 40);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v16;
  *(&v12 + 1) = *(a1 + 56);
  v22 = v12;
  v21 = v11;
  v13 = v5;
  v14 = v6;
  v15 = WeakRetained;
  dispatch_async(v8, block);
}

void sub_10007A680(uint64_t a1)
{
  if (*(*(a1 + 32) + 52) == 1)
  {
    v2 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke_3";
      v44 = 1024;
      v45 = 5086;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Setting error due to debug command kWAIORCommandForceStudyErrorFromMsg", buf, 0x12u);
    }

    *(*(a1 + 32) + 52) = 0;
    v3 = (a1 + 40);
  }

  else
  {
    v3 = (a1 + 40);
    if (!*(a1 + 40))
    {
      v34 = [*(a1 + 48) fieldForKey:@"WFAAWDLQM_timestamp"];
      [v34 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

      v35 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
        v44 = 1024;
        v45 = 5157;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding linkQualSample", buf, 0x12u);
      }

      v15 = [*(*(*(a1 + 80) + 8) + 40) fieldForKey:@"SWFR_linkQualSamples"];
      v36 = [*(a1 + 48) copy];
      [v15 addRepeatableSubMessageValue:v36];

      goto LABEL_36;
    }
  }

  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 136446978;
    v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v44 = 1024;
    v45 = 5093;
    v46 = 2112;
    v47 = v5;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to find Slow WiFi values properly populated %@ err: %@", buf, 0x26u);
  }

  v7 = *(*(a1 + 72) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, *v3);
    v10 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 136446722;
      v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v44 = 1024;
      v45 = 5097;
      v46 = 2112;
      v47 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr will return %@", buf, 0x1Cu);
    }
  }

  if ([*v3 code] == 9029 && objc_msgSend(*(a1 + 32), "isAXAssociatoin"))
  {
    v12 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v44 = 1024;
      v45 = 5101;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LinkQualitySamples missing mandatory fields: WAErrorCodeTxOutputBelowExpectedMissing, but PHY MODE is APPLE80211_MODE_11AX rdar://80134615, clearing error", buf, 0x12u);
    }

    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 136446722;
      v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v44 = 1024;
      v45 = 5103;
      v46 = 2112;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr reset %@", buf, 0x1Cu);
    }

LABEL_36:

    dispatch_semaphore_signal(*(a1 + 56));
    return;
  }

  v17 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v44 = 1024;
    v45 = 5107;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting Rescan", buf, 0x12u);
  }

  v18 = +[NSDate date];
  v19 = v18;
  if (*(*(a1 + 32) + 664) && ([v18 timeIntervalSinceDate:?], v20 > 30.0))
  {
    v21 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v44 = 1024;
      v45 = 5111;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attemping determineChannelsPerIORPopulatable", buf, 0x12u);
    }

    v22 = WALogCategoryDefaultHandle();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Engine LinkQualitySamples MissingChannelsRepopulate", "", buf, 2u);
    }

    v23 = [*(a1 + 32) iorMessagePopulator];
    [v23 determineChannelsPerIORPopulatable];

    v24 = *(a1 + 32);
    v25 = *(a1 + 88);
    v26 = *(a1 + 64);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10007ADC4;
    v39[3] = &unk_1000EE3B8;
    v37 = *(a1 + 72);
    v27 = *(a1 + 48);
    *&v28 = v37;
    *(&v28 + 1) = *(a1 + 80);
    v38 = v28;
    v29 = *(a1 + 56);
    *&v30 = v27;
    *(&v30 + 1) = v29;
    v40 = v30;
    v41 = v38;
    [v24 _getNewMessageForKey:@"WFAAWDLQM" groupType:v25 forProcessToken:v26 shouldCheckForPrePopulation:1 andReply:v39];
    objc_storeStrong((*(a1 + 32) + 664), v19);
  }

  else
  {
    v31 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(*(a1 + 32) + 664);
      *buf = 136446722;
      v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v44 = 1024;
      v45 = 5149;
      v46 = 2112;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s::%d:Rescanned too recently, waiting for 30s to elapse since last check at %@", buf, 0x1Cu);
    }

    dispatch_semaphore_signal(*(a1 + 56));
  }

  v33 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v43 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v44 = 1024;
    v45 = 5152;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Rescan Attempt Complete", buf, 0x12u);
  }
}

void sub_10007ADC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v6)
  {
    if (!v9)
    {
      objc_storeStrong(v8, a3);
      v11 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(*(a1 + 48) + 8) + 40);
        v23 = 136446722;
        v24 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
        v25 = 1024;
        v26 = 5129;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr will return %@", &v23, 0x1Cu);
      }
    }

    v13 = [v6 code];
    v14 = WALogCategoryDefaultHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v13 == 9029)
    {
      if (v15)
      {
        v23 = 136446466;
        v24 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
        v25 = 1024;
        v26 = 5134;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:LinkQualitySample missing mandatory fields on rescan: WAErrorCodeTxOutputBelowExpectedMissing", &v23, 0x12u);
      }

      v14 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v23) = 0;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "LinkQualitySample missing mandatory fields on rescan: WAErrorCodeTxOutputBelowExpectedMissing", &v23, 2u);
      }
    }

    else if (v15)
    {
      v23 = 136446722;
      v24 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v25 = 1024;
      v26 = 5138;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:LinkQualitySample error %@", &v23, 0x1Cu);
    }
  }

  else
  {
    *v8 = 0;

    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 48) + 8) + 40);
      v23 = 136446722;
      v24 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v25 = 1024;
      v26 = 5120;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr reset %@", &v23, 0x1Cu);
    }

    v18 = [v5 fieldForKey:@"WFAAWDLQM_timestamp"];
    [v18 setUint64Value:{+[WAUtil getAWDTimestamp](WAUtil, "getAWDTimestamp")}];

    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v23 = 136446722;
      v24 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v25 = 1024;
      v26 = 5123;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding retry linkQualSample %@", &v23, 0x1Cu);
    }

    v14 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_linkQualSamples"];
    v21 = [v5 copy];
    [v14 addRepeatableSubMessageValue:v21];
  }

  v22 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v22))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Engine LinkQualitySamples MissingChannelsRepopulate", "", &v23, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_10007B1D4(uint64_t a1)
{
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v2 = *(*(a1 + 32) + 576);
  v3 = [v2 countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v96;
    *&v4 = 136446722;
    v90 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v96 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v95 + 1) + 8 * v7);
        v9 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v90;
          v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
          v101 = 1024;
          v102 = 5177;
          v103 = 2112;
          v104 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached SWFR_slowNotice: %@", buf, 0x1Cu);
        }

        v10 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_slowNotice"];
        [v10 setSubMessageValue:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v95 objects:v110 count:16];
    }

    while (v5);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v11 = *(*(a1 + 32) + 504);
  v12 = [v11 countByEnumeratingWithState:&v91 objects:v109 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v92;
    *&v13 = 136446722;
    v90 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v92 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v91 + 1) + 8 * v16);
        v18 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v90;
          v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
          v101 = 1024;
          v102 = 5182;
          v103 = 2112;
          v104 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding cached SWFR_usbEvent: %@", buf, 0x1Cu);
        }

        v19 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_usbEvents"];
        [v19 setSubMessageValue:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v91 objects:v109 count:16];
    }

    while (v14);
  }

  v20 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v101 = 1024;
    v102 = 5186;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SlowWiFi Summary!", buf, 0x12u);
  }

  v21 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_linkQualSamples"];
    v23 = [v22 repeatableValues];
    v24 = [v23 count];
    *buf = 136446722;
    v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v101 = 1024;
    v102 = 5187;
    v103 = 2048;
    v104 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SWFR_linkQualSamples: %lu", buf, 0x1Cu);
  }

  v25 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_slowNotice"];
    v27 = [v26 subMessageValue];
    v28 = [v27 fieldForKey:@"WFAAWDSWFN_actionField"];
    v29 = [v28 uint32Value];
    *buf = 136446722;
    v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v101 = 1024;
    v102 = 5188;
    v103 = 2048;
    v104 = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WFAAWDSWFN_actionField: %lx", buf, 0x1Cu);
  }

  v30 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_slowNotice"];
    v32 = [v31 subMessageValue];
    v33 = [v32 fieldForKey:@"WFAAWDSWFN_recoveryAction"];
    v34 = [v33 uint32Value];
    *buf = 136446722;
    v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v101 = 1024;
    v102 = 5189;
    v103 = 2048;
    v104 = v34;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WFAAWDSWFN_recoveryAction: %lx", buf, 0x1Cu);
  }

  v35 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_slowNotice"];
    v37 = [v36 subMessageValue];
    v38 = [v37 fieldForKey:@"WFAAWDSWFN_recoveryReason"];
    v39 = [v38 uint32Value];
    *buf = 136446722;
    v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v101 = 1024;
    v102 = 5190;
    v103 = 2048;
    v104 = v39;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WFAAWDSWFN_recoveryReason: %lx", buf, 0x1Cu);
  }

  v40 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_slowNotice"];
    v42 = [v41 subMessageValue];
    v43 = [v42 fieldForKey:@"WFAAWDSWFN_userInput"];
    v44 = [v43 uint32Value];
    *buf = 136446722;
    v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v101 = 1024;
    v102 = 5191;
    v103 = 2048;
    v104 = v44;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WFAAWDSWFN_userInput: %lx", buf, 0x1Cu);
  }

  [*(*(*(a1 + 56) + 8) + 40) setMetricID:589931];
  v45 = [*(a1 + 32) submitterMap];
  v46 = [v45 objectForKeyedSubscript:*(a1 + 40)];
  v47 = [NSNumber numberWithInteger:*(a1 + 80)];
  v48 = [v46 objectForKeyedSubscript:v47];

  if (!v48)
  {
    v49 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v101 = 1024;
      v102 = 5196;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}s::%d:Caller did not register", buf, 0x12u);
    }

    if (*(a1 + 40))
    {
      v50 = [*(a1 + 32) processTokenToGroupTypeMap];
      v51 = [v50 objectForKeyedSubscript:*(a1 + 40)];
      v52 = [NSNumber numberWithInteger:*(a1 + 80)];
      v53 = [v51 containsObject:v52];

      if (v53)
      {
        v61 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v89 = *(a1 + 80);
          *buf = 136446722;
          v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
          v101 = 1024;
          v102 = 5198;
          v103 = 2048;
          v104 = v89;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: processTokenToGroupTypeMap seems to think this process token has already registered group type: %ld", buf, 0x1Cu);
        }
      }

      else
      {
        [*(a1 + 32) _purgeGroupTypeIfNecessary:*(a1 + 80)];
        v54 = [*(a1 + 32) processTokenToGroupTypeMap];
        v55 = [v54 objectForKeyedSubscript:*(a1 + 40)];

        if (!v55)
        {
          v56 = objc_alloc_init(NSMutableSet);
          v57 = [*(a1 + 32) processTokenToGroupTypeMap];
          [v57 setObject:v56 forKeyedSubscript:*(a1 + 40)];
        }

        v58 = [*(a1 + 32) processTokenToGroupTypeMap];
        v59 = [v58 objectForKeyedSubscript:*(a1 + 40)];
        v60 = [NSNumber numberWithInteger:*(a1 + 80)];
        [v59 addObject:v60];

        [*(a1 + 32) _initSubmitterAndQueryableRegistrationForProcessToken:*(a1 + 40) andGroupType:*(a1 + 80)];
        [*(a1 + 32) _persist];
        v61 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v62 = *(a1 + 80);
          v63 = [WAUtil trimTokenForLogging:*(a1 + 40)];
          *buf = 136446978;
          v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
          v101 = 1024;
          v102 = 5209;
          v103 = 2048;
          v104 = v62;
          v105 = 2112;
          v106 = v63;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: registering message group type: %ld for process: %@", buf, 0x26u);
        }
      }
    }

    else
    {
      v85 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
        v101 = 1024;
        v102 = 5197;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:couldn't get process name for connection", buf, 0x12u);
      }

      v107 = NSLocalizedFailureReasonErrorKey;
      v108 = @"WAErrorCodeInternalError";
      v61 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v86 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v61];
      v87 = *(*(a1 + 64) + 8);
      v88 = *(v87 + 40);
      *(v87 + 40) = v86;
    }
  }

  v64 = [*(a1 + 32) _submitMessage:*(*(*(a1 + 56) + 8) + 40) groupType:4 forProcessToken:{*(a1 + 40), v90}];
  v65 = *(*(a1 + 64) + 8);
  v66 = *(v65 + 40);
  *(v65 + 40) = v64;

  v67 = *(*(*(a1 + 64) + 8) + 40);
  if (v67)
  {
    v68 = *(*(a1 + 72) + 8);
    v70 = *(v68 + 40);
    v69 = (v68 + 40);
    if (!v70)
    {
      objc_storeStrong(v69, v67);
      v71 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 136446722;
        v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
        v101 = 1024;
        v102 = 5222;
        v103 = 2112;
        v104 = v72;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:retErr will return %@", buf, 0x1Cu);
      }
    }

    v73 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 136446722;
      v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v101 = 1024;
      v102 = 5225;
      v103 = 2112;
      v104 = v74;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%{public}s::%d:Not sending incomplete SWF to AWD %@", buf, 0x1Cu);
    }

    v75 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      v84 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v100 = v84;
      _os_log_fault_impl(&_mh_execute_header, v75, OS_LOG_TYPE_FAULT, "Not sending incomplete SWF to AWD %@", buf, 0xCu);
    }
  }

  else
  {
    v76 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
      v101 = 1024;
      v102 = 5216;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Sending SWF to transformEngine", buf, 0x12u);
    }

    [*(*(a1 + 32) + 168) transformAndSubmitSWMessageToCA:*(*(*(a1 + 56) + 8) + 40) additionalInfo:0 timestamps:0];
  }

  v77 = [*(*(*(a1 + 56) + 8) + 40) fieldForKey:@"SWFR_linkQualSamples"];
  v78 = [v77 repeatableValues];
  [v78 removeAllObjects];

  [*(*(a1 + 32) + 576) removeAllObjects];
  [*(*(a1 + 32) + 504) removeAllObjects];
  v79 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v100 = "[WAEngine gatherConsecutiveLinkQualitySamples:forProcessToken:andReply:]_block_invoke";
    v101 = 1024;
    v102 = 5235;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_slowWiFiStudyInProgress False", buf, 0x12u);
  }

  *(*(a1 + 32) + 34) = 0;
  v80 = [*(a1 + 32) slowwifiStudyTransaction];

  if (v80)
  {
    v81 = +[WAActivityManager sharedActivityManager];
    v82 = [*(a1 + 32) slowwifiStudyTransaction];
    [v81 osTransactionComplete:v82];

    [*(a1 + 32) setSlowwifiStudyTransaction:0];
  }

  if ([*(a1 + 32) isMemoryPressureRequestDeferred])
  {
    [*(a1 + 32) handleMemoryWarning:1];
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10007C7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007C800(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) triggerPeerDiagnosticsStudy:2 symptomsDnsStats:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10007C84C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C908;
  v7[3] = &unk_1000EE480;
  v6 = *(a1 + 48);
  v5 = v6;
  v8 = v6;
  [v3 gatherConsecutiveLinkQualitySamples:0 forProcessToken:v4 andReply:v7];

  objc_autoreleasePoolPop(v2);
}

void sub_10007C908(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[WAEngine _triggerSlowWiFiStudy:forProcessToken:waMessage:andReply:]_block_invoke_2";
      v9 = 1024;
      v10 = 5317;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:gatherConsecutiveLinkQualitySamples replied err %@", &v7, 0x1Cu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007CD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007CD1C(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_10007CDA8(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_10007D04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007D064(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007D2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007D2FC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007ED94(uint64_t a1)
{
  v2 = [*(a1 + 32) datapathMetricStream];
  v3 = [v2 getPBCodableNSDataFromNSKeyedArchive:*(a1 + 40)];

  if (v3)
  {
    [WAUtil incrementValueForKey:@"AnalyticsProcessor: Datapath Metrics Stream" inMutableDict:*(*(a1 + 32) + 688) onQueue:*(*(a1 + 32) + 88)];
    v4 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
    [v4 processDatapathMetricStream:v3 withDate:*(a1 + 48)];
  }

  else
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446466;
      v7 = "[WAEngine processWiFiAnalyticsMessageWAMFile:file:]_block_invoke";
      v8 = 1024;
      v9 = 5678;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to getPBCodableNSDataFromNSKeyedArchive", &v6, 0x12u);
    }
  }
}

void sub_100080934(id a1, NSError *a2, NSArray *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446978;
    v8 = "[WAEngine triggerPeerDiscovery]_block_invoke";
    v9 = 1024;
    v10 = 6152;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiscovery: Initiate Study.. result:%@ error:%@", &v7, 0x26u);
  }
}

void sub_100081140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100081184(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = 136446978;
    v12 = "[WAEngine gatherDiscoveredPeerInfo:]_block_invoke";
    v13 = 1024;
    v14 = 6182;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:PeerDiscovery: result:%@ error:%@", &v11, 0x26u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000814FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100081530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained[62];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000815F0;
  v9[3] = &unk_1000ED988;
  v10 = v4;
  v11 = WeakRetained;
  v7 = WeakRetained;
  v8 = v4;
  dispatch_sync(v6, v9);
}

void sub_1000815F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v18 = v2;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) info];
          v11 = [v10 objectForKeyedSubscript:@"DNSResolution"];
          v12 = *(a1 + 40);
          v13 = *(v12 + 480);
          *(v12 + 480) = v11;

          v14 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(*(a1 + 40) + 480);
            *buf = 136446722;
            v24 = "[WAEngine resolveAppleCaptiveServer]_block_invoke_2";
            v25 = 1024;
            v26 = 6238;
            v27 = 2112;
            v28 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNSResolution: result : %@", buf, 0x1Cu);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v7);
    }

    v3 = v18;
  }

  v16 = *(a1 + 40);
  if (*(v16 + 448) || *(v16 + 456) || *(v16 + 472) || *(v16 + 464))
  {
    v17 = *(v16 + 480);
    [*(v16 + 464) setObject:v17 forKeyedSubscript:@"IPAddress"];
    [*(*(a1 + 40) + 472) setObject:v17 forKeyedSubscript:@"IPAddress"];
    [*(*(a1 + 40) + 456) setObject:v17 forKeyedSubscript:@"IPAddress"];
    [*(*(a1 + 40) + 448) setObject:v17 forKeyedSubscript:@"IPAddress"];
  }

  else
  {
    [v16 initializeProbeCxt];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10008228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 32));
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v43 - 176), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000822FC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSDictionary dictionaryWithDictionary:*(a1[4] + 448)];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [NSDictionary dictionaryWithDictionary:*(a1[4] + 456)];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [NSDictionary dictionaryWithDictionary:*(a1[4] + 464)];
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [NSDictionary dictionaryWithDictionary:*(a1[4] + 472)];
  v13 = *(a1[8] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  objc_autoreleasePoolPop(v2);
}

void sub_1000823E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained[62];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000824D0;
  v12[3] = &unk_1000EE588;
  v16 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = WeakRetained;
  v9 = WeakRetained;
  v10 = v6;
  v11 = v5;
  dispatch_sync(v8, v12);
}

void sub_1000824D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 136447234;
    v58 = "[WAEngine triggerDiagnosticPingWithrequestId:]_block_invoke_2";
    v59 = 1024;
    v60 = 6340;
    v61 = 1024;
    v62 = v4;
    v63 = 2112;
    *v64 = v5;
    *&v64[8] = 2112;
    v65 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Ping: instanceId:%u error:%@ ProbeResults:: %@", buf, 0x2Cu);
  }

  if (!*(a1 + 32))
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_38;
    }

    v41 = v2;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = v7;
    v45 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (!v45)
    {
      goto LABEL_37;
    }

    v44 = *v52;
    v42 = v8;
LABEL_8:
    v9 = 0;
    while (1)
    {
      if (*v52 != v44)
      {
        objc_enumerationMutation(v8);
      }

      v10 = *(*(&v51 + 1) + 8 * v9);
      if ([v10 testID] == 3)
      {
        break;
      }

      if ([v10 testID] == 6)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v22 = [v10 info];
        v23 = [v22 objectForKeyedSubscript:@"PingResults"];

        obj = v23;
        v24 = [v23 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v24)
        {
          v25 = v24;
          v43 = v9;
          v26 = *v48;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v47 + 1) + 8 * i);
              v29 = [v28 count];
              v30 = [v28 count];
              [v28 packetLoss];
              v32 = (v30 + v31 / -100.0 * [v28 count]);
              v33 = *(a1 + 56);
              v34 = [*(*(a1 + 48) + 184) preferences];
              v35 = [v34 dns_symptoms_trap_evaluated_at_sample];

              v36 = *(a1 + 48);
              if (v35 <= v33)
              {
                *(v36 + 312) += v32;
              }

              else
              {
                *(v36 + 280) += v32;
                if (v32)
                {
                  *(*(a1 + 48) + 47) = 1;
                }
              }

              v37 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = *(a1 + 56);
                *buf = 136447234;
                v58 = "[WAEngine triggerDiagnosticPingWithrequestId:]_block_invoke";
                v59 = 1024;
                v60 = 6370;
                v61 = 1024;
                v62 = v38;
                v63 = 1024;
                *v64 = v29;
                *&v64[4] = 1024;
                *&v64[6] = v32;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WANPingResults: instanceId:%u pingCount:%u successCount:%u", buf, 0x24u);
              }
            }

            v25 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v25);
          v8 = v42;
          v9 = v43;
        }

        goto LABEL_34;
      }

LABEL_35:
      if (++v9 == v45)
      {
        v45 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (!v45)
        {
LABEL_37:

          v2 = v41;
          goto LABEL_38;
        }

        goto LABEL_8;
      }
    }

    v11 = v9;
    v12 = [v10 info];
    v13 = [v12 objectForKeyedSubscript:@"PingResult"];

    v14 = [v13 count];
    v15 = [v13 count];
    [v13 packetLoss];
    obj = v13;
    v17 = (v15 + v16 / -100.0 * [v13 count]);
    v18 = *(a1 + 56);
    v19 = [*(*(a1 + 48) + 184) preferences];
    v20 = [v19 dns_symptoms_trap_evaluated_at_sample];

    v21 = *(a1 + 48);
    if (v20 <= v18)
    {
      *(v21 + 296) += v17;
    }

    else
    {
      *(v21 + 264) += v17;
      if (v17)
      {
        *(*(a1 + 48) + 47) = 1;
      }
    }

    v39 = WALogCategoryDefaultHandle();
    v9 = v11;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 56);
      *buf = 136447234;
      v58 = "[WAEngine triggerDiagnosticPingWithrequestId:]_block_invoke";
      v59 = 1024;
      v60 = 6357;
      v61 = 1024;
      v62 = v40;
      v63 = 1024;
      *v64 = v14;
      *&v64[4] = 1024;
      *&v64[6] = v17;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LANPingResults: instanceId:%u pingCount:%u successCount:%u", buf, 0x24u);
    }

LABEL_34:
    goto LABEL_35;
  }

  *(*(a1 + 48) + 41) = 1;
LABEL_38:
  objc_autoreleasePoolPop(v2);
}

void sub_100082C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100082C5C(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained[62];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082D10;
  block[3] = &unk_1000EE5D8;
  v11 = WeakRetained;
  v12 = a3;
  v8 = *(a1 + 40);
  v13 = a2;
  v14 = v8;
  v9 = WeakRetained;
  dispatch_sync(v7, block);
}

void sub_100082D10(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 48))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v5 = *(v6 + 48);
      if (v5)
      {
        v7 = [*(a1 + 32) isScoreBelowThreshold:v5 type:0 instanceId:*(a1 + 52)];
        v8 = [*(a1 + 32) isScoreBelowThreshold:v5 type:1 instanceId:*(a1 + 52)];
        v9 = *(a1 + 52);
        v10 = [*(*(a1 + 32) + 184) preferences];
        v11 = [v10 dns_symptoms_trap_evaluated_at_sample];

        v12 = *(a1 + 32);
        if (v11 <= v9)
        {
          v18 = *(v12 + 46);
          if (v7)
          {
            if ((*(v12 + 46) & 1) == 0)
            {
              v19 = *(a1 + 52);
              v20 = [*(v12 + 184) preferences];
              *(*(a1 + 32) + 328) = v19 - [v20 dns_symptoms_trap_evaluated_at_sample] + 1;
            }
          }

          else
          {
            if ((*(v12 + 46) & 1) == 0)
            {
              v22 = *(a1 + 52);
              v23 = [*(v12 + 184) preferences];
              *(*(a1 + 32) + 328) = v22 - [v23 dns_symptoms_trap_evaluated_at_sample];

              v12 = *(a1 + 32);
            }

            *(v12 + 46) = 1;
          }

          v21 = 344;
        }

        else
        {
          if (v7)
          {
            if (*(v12 + 45) == 1)
            {
              ++*(v12 + 320);
            }
          }

          else
          {
            *(v12 + 45) = 0;
          }

          v21 = 336;
        }

        *(*(a1 + 32) + v21) += v8;
        v13 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v24 = *(a1 + 52);
        v25 = "NO";
        v26 = *(a1 + 32);
        if (v7)
        {
          v27 = "YES";
        }

        else
        {
          v27 = "NO";
        }

        v33 = "[WAEngine fetchSymptomsScores:]_block_invoke_2";
        v28 = *(v26 + 45);
        if (v8)
        {
          v29 = "YES";
        }

        else
        {
          v29 = "NO";
        }

        v30 = *(v26 + 46);
        if (v28)
        {
          v31 = "YES";
        }

        else
        {
          v31 = "NO";
        }

        v32 = 136447746;
        v34 = 1024;
        if (v30)
        {
          v25 = "YES";
        }

        v35 = 6425;
        v36 = 1024;
        v37 = v24;
        v38 = 2080;
        v39 = v27;
        v40 = 2080;
        v41 = v29;
        v42 = 2080;
        v43 = v31;
        v44 = 2080;
        v45 = v25;
        v14 = "%{public}s::%d:Netscore: instanceId:%u isNetScoreBelowThreshold:%s isDataStallScoreBelowThreshold:%s _isPoorSymptomsDnsConditions:%s _didSymptomsConditionRecoverAfterDecision:%s";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 64;
      }

      else
      {
        v13 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_38:

LABEL_39:
          goto LABEL_40;
        }

        v32 = 136446466;
        v33 = "[WAEngine fetchSymptomsScores:]_block_invoke";
        v34 = 1024;
        v35 = 6427;
        v14 = "%{public}s::%d:empty eventInfo";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 18;
      }

      _os_log_impl(&_mh_execute_header, v15, v16, v14, &v32, v17);
      goto LABEL_38;
    }
  }

  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 48);
    v32 = 136446722;
    v33 = "[WAEngine fetchSymptomsScores:]_block_invoke";
    v34 = 1024;
    v35 = 6430;
    v36 = 1024;
    v37 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error:%d from Managed Event Fetch", &v32, 0x18u);
  }

  if (!*(a1 + 40))
  {
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v32 = 136446466;
      v33 = "[WAEngine fetchSymptomsScores:]_block_invoke";
      v34 = 1024;
      v35 = 6432;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fetched managed event is null", &v32, 0x12u);
    }

    goto LABEL_39;
  }

LABEL_40:
  objc_autoreleasePoolPop(v2);
}

void sub_1000846AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1000846D8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2 || (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136446466;
      v26 = "[WAEngine testDNSResolution:]_block_invoke";
      v27 = 1024;
      v28 = 6630;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:DNS Resolution handler aborting", v25, 0x12u);
    }
  }

  else
  {
    count = nw_array_get_count();
    v7 = [[NSMutableArray alloc] initWithCapacity:count];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (count)
    {
      for (i = 0; i != count; ++i)
      {
        v11 = nw_array_get_object_at_index();
        address = nw_endpoint_get_address(v11);
        if (getnameinfo(address, address->sa_len, v25, 0x401u, 0, 0, 10))
        {
          v13 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *__error();
            *buf = 136446978;
            v18 = "[WAEngine testDNSResolution:]_block_invoke";
            v19 = 1024;
            v20 = 6643;
            v21 = 2048;
            v22 = address;
            v23 = 1024;
            v24 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Could not getnameinfo %p: errno=%d", buf, 0x22u);
          }
        }

        else
        {
          v13 = [NSString stringWithCString:v25 encoding:4];
          [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
        }
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (a2 == 2)
    {
      v15 = *(a1 + 32);
      nw_resolver_cancel();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100084958(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = WALogCategoryDefaultHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      v6 = 136446466;
      v7 = "[WAEngine testDNSResolution:]_block_invoke";
      v8 = 1024;
      v9 = 6671;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:DNS Resolution (captive.apple.com): COMPLETED (status:Timeout)", &v6, 0x12u);
    }
  }

  else
  {
    if (v4)
    {
      v6 = 136446466;
      v7 = "[WAEngine testDNSResolution:]_block_invoke";
      v8 = 1024;
      v9 = 6667;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:DNS Resolution (captive.apple.com): forced COMPLETE (status:Timeout)", &v6, 0x12u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = *(a1 + 32);
    nw_resolver_cancel();
  }
}

void sub_100084ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100084F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && [WeakRetained isWiFiInterfacePrimary])
  {
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56);
      v8 = "[WAEngine triggerStepwiseDNSRecovery]_block_invoke";
      v6 = (*(a1 + 64) + 1);
      v7 = 136446722;
      v9 = 1024;
      v10 = 6706;
      v11 = 2048;
      v12 = v5 / v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SDNS: WiFi is Primary after polling for %lu ms", &v7, 0x1Cu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100085BEC(uint64_t a1)
{
  sub_100085C5C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5Client");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10010DEC0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_100085C5C();
  }
}

void sub_100085C5C()
{
  v1[0] = 0;
  if (!qword_10010DEC8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100085D68;
    v1[4] = &unk_1000ED7E0;
    v1[5] = v1;
    v2 = off_1000EE670;
    v3 = 0;
    qword_10010DEC8 = _sl_dlopen();
    v0 = v1[0];
    if (qword_10010DEC8)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_100085D68(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10010DEC8 = result;
  return result;
}

Class sub_100085DDC(uint64_t a1)
{
  sub_100085C5C();
  result = objc_getClass("W5DiagnosticsTestRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10010DED0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(CADataTransformEngine *)v3 computeSnapshotValidity:v4 snapshotTimestamp:v5 validityThreshold:v6, v7];
  }

  return result;
}

id sub_100086E14(uint64_t a1)
{
  v228 = 0;
  v229 = &v228;
  v230 = 0x2020000000;
  v231 = 1;
  v206 = dispatch_semaphore_create(0);
  v222 = 0;
  v223 = &v222;
  v224 = 0x3032000000;
  v225 = sub_100088928;
  v226 = sub_100088938;
  v227 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
  v207 = a1;
  v2 = [*(a1 + 40) instantiateAWDProtobufAndPopulateValues:*(a1 + 48)];
  v208 = v2;
  if (!v2)
  {
    v32 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v233 = "[CADataTransformEngine transformAndSubmitDPSMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v234 = 1024;
      v235 = 338;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating DPS data to send to CA", buf, 0x12u);
    }

    v33 = 0;
    v34 = 0;
    v204 = 0;
    v205 = 0;
    goto LABEL_34;
  }

  v3 = v2;
  v4 = [v3 stallNotifications];
  if (![v4 count])
  {

    goto LABEL_21;
  }

  v5 = [v3 dpsCounterSamplesCount];
  LOBYTE(v5) = v5 < [*(*(v207 + 40) + 16) dps_interrogation_sample_count];

  if (v5)
  {
LABEL_21:
    v35 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v233 = "[CADataTransformEngine transformAndSubmitDPSMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v234 = 1024;
      v235 = 344;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid DPS data", buf, 0x12u);
    }

    *(v229 + 24) = 0;
    goto LABEL_24;
  }

  if (v229[3])
  {
    v6 = *(v207 + 40);
    v7 = *(v207 + 56);
    v218[0] = _NSConcreteStackBlock;
    v218[1] = 3221225472;
    v218[2] = sub_100088940;
    v218[3] = &unk_1000EE690;
    v220 = &v222;
    v221 = &v228;
    dsema = v206;
    v219 = dsema;
    [v6 computeDPSRecoveryIndex:v3 timestamps:v7 andReply:v218];

    if (v229[3])
    {
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v8 = [v3 stallNotifications];
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = [v8 countByEnumeratingWithState:&v214 objects:v239 count:16];
      if (v12)
      {
        v13 = *v215;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v215 != v13)
            {
              objc_enumerationMutation(v8);
            }

            v15 = *(*(&v214 + 1) + 8 * i);
            if (![v15 symptom])
            {
              v11 = [v15 problemAC] | v11;
              v10 |= [v15 facetimeCallInProgress];
            }

            v9 |= [v15 symptom] == 2;
          }

          v12 = [v8 countByEnumeratingWithState:&v214 objects:v239 count:16];
        }

        while (v12);
      }

      v16 = [NSNumber numberWithUnsignedInt:v11];
      [v223[5] setObject:v16 forKeyedSubscript:@"problematicACs"];

      v17 = [NSNumber numberWithBool:v10 & 1];
      [v223[5] setObject:v17 forKeyedSubscript:@"isCriticalAppRunning"];

      v18 = [NSNumber numberWithBool:v9 & 1];
      [v223[5] setObject:v18 forKeyedSubscript:@"didUserToggleWiFiOff"];

      v19 = [v3 dpsEpiloge];
      v20 = [v19 qDpsStats];
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 isDpsValidationDisabled]);
      [v223[5] setObject:v21 forKeyedSubscript:@"isDpsValidationDisabled"];

      v22 = [v3 dpsEpiloge];
      v23 = [v22 qDpsStats];
      v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 quickDpsTimeSincePreviousTriggerMinutes]);
      [v223[5] setObject:v24 forKeyedSubscript:@"timeSincePreviousStudy"];

      v25 = [v3 dpsEpiloge];
      v26 = [v25 qDpsStats];
      v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v26 quickDpsResetRecommendation]);
      [v223[5] setObject:v27 forKeyedSubscript:@"qDpsStudyRecommendation"];

      v28 = [v3 dpsEpiloge];
      v29 = [v28 qDpsStats];
      v30 = [v29 suppressedReason];
      if (v30 >= 0xB)
      {
        v31 = [NSString stringWithFormat:@"(unknown: %i)", v30];
      }

      else
      {
        v31 = *(&off_1000EE728 + v30);
      }

      [v223[5] setObject:v31 forKeyedSubscript:@"qDpsSuppressionReason"];

      v43 = [v3 dpsEpiloge];
      v44 = [v43 qDpsStats];
      v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v44 screenStateOn]);
      [v223[5] setObject:v45 forKeyedSubscript:@"qDpsScreenStateOnAtDecision"];

      v46 = [v3 dpsEpiloge];
      v47 = [v46 qDpsStats];
      v48 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v47 screenStateOn]);
      [v223[5] setObject:v48 forKeyedSubscript:@"MLDecisionPath"];

      v49 = [v3 dpsEpiloge];
      v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v49 isAssociatedAtStudyEnd]);
      [v223[5] setObject:v50 forKeyedSubscript:@"isAssociatedAtStudyEnd"];

      v51 = [v3 dpsCounterSampleAtIndex:1];
      v52 = [v51 controllerStats];
      v204 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v52 channel]);

      v53 = [v3 dpsCounterSampleAtIndex:1];
      v54 = [v53 controllerStats];
      v205 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v54 channelBandwidth]);

      [v223[5] setObject:v204 forKeyedSubscript:@"channel"];
      [v223[5] setObject:v205 forKeyedSubscript:@"channelBandwidth"];
      if ([v3 usbEventsCount])
      {
        v55 = [v3 usbEventAtIndex:{objc_msgSend(v3, "usbEventsCount") - 1}];
        v56 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v55 usbAction]);
        [v223[5] setObject:v56 forKeyedSubscript:@"usbAction"];

        v57 = [v3 usbEventAtIndex:{objc_msgSend(v3, "usbEventsCount") - 1}];
        v58 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v57 usbTotal]);
        [v223[5] setObject:v58 forKeyedSubscript:@"usbTotal"];

        v59 = [v3 usbEventAtIndex:{objc_msgSend(v3, "usbEventsCount") - 1}];
        v60 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v59 durationSinceUSBEventInSeconds]);
        [v223[5] setObject:v60 forKeyedSubscript:@"timeSinceUSBEvent"];

        v61 = [v3 usbEventAtIndex:{objc_msgSend(v3, "usbEventsCount") - 1}];
        v62 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v61 smartCCADesenseSupported]);
        [v223[5] setObject:v62 forKeyedSubscript:@"isSmartCCADesenseSupported"];

        v63 = [v3 usbEventAtIndex:{objc_msgSend(v3, "usbEventsCount") - 1}];
        v64 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v63 isVendorApple]);
        [v223[5] setObject:v64 forKeyedSubscript:@"isUSBDeviceVendorApple"];
      }

      v65 = [v3 dpsEpiloge];
      v66 = [v65 accessPointInfosCount];

      if (v66)
      {
        v67 = [v3 dpsEpiloge];
        v68 = [v67 accessPointInfoAtIndex:0];
        v69 = [v68 modelName];
        [v223[5] setObject:v69 forKeyedSubscript:@"APModelName"];

        v70 = [v3 dpsEpiloge];
        v71 = [v70 accessPointInfoAtIndex:0];
        v72 = [v71 modelNumber];
        [v223[5] setObject:v72 forKeyedSubscript:@"APModelNumber"];

        v73 = [v3 dpsEpiloge];
        v74 = [v73 accessPointInfoAtIndex:0];
        v75 = [v74 manufacturerElement];
        [v223[5] setObject:v75 forKeyedSubscript:@"APManufacturerElement"];

        v76 = &__kCFBooleanTrue;
      }

      else
      {
        v76 = &__kCFBooleanFalse;
      }

      [v223[5] setObject:v76 forKeyedSubscript:@"IsAPInfoPresent"];
      v77 = [v3 snapshot];
      v78 = [v77 btSnapshot];
      v79 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v78 use]);
      [v223[5] setObject:v79 forKeyedSubscript:@"btUse"];

      v80 = [v3 snapshot];
      v81 = [v80 awdlSnapshot];
      v82 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v81 use]);
      [v223[5] setObject:v82 forKeyedSubscript:@"awdlUse"];

      v83 = [v3 snapshot];
      v84 = [v83 awdlSnapshot];
      v85 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v84 sdb]);
      [v223[5] setObject:v85 forKeyedSubscript:@"awdlSdb"];

      v86 = [v3 dpsCounterSampleAtIndex:1];
      v87 = [v86 peerStats];
      v88 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v87 ccaValue]);
      [v223[5] setObject:v88 forKeyedSubscript:@"ccaValue"];

      v89 = [v3 dpsCounterSampleAtIndex:1];
      v90 = [v89 peerStats];
      v91 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v90 rssiValue]);
      [v223[5] setObject:v91 forKeyedSubscript:@"rssiValue"];

      v92 = [v3 dpsCounterSampleAtIndex:1];
      v93 = [v92 peerStats];
      v94 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v93 snrValue]);
      [v223[5] setObject:v94 forKeyedSubscript:@"snrValue"];

      v95 = [v3 dpsEpiloge];
      v96 = [v95 qDpsStats];
      v97 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v96 quickDpsTimeSincePreviousTriggerMinutes]);
      [v223[5] setObject:v97 forKeyedSubscript:@"timeSincePreviousStudy"];

      v98 = [v3 dpsCounterSampleAtIndex:1];
      v99 = [v98 peerStats];
      v100 = [v99 completions];
      LODWORD(v97) = [v100 nobuf];
      v101 = [v3 dpsCounterSampleAtIndex:0];
      v102 = [v101 peerStats];
      v103 = [v102 completions];
      v104 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v97 - [v103 nobuf]);
      [v223[5] setObject:v104 forKeyedSubscript:@"nobufStatusCountComputedAtDecision"];

      v105 = [v3 dpsCounterSampleAtIndex:1];
      v106 = [v105 peerStats];
      v107 = [v106 completions];
      LODWORD(v104) = [v107 chipmodeerror];
      v108 = [v3 dpsCounterSampleAtIndex:0];
      v109 = [v108 peerStats];
      v110 = [v109 completions];
      v111 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v104 - [v110 chipmodeerror]);
      [v223[5] setObject:v111 forKeyedSubscript:@"chipmodeerrorStatusCountComputedAtDecision"];

      v112 = [v3 dpsCounterSampleAtIndex:1];
      v113 = [v112 peerStats];
      v114 = [v113 completions];
      LODWORD(v111) = [v114 expired];
      v115 = [v3 dpsCounterSampleAtIndex:0];
      v116 = [v115 peerStats];
      v117 = [v116 completions];
      v118 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v111 - [v117 expired]);
      [v223[5] setObject:v118 forKeyedSubscript:@"expiredStatusCountComputedAtDecision"];

      v119 = [v3 dpsCounterSampleAtIndex:1];
      v120 = [v119 peerStats];
      v121 = [v120 completions];
      LODWORD(v118) = [v121 mbfree];
      v122 = [v3 dpsCounterSampleAtIndex:0];
      v123 = [v122 peerStats];
      v124 = [v123 completions];
      v125 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v118 - [v124 mbfree]);
      [v223[5] setObject:v125 forKeyedSubscript:@"mbfreeStatusCountComputedAtDecision"];

      v126 = [v3 dpsCounterSampleAtIndex:1];
      v127 = [v126 peerStats];
      v128 = [v127 completions];
      LODWORD(v125) = [v128 noremotepeer];
      v129 = [v3 dpsCounterSampleAtIndex:0];
      v130 = [v129 peerStats];
      v131 = [v130 completions];
      v132 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v125 - [v131 noremotepeer]);
      [v223[5] setObject:v132 forKeyedSubscript:@"noremotepeerStatusCountComputedAtDecision"];

      v133 = [v3 dpsCounterSampleAtIndex:1];
      v134 = [v133 peerStats];
      v135 = [v134 completions];
      LODWORD(v132) = [v135 noack];
      v136 = [v3 dpsCounterSampleAtIndex:0];
      v137 = [v136 peerStats];
      v138 = [v137 completions];
      v139 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v132 - [v138 noack]);
      [v223[5] setObject:v139 forKeyedSubscript:@"noackStatusCountComputedAtDecision"];

      v140 = [v3 dpsCounterSampleAtIndex:1];
      v141 = [v140 peerStats];
      v142 = [v141 completions];
      LODWORD(v139) = [v142 txfailure];
      v143 = [v3 dpsCounterSampleAtIndex:0];
      v144 = [v143 peerStats];
      v145 = [v144 completions];
      v146 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v139 - [v145 txfailure]);
      [v223[5] setObject:v146 forKeyedSubscript:@"txfailureStatusCountComputedAtDecision"];

      v147 = [v3 dpsCounterSampleAtIndex:1];
      v148 = [v147 peerStats];
      v149 = [v148 completions];
      LODWORD(v146) = [v149 noresources];
      v150 = [v3 dpsCounterSampleAtIndex:0];
      v151 = [v150 peerStats];
      v152 = [v151 completions];
      v153 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v146 - [v152 noresources]);
      [v223[5] setObject:v153 forKeyedSubscript:@"noresourcesStatusCountComputedAtDecision"];

      v154 = [v3 dpsCounterSampleAtIndex:1];
      v155 = [v154 peerStats];
      v156 = [v155 completions];
      LODWORD(v153) = [v156 ioerror];
      v157 = [v3 dpsCounterSampleAtIndex:0];
      v158 = [v157 peerStats];
      v159 = [v158 completions];
      v160 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v153 - [v159 ioerror]);
      [v223[5] setObject:v160 forKeyedSubscript:@"ioerrorStatusCountComputedAtDecision"];

      v161 = [v3 dpsCounterSampleAtIndex:1];
      v162 = [v161 peerStats];
      v163 = [v162 completions];
      LODWORD(v160) = [v163 internalerror];
      v164 = [v3 dpsCounterSampleAtIndex:0];
      v165 = [v164 peerStats];
      v166 = [v165 completions];
      v167 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v160 - [v166 internalerror]);
      [v223[5] setObject:v167 forKeyedSubscript:@"internalerrorStatusCountComputedAtDecision"];

      v168 = *(v207 + 40);
      v169 = [v3 snapshot];
      v170 = [v169 btSnapshot];
      v171 = [v170 ts];
      v172 = [*(v207 + 56) objectForKeyedSubscript:@"snapshotInstance"];
      v173 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v168 computeSnapshotValidity:v171 / 0x3E8 snapshotTimestamp:v172 validityThreshold:7]);
      [v223[5] setObject:v173 forKeyedSubscript:@"isBtSnapshotValid"];

      v174 = *(v207 + 40);
      v175 = [v3 snapshot];
      v176 = [v175 awdlSnapshot];
      v177 = [v176 ts];
      v178 = [*(v207 + 56) objectForKeyedSubscript:@"snapshotInstance"];
      v179 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v174 computeSnapshotValidity:v177 / 0x3E8 snapshotTimestamp:v178 validityThreshold:7]);
      [v223[5] setObject:v179 forKeyedSubscript:@"isAwdlSnapshotValid"];

      v180 = *(v207 + 40);
      v181 = [*(v207 + 56) objectForKeyedSubscript:@"start"];
      v182 = [*(v207 + 56) objectForKeyedSubscript:@"userToggle"];
      v183 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v180 computeDifferenceBetweenDates:v181 end:v182]);
      [v223[5] setObject:v183 forKeyedSubscript:@"userToggleAt"];

      v184 = [v3 dpsEpiloge];
      v185 = [v184 associationChangesCount];

      v186 = v223[5];
      if (v185)
      {
        [v186 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isAssociationChangesValid"];
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v187 = [v3 dpsEpiloge];
        v188 = [v187 associationChanges];

        v189 = [v188 countByEnumeratingWithState:&v210 objects:v238 count:16];
        v190 = 0;
        v191 = 0;
        if (v189)
        {
          v192 = *v211;
          do
          {
            for (j = 0; j != v189; j = j + 1)
            {
              if (*v211 != v192)
              {
                objc_enumerationMutation(v188);
              }

              v194 = *(*(&v210 + 1) + 8 * j);
              v190 |= [v194 changedChannel];
              v191 |= [v194 newBSSID];
            }

            v189 = [v188 countByEnumeratingWithState:&v210 objects:v238 count:16];
          }

          while (v189);
        }

        v195 = [NSNumber numberWithBool:v190 & 1];
        [v223[5] setObject:v195 forKeyedSubscript:@"didAssociateToNewChannel"];

        v196 = [NSNumber numberWithBool:v191 & 1];
        [v223[5] setObject:v196 forKeyedSubscript:@"didAssociateToNewBSSID"];
      }

      else
      {
        [v186 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isAssociationChangesValid"];
      }

      v197 = [v3 snapshot];

      if (v197)
      {
        v34 = [v3 snapshot];
        v198 = 0;
        v33 = 0;
        v32 = 0;
        do
        {
          v199 = v32;
          if (v198 > 1)
          {
            if (v198 == 2)
            {
              [v34 txCompletionSnapshotVI];
            }

            else
            {
              [v34 txCompletionSnapshotVO];
            }
          }

          else if (v198)
          {
            [v34 txCompletionSnapshotBK];
          }

          else
          {
            [v34 txCompletionSnapshotBE];
          }
          v200 = ;
          v32 = v200;

          if (v32)
          {
            if (v33)
            {
              [*(v207 + 40) computeAggregateTxCompletionStatus:v33 source:v32];
            }

            else
            {
              v33 = v32;
            }
          }

          ++v198;
        }

        while (v198 != 4);
        v201 = *(v207 + 40);
        v209[0] = _NSConcreteStackBlock;
        v209[1] = 3221225472;
        v209[2] = sub_100088A04;
        v209[3] = &unk_1000EE6B8;
        v209[4] = &v222;
        [v201 findTxCompletionFailureWithMaxCount:v33 andReply:v209];
      }

      else
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
      }

      v202 = dispatch_time(0, 15000000000);
      dispatch_semaphore_wait(dsema, v202);
      goto LABEL_27;
    }
  }

LABEL_24:
  v36 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v233 = "[CADataTransformEngine transformAndSubmitDPSMessageToCA:additionalInfo:timestamps:]_block_invoke_2";
    v234 = 1024;
    v235 = 357;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid DPS data Population", buf, 0x12u);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v204 = 0;
  v205 = 0;
LABEL_27:
  v37 = *(v229 + 24);
  v38 = WALogCategoryDefaultHandle();
  v39 = v38;
  if ((v37 & 1) == 0)
  {
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v233 = "[CADataTransformEngine transformAndSubmitDPSMessageToCA:additionalInfo:timestamps:]_block_invoke_2";
      v234 = 1024;
      v235 = 492;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}s::%d:Submitting DPS metric (CA) aborted due to validation Error", buf, 0x12u);
    }

LABEL_34:
    v41 = 0;
    goto LABEL_35;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [v223[5] count];
    *buf = 136446722;
    v233 = "[CADataTransformEngine transformAndSubmitDPSMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v234 = 1024;
    v235 = 495;
    v236 = 2048;
    v237 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS metricDict fieldCount: %lu", buf, 0x1Cu);
  }

  v41 = v223[5];
LABEL_35:

  _Block_object_dispose(&v222, 8);
  _Block_object_dispose(&v228, 8);

  return v41;
}

void sub_1000888CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100088928(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100088940(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = [NSNumber numberWithBool:a2];
  [*(*(a1[5] + 8) + 40) setObject:v7 forKeyedSubscript:@"recoveryObservedDuringStudy"];

  v8 = [NSNumber numberWithUnsignedInt:a3];
  [*(*(a1[5] + 8) + 40) setObject:v8 forKeyedSubscript:@"recoveryAt"];

  *(*(a1[6] + 8) + 24) = a4;
  v9 = a1[4];

  return dispatch_semaphore_signal(v9);
}

void sub_100088A04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v7 = [NSNumber numberWithUnsignedInteger:a2];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:@"majorTxFailureTypeAmongAllACs"];

  v8 = [NSNumber numberWithUnsignedInteger:a3];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:@"majorTxFailureCountAmongAllACs"];

  [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:@"aggregateTxFailureTypeAmongAllACs"];
}

void *sub_100088CE4(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
  v3 = [*(*(a1 + 40) + 16) dns_symptoms_trap_evaluated_at_sample];
  v4 = [*(a1 + 40) instantiateAWDProtobufAndPopulateValues:*(a1 + 48)];
  v5 = v4;
  if (!v4)
  {
    v441 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v441, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_124;
    }

    *buf = 136446466;
    v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v502 = 1024;
    v503 = 533;
    v450 = "%{public}s::%d:Error creating DPS data to send to CA";
LABEL_133:
    _os_log_impl(&_mh_execute_header, v441, OS_LOG_TYPE_ERROR, v450, buf, 0x12u);
    goto LABEL_124;
  }

  v6 = v4;
  v7 = [v6 stallNotifications];
  v8 = [v7 count];

  if (!v8)
  {
    v441 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v441, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_124;
    }

    *buf = 136446466;
    v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v502 = 1024;
    v503 = 536;
    v450 = "%{public}s::%d:Invalid DNS data: no samples";
    goto LABEL_133;
  }

  v9 = [v6 dpsCounterSamplesCount];
  if (v9 < [*(*(a1 + 40) + 16) dns_symptoms_interrogation_sample_count])
  {
    v441 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v441, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_124;
    }

    *buf = 136446466;
    v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v502 = 1024;
    v503 = 537;
    v450 = "%{public}s::%d:Invalid DNS data: less samples";
    goto LABEL_133;
  }

  v487 = v5;
  v488 = a1;
  v498 = 0u;
  v499 = 0u;
  v496 = 0u;
  v497 = 0u;
  v491 = v6;
  v10 = [v6 stallNotifications];
  v11 = [v10 countByEnumeratingWithState:&v496 objects:v509 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v497;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v497 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v496 + 1) + 8 * i);
        if ([v17 symptom] == 4)
        {
          v14 |= [v17 facetimeCallInProgress];
        }

        v13 |= [v17 symptom] == 2;
      }

      v12 = [v10 countByEnumeratingWithState:&v496 objects:v509 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    LOBYTE(v14) = 0;
  }

  v18 = [NSNumber numberWithBool:v14 & 1];
  [v2 setObject:v18 forKeyedSubscript:@"IsCriticalAppRunning"];

  v19 = [NSNumber numberWithBool:v13 & 1];
  [v2 setObject:v19 forKeyedSubscript:@"DidUserToggleWiFiOff"];

  v20 = [*(v488 + 56) objectForKeyedSubscript:@"UserToggleBeforeDecision"];
  if (v20 && (v21 = v20, [*(v488 + 56) objectForKeyedSubscript:@"UserToggleBeforeDecision"], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, v21, (v23 & 1) != 0))
  {
    v24 = &__kCFBooleanTrue;
  }

  else
  {
    v24 = &__kCFBooleanFalse;
  }

  [v2 setObject:v24 forKeyedSubscript:@"UserToggleBeforeDecision"];
  v25 = [*(v488 + 56) objectForKeyedSubscript:@"LinkUpBeforeDecision"];
  if (v25 && (v26 = v25, [*(v488 + 56) objectForKeyedSubscript:@"LinkUpBeforeDecision"], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "BOOLValue"), v27, v26, (v28 & 1) != 0))
  {
    v29 = &__kCFBooleanTrue;
  }

  else
  {
    v29 = &__kCFBooleanFalse;
  }

  [v2 setObject:v29 forKeyedSubscript:@"LinkUpBeforeDecision"];
  v30 = [*(v488 + 56) objectForKeyedSubscript:@"UserToggleAfterDecision"];
  if (v30 && (v31 = v30, [*(v488 + 56) objectForKeyedSubscript:@"UserToggleAfterDecision"], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "BOOLValue"), v32, v31, (v33 & 1) != 0))
  {
    v34 = &__kCFBooleanTrue;
  }

  else
  {
    v34 = &__kCFBooleanFalse;
  }

  [v2 setObject:v34 forKeyedSubscript:@"UserToggleAfterDecision"];
  v35 = [*(v488 + 56) objectForKeyedSubscript:@"LinkUpAfterDecision"];
  if (v35 && (v36 = v35, [*(v488 + 56) objectForKeyedSubscript:@"LinkUpAfterDecision"], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "BOOLValue"), v37, v36, (v38 & 1) != 0))
  {
    v39 = &__kCFBooleanTrue;
  }

  else
  {
    v39 = &__kCFBooleanFalse;
  }

  v490 = v3 - 1;
  [v2 setObject:v39 forKeyedSubscript:@"LinkUpAfterDecision"];
  v40 = [v491 dpsCounterSampleAtIndex:{objc_msgSend(*(*(v488 + 40) + 16), "dns_symptoms_trap_evaluated_at_sample") - 1}];
  v41 = [v40 controllerStats];
  v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v41 channel]);

  v43 = [v491 dpsCounterSampleAtIndex:{objc_msgSend(*(*(v488 + 40) + 16), "dns_symptoms_trap_evaluated_at_sample") - 1}];
  v44 = [v43 controllerStats];
  v45 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v44 channelBandwidth]);

  [v2 setObject:v42 forKeyedSubscript:@"Channel"];
  v451 = v45;
  [v2 setObject:v45 forKeyedSubscript:@"ChannelBandwidth"];
  if ([v491 usbEventsCount])
  {
    v46 = [v491 usbEventAtIndex:{objc_msgSend(v491, "usbEventsCount") - 1}];
    v47 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v46 usbAction]);
    [v2 setObject:v47 forKeyedSubscript:@"usbAction"];

    v48 = [v491 usbEventAtIndex:{objc_msgSend(v491, "usbEventsCount") - 1}];
    v49 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v48 usbTotal]);
    [v2 setObject:v49 forKeyedSubscript:@"usbTotal"];

    v50 = [v491 usbEventAtIndex:{objc_msgSend(v491, "usbEventsCount") - 1}];
    v51 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v50 durationSinceUSBEventInSeconds]);
    [v2 setObject:v51 forKeyedSubscript:@"timeSinceUSBEvent"];

    v52 = [v491 usbEventAtIndex:{objc_msgSend(v491, "usbEventsCount") - 1}];
    v53 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v52 smartCCADesenseSupported]);
    [v2 setObject:v53 forKeyedSubscript:@"isSmartCCADesenseSupported"];

    v54 = [v491 usbEventAtIndex:{objc_msgSend(v491, "usbEventsCount") - 1}];
    v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v54 isVendorApple]);
    [v2 setObject:v55 forKeyedSubscript:@"isUSBDeviceVendorApple"];
  }

  v56 = [v491 dpsEpiloge];
  v57 = [v56 accessPointInfosCount];

  v486 = v42;
  if (v57)
  {
    v58 = [v491 dpsEpiloge];
    v59 = [v58 accessPointInfoAtIndex:0];
    v60 = [v59 modelName];
    [v2 setObject:v60 forKeyedSubscript:@"APModelName"];

    v61 = [v491 dpsEpiloge];
    v62 = [v61 accessPointInfoAtIndex:0];
    v63 = [v62 modelNumber];
    [v2 setObject:v63 forKeyedSubscript:@"APModelNumber"];

    v64 = [v491 dpsEpiloge];
    v65 = [v64 accessPointInfoAtIndex:0];
    v66 = [v65 manufacturerElement];
    [v2 setObject:v66 forKeyedSubscript:@"APManufacturerElement"];

    v67 = &__kCFBooleanTrue;
  }

  else
  {
    v67 = &__kCFBooleanFalse;
  }

  [v2 setObject:v67 forKeyedSubscript:@"IsAPInfoPresent"];
  v68 = [v491 snapshot];
  v69 = [v68 btSnapshot];
  v70 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v69 use]);
  [v2 setObject:v70 forKeyedSubscript:@"BtUse"];

  v71 = [v491 snapshot];
  v72 = [v71 awdlSnapshot];
  v73 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v72 use]);
  [v2 setObject:v73 forKeyedSubscript:@"AwdlUse"];

  v74 = [v491 snapshot];
  v75 = [v74 awdlSnapshot];
  v76 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v75 sdb]);
  [v2 setObject:v76 forKeyedSubscript:@"AwdlSdb"];

  v77 = *(v488 + 40);
  v78 = [v491 snapshot];
  v79 = [v78 btSnapshot];
  v80 = [v79 ts] / 0x3E8;
  v81 = [*(v488 + 56) objectForKeyedSubscript:@"snapshotInstance"];
  v82 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v77 computeSnapshotValidity:v80 snapshotTimestamp:v81 validityThreshold:7]);
  [v2 setObject:v82 forKeyedSubscript:@"BtSnapshotValidity"];

  v83 = *(v488 + 40);
  v84 = [v491 snapshot];
  v85 = [v84 awdlSnapshot];
  v86 = [v85 ts] / 0x3E8;
  v87 = [*(v488 + 56) objectForKeyedSubscript:@"snapshotInstance"];
  v88 = v491;
  v89 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v83 computeSnapshotValidity:v86 snapshotTimestamp:v87 validityThreshold:7]);
  [v2 setObject:v89 forKeyedSubscript:@"AwdlSnapshotValidity"];

  v90 = [v491 dpsCounterSampleAtIndex:v490];
  v91 = [v90 peerStats];
  v92 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v91 ccaValue]);
  [v2 setObject:v92 forKeyedSubscript:@"ccaValue"];

  v93 = [v491 dpsCounterSampleAtIndex:v490];
  v94 = [v93 peerStats];
  v95 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v94 rssiValue]);
  [v2 setObject:v95 forKeyedSubscript:@"rssiValue"];

  v96 = [v491 dpsCounterSampleAtIndex:v490];
  v97 = [v96 peerStats];
  v98 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v97 snrValue]);
  [v2 setObject:v98 forKeyedSubscript:@"snrValue"];

  v99 = [v491 dpsEpiloge];
  v100 = [v99 associationChangesCount];

  if (v100)
  {
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsAssociationChangesValid"];
    v494 = 0u;
    v495 = 0u;
    v492 = 0u;
    v493 = 0u;
    v101 = [v491 dpsEpiloge];
    v102 = [v101 associationChanges];

    v103 = [v102 countByEnumeratingWithState:&v492 objects:v508 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = 0;
      v106 = 0;
      v107 = *v493;
      do
      {
        for (j = 0; j != v104; j = j + 1)
        {
          if (*v493 != v107)
          {
            objc_enumerationMutation(v102);
          }

          v109 = *(*(&v492 + 1) + 8 * j);
          v106 |= [v109 changedChannel];
          v105 |= [v109 newBSSID];
        }

        v104 = [v102 countByEnumeratingWithState:&v492 objects:v508 count:16];
      }

      while (v104);
    }

    else
    {
      LOBYTE(v105) = 0;
      LOBYTE(v106) = 0;
    }

    v110 = [NSNumber numberWithBool:v106 & 1];
    [v2 setObject:v110 forKeyedSubscript:@"IsAssociatedToNewChannel"];

    v111 = [NSNumber numberWithBool:v105 & 1];
    [v2 setObject:v111 forKeyedSubscript:@"IsAssociatedToNewBSSID"];

    v88 = v491;
  }

  else
  {
    [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:@"IsAssociationChangesValid"];
  }

  v112 = [v88 dpsEpiloge];
  v113 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v112 isAssociatedAtStudyEnd]);
  [v2 setObject:v113 forKeyedSubscript:@"IsAssociatedAtStudyEnd"];

  v114 = [v88 dpsEpiloge];
  v115 = [v114 symptomsDnsStats];
  v116 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v115 isCaptiveServerIPResolved]);
  [v2 setObject:v116 forKeyedSubscript:@"IsCaptiveServerResolved"];

  v117 = [v88 dpsEpiloge];
  v118 = [v117 symptomsDnsStats];
  v119 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v118 symptomsDnsscreenStateOn]);
  [v2 setObject:v119 forKeyedSubscript:@"IsScreenStateOn"];

  v120 = [v88 dpsEpiloge];
  v121 = [v120 symptomsDnsStats];
  v122 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v121 totalDnsServers]);
  [v2 setObject:v122 forKeyedSubscript:@"TotalDnsServers"];

  v123 = [v88 dpsEpiloge];
  v124 = [v123 symptomsDnsStats];
  v125 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v124 numIpv4DnsServers]);
  [v2 setObject:v125 forKeyedSubscript:@"NumIpv4DnsServers"];

  v126 = [v88 dpsEpiloge];
  v127 = [v126 symptomsDnsStats];
  v128 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v127 numIpv6DnsServers]);
  [v2 setObject:v128 forKeyedSubscript:@"NumIpv6DnsServers"];

  v129 = [v88 dpsEpiloge];
  v130 = [v129 symptomsDnsStats];
  v131 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v130 numLocalDnsServers]);
  [v2 setObject:v131 forKeyedSubscript:@"NumLocalDnsServers"];

  v132 = [v88 dpsEpiloge];
  v133 = [v132 symptomsDnsStats];
  v134 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v133 numRemoteDnsServers]);
  [v2 setObject:v134 forKeyedSubscript:@"NumRemoteDnsServers"];

  v135 = [v88 dpsEpiloge];
  v136 = [v135 symptomsDnsStats];
  v137 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v136 lanHealthBeforeDecision]);
  [v2 setObject:v137 forKeyedSubscript:@"LanHealthBeforeDecision"];

  v138 = [v88 dpsEpiloge];
  v139 = [v138 symptomsDnsStats];
  v140 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v139 lanHealthAfterDecision]);
  [v2 setObject:v140 forKeyedSubscript:@"LanHealthAfterDecision"];

  v141 = [v88 dpsEpiloge];
  v142 = [v141 symptomsDnsStats];
  v143 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v142 wanHealthBeforeDecision]);
  [v2 setObject:v143 forKeyedSubscript:@"WanHealthBeforeDecision"];

  v144 = [v88 dpsEpiloge];
  v145 = [v144 symptomsDnsStats];
  v146 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v145 wanHealthAfterDecision]);
  [v2 setObject:v146 forKeyedSubscript:@"WanHealthAfterDecision"];

  v147 = [v88 dpsEpiloge];
  v148 = [v147 symptomsDnsStats];
  v149 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v148 netscoreHealthBeforeDecision]);
  [v2 setObject:v149 forKeyedSubscript:@"NetscoreHealthBeforeDecision"];

  v150 = [v88 dpsEpiloge];
  v151 = [v150 symptomsDnsStats];
  v152 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v151 netscoreHealthAfterDecision]);
  [v2 setObject:v152 forKeyedSubscript:@"NetscoreHealthAfterDecision"];

  v153 = [v88 dpsEpiloge];
  v154 = [v153 symptomsDnsStats];
  v155 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v154 netscoreAtStudyStart]);
  [v2 setObject:v155 forKeyedSubscript:@"NetscoreAtStudyStart"];

  v156 = [v88 dpsEpiloge];
  v157 = [v156 symptomsDnsStats];
  v158 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v157 netscoreAtStudyEnd]);
  [v2 setObject:v158 forKeyedSubscript:@"NetscoreAtStudyEnd"];

  v159 = [v88 dpsEpiloge];
  v160 = [v159 symptomsDnsStats];
  v161 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v160 impactedServersAtStudyStart]);
  [v2 setObject:v161 forKeyedSubscript:@"ImpactedServersAtStudyStart"];

  v162 = [v88 dpsEpiloge];
  v163 = [v162 symptomsDnsStats];
  v164 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v163 impactedServersAtStudyEnd]);
  [v2 setObject:v164 forKeyedSubscript:@"ImpactedServersAtStudyEnd"];

  v165 = [v88 dpsEpiloge];
  v166 = [v165 symptomsDnsStats];
  v167 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v166 symptomsDnsTimeSincePreviousTriggerMinutes]);
  [v2 setObject:v167 forKeyedSubscript:@"TimeSincePreviousTriggerInMin"];

  v168 = [v88 dpsEpiloge];
  v169 = [v168 symptomsDnsStats];
  v170 = [v169 configType];
  if (v170 >= 3)
  {
    v171 = [NSString stringWithFormat:@"(unknown: %i)", v170];
  }

  else
  {
    v171 = *(&off_1000EE780 + v170);
  }

  [v2 setObject:v171 forKeyedSubscript:@"DnsConfigType"];

  v172 = [v88 dpsEpiloge];
  v173 = [v172 symptomsDnsStats];
  v174 = [v173 suppressedReason];
  if (v174 >= 0xB)
  {
    v175 = [NSString stringWithFormat:@"(unknown: %i)", v174];
  }

  else
  {
    v175 = *(&off_1000EE798 + v174);
  }

  [v2 setObject:v175 forKeyedSubscript:@"DnsRecoverySuppressedReason"];

  v176 = [v88 dpsEpiloge];
  v177 = [v176 symptomsDnsStats];
  v178 = [v177 symptomsDnsRecommendation];
  if (v178 >= 3)
  {
    v179 = [NSString stringWithFormat:@"(unknown: %i)", v178];
  }

  else
  {
    v179 = *(&off_1000EE7F0 + v178);
  }

  [v2 setObject:v179 forKeyedSubscript:@"DnsRecoveryRecommendation"];

  v180 = [v88 dpsEpiloge];
  v181 = [v180 symptomsDnsStats];
  v182 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v181 dpsNotificationReceivedDuringStudy]);
  [v2 setObject:v182 forKeyedSubscript:@"IsDPSNotificationReceivedDuringDNSStudy"];

  v183 = [v88 dpsEpiloge];
  v184 = [v183 symptomsDnsStats];
  v185 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v184 slowWiFiNotificationReceivedDuringStudy]);
  [v2 setObject:v185 forKeyedSubscript:@"IsSlowWiFiNotificationReceivedDuringDNSStudy"];

  v186 = [v88 dpsEpiloge];
  v187 = [v186 symptomsDnsStats];
  v188 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v187 isPingEnqueueFailing]);
  [v2 setObject:v188 forKeyedSubscript:@"IsPingEnqueueFailing"];

  v189 = [*(v488 + 56) objectForKeyedSubscript:@"IPConfiguredEventTimeStamp"];

  if (v189)
  {
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsIPConfiguredEventReceived"];
    v190 = *(v488 + 40);
    v191 = [*(v488 + 56) objectForKeyedSubscript:@"decisionInstance"];
    v192 = [*(v488 + 56) objectForKeyedSubscript:@"IPConfiguredEventTimeStamp"];
    v193 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v190 computeDifferenceBetweenDates:v191 end:v192]);
    [v2 setObject:v193 forKeyedSubscript:@"IPAcquiredTimeSinceDecisionPoint"];

    v194 = [*(v488 + 56) objectForKey:@"IPAddressTypeOnInterface"];
    v195 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v194 integerValue]);
    [v2 setObject:v195 forKeyedSubscript:@"IPAddressTypeOnInterface"];
  }

  else
  {
    [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:@"IsIPConfiguredEventReceived"];
  }

  v196 = [v88 dpsCounterSampleAtIndex:v490];
  v197 = [v196 controllerStats];
  v198 = [v197 aggregateMetrics];
  v199 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v198 kTxFrames]);
  [v2 setObject:v199 forKeyedSubscript:@"TxFramesBeforeDecision"];

  v200 = [v88 dpsCounterSamples];
  v201 = [v200 lastObject];
  v202 = [v201 controllerStats];
  v203 = [v202 aggregateMetrics];
  v204 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v203 kTxFrames]);
  [v2 setObject:v204 forKeyedSubscript:@"TxFramesAfterDecision"];

  v205 = [v88 dpsCounterSampleAtIndex:v490];
  v206 = [v205 controllerStats];
  v207 = [v206 aggregateMetrics];
  v208 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v207 kTxRetransmission]);
  [v2 setObject:v208 forKeyedSubscript:@"TxRetriesBeforeDecision"];

  v209 = [v88 dpsCounterSamples];
  v210 = [v209 lastObject];
  v211 = [v210 controllerStats];
  v212 = [v211 aggregateMetrics];
  +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v212 kTxRetransmission]);
  v213 = v489 = v2;
  [v489 setObject:v213 forKeyedSubscript:@"TxRetriesAfterDecision"];

  v214 = *(v488 + 40);
  v215 = [v489 objectForKeyedSubscript:@"TxRetriesBeforeDecision"];
  v216 = [v215 integerValue];
  v217 = [v489 objectForKeyedSubscript:@"TxFramesBeforeDecision"];
  [v214 computePercentage:v216 denomenator:{objc_msgSend(v217, "integerValue")}];
  v219 = v218;

  v220 = *(v488 + 40);
  v221 = [v489 objectForKeyedSubscript:@"TxRetriesAfterDecision"];
  v222 = [v221 integerValue];
  v223 = [v489 objectForKeyedSubscript:@"TxFramesAfterDecision"];
  [v220 computePercentage:v222 denomenator:{objc_msgSend(v223, "integerValue")}];
  v225 = v224;

  v226 = [*(v488 + 40) compareValues:v219 second:v225];
  if (v226 == 2)
  {
    [v489 setObject:@"AfterHigher" forKeyedSubscript:@"TxRetryComparison"];
    v228 = v225 - v219;
    goto LABEL_66;
  }

  if (v226 == 1)
  {
    [v489 setObject:@"BeforeHigher" forKeyedSubscript:@"TxRetryComparison"];
    v228 = v219 - v225;
LABEL_66:
    v229 = [NSNumber numberWithDouble:v228];
    [v489 setObject:v229 forKeyedSubscript:@"TxRetryDifference"];

    v227 = v491;
    goto LABEL_70;
  }

  v227 = v491;
  if (v226)
  {
    v230 = [NSString stringWithFormat:@"(unknown: %lu)", v226];
    [v489 setObject:v230 forKeyedSubscript:@"TxRetryComparison"];

    v231 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v502 = 1024;
      v503 = 681;
      v504 = 2048;
      v505 = v219;
      v506 = 2048;
      v507 = v225;
      _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Invalid Comparison result for Tx Retry before:%f after:%f", buf, 0x26u);
    }
  }

  else
  {
    [v489 setObject:@"Same" forKeyedSubscript:@"TxRetryComparison"];
    [v489 setObject:&off_1001030D0 forKeyedSubscript:@"TxRetryDifference"];
  }

LABEL_70:
  v232 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
  {
    v233 = [v489 objectForKeyedSubscript:@"TxRetriesAfterDecision"];
    v234 = [v233 integerValue];
    v235 = [v489 objectForKeyedSubscript:@"TxFramesAfterDecision"];
    v236 = [v235 integerValue];
    *buf = 136446978;
    v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v502 = 1024;
    v503 = 684;
    v504 = 2048;
    v505 = *&v234;
    v506 = 2048;
    v507 = *&v236;
    _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Tx Retry after:%llu Tx Frames after:%llu", buf, 0x26u);
  }

  v237 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v502 = 1024;
    v503 = 685;
    v504 = 2048;
    v505 = v219;
    v506 = 2048;
    v507 = v225;
    _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Comparison result for Tx Retry before:%f after:%f", buf, 0x26u);
  }

  v238 = [v227 dpsCounterSampleAtIndex:v490];
  v239 = [v238 peerStats];
  v240 = [v239 completions];
  v241 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v240 success]);
  [v489 setObject:v241 forKeyedSubscript:@"TxCompletionSuccessBeforeDecision"];

  v242 = [v227 dpsCounterSamples];
  v243 = [v242 lastObject];
  v244 = [v243 peerStats];
  v245 = [v244 completions];
  v246 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v245 success]);
  [v489 setObject:v246 forKeyedSubscript:@"TxCompletionSuccessAfterDecision"];

  v247 = [v227 dpsCounterSampleAtIndex:v490];
  v248 = [v247 peerStats];
  v249 = [v248 completions];
  v250 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v249 noack]);
  [v489 setObject:v250 forKeyedSubscript:@"TxCompletionNoAckBeforeDecision"];

  v251 = [v227 dpsCounterSamples];
  v252 = [v251 lastObject];
  v253 = [v252 peerStats];
  v254 = [v253 completions];
  v255 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v254 noack]);
  [v489 setObject:v255 forKeyedSubscript:@"TxCompletionNoAckAfterDecision"];

  v256 = [v227 dpsCounterSampleAtIndex:v490];
  v257 = [v256 peerStats];
  v258 = [v257 completions];
  v259 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v258 expired]);
  [v489 setObject:v259 forKeyedSubscript:@"TxCompletionExpiryBeforeDecision"];

  v260 = [v227 dpsCounterSamples];
  v261 = [v260 lastObject];
  v262 = [v261 peerStats];
  v263 = [v262 completions];
  v264 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v263 expired]);
  [v489 setObject:v264 forKeyedSubscript:@"TxCompletionExpiryAfterDecision"];

  v484 = [v227 dpsCounterSampleAtIndex:v490];
  v482 = [v484 peerStats];
  v480 = [v482 completions];
  LODWORD(v264) = [v480 chipmodeerror];
  v478 = [v227 dpsCounterSampleAtIndex:v490];
  v476 = [v478 peerStats];
  v474 = [v476 completions];
  v265 = [v474 mbfree] + v264;
  v472 = [v227 dpsCounterSampleAtIndex:v490];
  v470 = [v472 peerStats];
  v468 = [v470 completions];
  LODWORD(v264) = [v468 noremotepeer];
  v465 = [v227 dpsCounterSampleAtIndex:v490];
  v463 = [v465 peerStats];
  v462 = [v463 completions];
  v458 = v265 + v264 + [v462 txfailure];
  [v227 dpsCounterSampleAtIndex:v490];
  v460 = v266 = v227;
  v267 = [v460 peerStats];
  v268 = [v267 completions];
  LODWORD(v261) = [v268 noresources];
  v269 = [v266 dpsCounterSampleAtIndex:v490];
  v270 = [v269 peerStats];
  v271 = [v270 completions];
  LODWORD(v263) = v261 + [v271 ioerror];
  v272 = [v266 dpsCounterSampleAtIndex:v490];
  v273 = [v272 peerStats];
  v274 = [v273 completions];
  v275 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v458 + v263 + [v274 internalerror]);
  [v489 setObject:v275 forKeyedSubscript:@"TxCompletionAllOtherErrorsBeforeDecision"];

  v485 = [v266 dpsCounterSamples];
  v483 = [v485 lastObject];
  v481 = [v483 peerStats];
  v479 = [v481 completions];
  LODWORD(v274) = [v479 chipmodeerror];
  v477 = [v266 dpsCounterSamples];
  v475 = [v477 lastObject];
  v473 = [v475 peerStats];
  v471 = [v473 completions];
  LODWORD(v271) = [v471 mbfree] + v274;
  v469 = [v266 dpsCounterSamples];
  v467 = [v469 lastObject];
  v466 = [v467 peerStats];
  v464 = [v466 completions];
  LODWORD(v274) = [v464 noremotepeer];
  v461 = [v266 dpsCounterSamples];
  v459 = [v461 lastObject];
  v457 = [v459 peerStats];
  v456 = [v457 completions];
  v452 = v271 + v274 + [v456 txfailure];
  v455 = [v266 dpsCounterSamples];
  v454 = [v455 lastObject];
  v453 = [v454 peerStats];
  v276 = [v453 completions];
  LODWORD(v274) = [v276 noresources];
  v277 = [v266 dpsCounterSamples];
  v278 = [v277 lastObject];
  v279 = [v278 peerStats];
  v280 = [v279 completions];
  LODWORD(v272) = v274 + [v280 ioerror];
  v281 = [v266 dpsCounterSamples];
  v282 = [v281 lastObject];
  v283 = [v282 peerStats];
  v284 = [v283 completions];
  v285 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v452 + v272 + [v284 internalerror]);
  [v489 setObject:v285 forKeyedSubscript:@"TxCompletionAllOtherErrorsAfterDecision"];

  v2 = v489;
  v286 = [v489 objectForKeyedSubscript:@"TxCompletionNoAckBeforeDecision"];
  v287 = [v286 integerValue];
  v288 = [v489 objectForKeyedSubscript:@"TxCompletionExpiryBeforeDecision"];
  v289 = &v287[[v288 integerValue]];
  v290 = [v489 objectForKeyedSubscript:@"TxCompletionAllOtherErrorsBeforeDecision"];
  v291 = [v290 integerValue] + v289;

  v292 = [v489 objectForKeyedSubscript:@"TxCompletionSuccessBeforeDecision"];
  v293 = [v292 integerValue];

  [*(v488 + 40) computePercentage:v291 denomenator:&v291[v293]];
  v295 = v294;
  v296 = [v489 objectForKeyedSubscript:@"TxCompletionNoAckAfterDecision"];
  v297 = [v296 integerValue];
  v298 = [v489 objectForKeyedSubscript:@"TxCompletionExpiryAfterDecision"];
  v299 = &v297[[v298 integerValue]];
  v300 = [v489 objectForKeyedSubscript:@"TxCompletionAllOtherErrorsAfterDecision"];
  v301 = [v300 integerValue] + v299;

  v302 = [v489 objectForKeyedSubscript:@"TxCompletionSuccessAfterDecision"];
  v303 = [v302 integerValue];

  [*(v488 + 40) computePercentage:v301 denomenator:&v301[v303]];
  v305 = v304;
  v306 = [*(v488 + 40) compareValues:v295 second:v304];
  if (v306 == 2)
  {
    [v489 setObject:@"AfterHigher" forKeyedSubscript:@"TxCompletionFailureComparison"];
    v308 = v305 - v295;
    goto LABEL_80;
  }

  if (v306 == 1)
  {
    [v489 setObject:@"BeforeHigher" forKeyedSubscript:@"TxCompletionFailureComparison"];
    v308 = v295 - v305;
LABEL_80:
    v309 = [NSNumber numberWithDouble:v308];
    [v489 setObject:v309 forKeyedSubscript:@"TxCompletionFailureDifference"];

    v307 = v491;
    goto LABEL_84;
  }

  v307 = v491;
  if (v306)
  {
    v310 = [NSString stringWithFormat:@"(unknown: %lu)", v306];
    [v489 setObject:v310 forKeyedSubscript:@"TxCompletionFailureComparison"];

    v311 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v502 = 1024;
      v503 = 734;
      v504 = 2048;
      v505 = v219;
      v506 = 2048;
      v507 = v225;
      _os_log_impl(&_mh_execute_header, v311, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Invalid Comparison result for Tx Retry before:%f after:%f", buf, 0x26u);
    }
  }

  else
  {
    [v489 setObject:@"Same" forKeyedSubscript:@"TxCompletionFailureComparison"];
    [v489 setObject:&off_1001030D0 forKeyedSubscript:@"TxCompletionFailureDifference"];
  }

LABEL_84:
  v312 = [v307 dpsCounterSampleAtIndex:v490];
  v313 = [v312 controllerStats];
  v314 = [v313 aggregateMetrics];
  v315 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v314 kRxFrames]);
  [v489 setObject:v315 forKeyedSubscript:@"RxFramesBeforeDecision"];

  v316 = [v307 dpsCounterSamples];
  v317 = [v316 lastObject];
  v318 = [v317 controllerStats];
  v319 = [v318 aggregateMetrics];
  v320 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v319 kRxFrames]);
  [v489 setObject:v320 forKeyedSubscript:@"RxFramesAfterDecision"];

  v321 = [v307 dpsCounterSampleAtIndex:v490];
  v322 = [v321 controllerStats];
  v323 = [v322 aggregateMetrics];
  v324 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v323 kRxRetryBitSet]);
  [v489 setObject:v324 forKeyedSubscript:@"RxRetriesBeforeDecision"];

  v325 = [v307 dpsCounterSamples];
  v326 = [v325 lastObject];
  v327 = [v326 controllerStats];
  v328 = [v327 aggregateMetrics];
  v329 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v328 kRxRetryBitSet]);
  [v489 setObject:v329 forKeyedSubscript:@"RxRetriesAfterDecision"];

  v330 = *(v488 + 40);
  v331 = [v489 objectForKeyedSubscript:@"RxRetriesBeforeDecision"];
  v332 = [v331 integerValue];
  v333 = [v489 objectForKeyedSubscript:@"RxFramesBeforeDecision"];
  [v330 computePercentage:v332 denomenator:{objc_msgSend(v333, "integerValue")}];
  v335 = v334;

  v336 = *(v488 + 40);
  v337 = [v489 objectForKeyedSubscript:@"RxRetriesAfterDecision"];
  v338 = [v337 integerValue];
  v339 = [v489 objectForKeyedSubscript:@"RxFramesAfterDecision"];
  [v336 computePercentage:v338 denomenator:{objc_msgSend(v339, "integerValue")}];
  v341 = v340;

  v342 = [*(v488 + 40) compareValues:v335 second:v341];
  if (v342 == 2)
  {
    [v489 setObject:@"AfterHigher" forKeyedSubscript:@"RxRetryComparison"];
    v344 = v341 - v335;
    goto LABEL_90;
  }

  if (v342 == 1)
  {
    [v489 setObject:@"BeforeHigher" forKeyedSubscript:@"RxRetryComparison"];
    v344 = v335 - v341;
LABEL_90:
    v345 = [NSNumber numberWithDouble:v344];
    [v489 setObject:v345 forKeyedSubscript:@"RxRetryDifference"];

    v343 = v491;
    goto LABEL_94;
  }

  v343 = v491;
  if (v342)
  {
    v346 = [NSString stringWithFormat:@"(unknown: %lu)", v342];
    [v489 setObject:v346 forKeyedSubscript:@"RxRetryComparison"];

    v347 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v347, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v502 = 1024;
      v503 = 762;
      v504 = 2048;
      v505 = v335;
      v506 = 2048;
      v507 = v341;
      _os_log_impl(&_mh_execute_header, v347, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Invalid Comparison result for Rx Retry before:%f after:%f", buf, 0x26u);
    }
  }

  else
  {
    [v489 setObject:@"Same" forKeyedSubscript:@"RxRetryComparison"];
    [v489 setObject:&off_1001030D0 forKeyedSubscript:@"RxRetryDifference"];
  }

LABEL_94:
  v348 = [v343 dpsCounterSampleAtIndex:v490];
  v349 = [v348 controllerStats];
  v350 = [v349 aggregateMetrics];
  v351 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v350 kRxGoodPLCP]);
  [v489 setObject:v351 forKeyedSubscript:@"RxGoodPLCPBeforeDecision"];

  v352 = [v343 dpsCounterSamples];
  v353 = [v352 lastObject];
  v354 = [v353 controllerStats];
  v355 = [v354 aggregateMetrics];
  v356 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v355 kRxGoodPLCP]);
  [v489 setObject:v356 forKeyedSubscript:@"RxGoodPLCPAfterDecision"];

  v357 = [v343 dpsCounterSampleAtIndex:v490];
  v358 = [v357 controllerStats];
  v359 = [v358 aggregateMetrics];
  v360 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v359 kRxBadPLCP]);
  [v489 setObject:v360 forKeyedSubscript:@"RxBadPLCPBeforeDecision"];

  v361 = [v343 dpsCounterSamples];
  v362 = [v361 lastObject];
  v363 = [v362 controllerStats];
  v364 = [v363 aggregateMetrics];
  v365 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v364 kRxBadPLCP]);
  [v489 setObject:v365 forKeyedSubscript:@"RxBadPLCPAfterDecision"];

  v366 = *(v488 + 40);
  v367 = [v489 objectForKeyedSubscript:@"RxBadPLCPBeforeDecision"];
  v368 = [v367 integerValue];
  v369 = [v489 objectForKeyedSubscript:@"RxGoodPLCPBeforeDecision"];
  v370 = [v369 integerValue];
  v371 = [v489 objectForKeyedSubscript:@"RxBadPLCPBeforeDecision"];
  [v366 computePercentage:v368 denomenator:{&v370[objc_msgSend(v371, "integerValue")]}];
  v373 = v372;

  v374 = *(v488 + 40);
  v375 = [v489 objectForKeyedSubscript:@"RxBadPLCPAfterDecision"];
  v376 = [v375 integerValue];
  v377 = [v489 objectForKeyedSubscript:@"RxGoodPLCPAfterDecision"];
  v378 = [v377 integerValue];
  v379 = [v489 objectForKeyedSubscript:@"RxBadPLCPAfterDecision"];
  [v374 computePercentage:v376 denomenator:{&v378[objc_msgSend(v379, "integerValue")]}];
  v381 = v380;

  v382 = [*(v488 + 40) compareValues:v373 second:v381];
  if (v382 == 2)
  {
    [v489 setObject:@"AfterHigher" forKeyedSubscript:@"RxBadPLCPComparison"];
    v384 = v381 - v373;
    goto LABEL_100;
  }

  if (v382 == 1)
  {
    [v489 setObject:@"BeforeHigher" forKeyedSubscript:@"RxBadPLCPComparison"];
    v384 = v373 - v381;
LABEL_100:
    v385 = [NSNumber numberWithDouble:v384];
    [v489 setObject:v385 forKeyedSubscript:@"RxBadPLCPDifference"];

    v383 = v491;
    goto LABEL_104;
  }

  v383 = v491;
  if (v382)
  {
    v386 = [NSString stringWithFormat:@"(unknown: %lu)", v382];
    [v489 setObject:v386 forKeyedSubscript:@"RxBadPLCPComparison"];

    v387 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v387, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v502 = 1024;
      v503 = 789;
      v504 = 2048;
      v505 = v373;
      v506 = 2048;
      v507 = v381;
      _os_log_impl(&_mh_execute_header, v387, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Invalid Comparison result for Rx BadPLCP before:%f after:%f", buf, 0x26u);
    }
  }

  else
  {
    [v489 setObject:@"Same" forKeyedSubscript:@"RxBadPLCPComparison"];
    [v489 setObject:&off_1001030D0 forKeyedSubscript:@"RxBadPLCPDifference"];
  }

LABEL_104:
  v388 = [v383 dpsCounterSampleAtIndex:v490];
  v389 = [v388 controllerStats];
  v390 = [v389 aggregateMetrics];
  v391 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v390 kRxBadFCS]);
  [v489 setObject:v391 forKeyedSubscript:@"RxBadFCSBeforeDecision"];

  v392 = [v383 dpsCounterSamples];
  v393 = [v392 lastObject];
  v394 = [v393 controllerStats];
  v395 = [v394 aggregateMetrics];
  v396 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v395 kRxBadFCS]);
  [v489 setObject:v396 forKeyedSubscript:@"RxBadFCSAfterDecision"];

  v397 = *(v488 + 40);
  v398 = [v489 objectForKeyedSubscript:@"RxBadFCSBeforeDecision"];
  v399 = [v398 integerValue];
  v400 = [v489 objectForKeyedSubscript:@"RxGoodPLCPBeforeDecision"];
  [v397 computePercentage:v399 denomenator:{objc_msgSend(v400, "integerValue")}];
  v402 = v401;

  v403 = *(v488 + 40);
  v404 = [v489 objectForKeyedSubscript:@"RxBadFCSAfterDecision"];
  v405 = [v404 integerValue];
  v406 = [v489 objectForKeyedSubscript:@"RxGoodPLCPAfterDecision"];
  [v403 computePercentage:v405 denomenator:{objc_msgSend(v406, "integerValue")}];
  v408 = v407;

  v409 = [*(v488 + 40) compareValues:v402 second:v408];
  if (v409 == 2)
  {
    [v489 setObject:@"AfterHigher" forKeyedSubscript:@"RxBadFCSComparison"];
    v411 = v408 - v402;
  }

  else
  {
    if (v409 != 1)
    {
      v410 = v491;
      if (v409)
      {
        v413 = [NSString stringWithFormat:@"(unknown: %lu)", v409];
        [v489 setObject:v413 forKeyedSubscript:@"RxBadFCSComparison"];

        v414 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
          v502 = 1024;
          v503 = 813;
          v504 = 2048;
          v505 = v402;
          v506 = 2048;
          v507 = v408;
          _os_log_impl(&_mh_execute_header, v414, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Invalid Comparison result for Rx BadFCS before:%f after:%f", buf, 0x26u);
        }
      }

      else
      {
        [v489 setObject:@"Same" forKeyedSubscript:@"RxBadFCSComparison"];
        [v489 setObject:&off_1001030D0 forKeyedSubscript:@"RxBadFCSDifference"];
      }

      goto LABEL_114;
    }

    [v489 setObject:@"BeforeHigher" forKeyedSubscript:@"RxBadFCSComparison"];
    v411 = v402 - v408;
  }

  v412 = [NSNumber numberWithDouble:v411];
  [v489 setObject:v412 forKeyedSubscript:@"RxBadFCSDifference"];

  v410 = v491;
LABEL_114:
  v415 = [v410 dpsCounterSampleAtIndex:v490];
  v416 = [v415 controllerStats];
  v417 = [v416 aggregateMetrics];
  v418 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v417 kRxCRCGlitch]);
  [v489 setObject:v418 forKeyedSubscript:@"RxCRCGlitchBeforeDecision"];

  v419 = [v410 dpsCounterSamples];
  v420 = [v419 lastObject];
  v421 = [v420 controllerStats];
  v422 = [v421 aggregateMetrics];
  v423 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v422 kRxCRCGlitch]);
  [v489 setObject:v423 forKeyedSubscript:@"RxCRCGlitchAfterDecision"];

  v424 = *(v488 + 40);
  v425 = [v489 objectForKeyedSubscript:@"RxCRCGlitchBeforeDecision"];
  v426 = [v425 integerValue];
  v427 = [v489 objectForKeyedSubscript:@"RxGoodPLCPBeforeDecision"];
  v428 = [v427 integerValue];
  v429 = [v489 objectForKeyedSubscript:@"RxBadPLCPBeforeDecision"];
  [v424 computePercentage:v426 denomenator:{&v428[objc_msgSend(v429, "integerValue")]}];
  v431 = v430;

  v432 = *(v488 + 40);
  v433 = [v489 objectForKeyedSubscript:@"RxCRCGlitchAfterDecision"];
  v434 = [v433 integerValue];
  v435 = [v489 objectForKeyedSubscript:@"RxGoodPLCPAfterDecision"];
  v436 = [v435 integerValue];
  v437 = [v489 objectForKeyedSubscript:@"RxBadPLCPAfterDecision"];
  [v432 computePercentage:v434 denomenator:{&v436[objc_msgSend(v437, "integerValue")]}];
  v439 = v438;

  v440 = [*(v488 + 40) compareValues:v431 second:v439];
  if (v440 == 2)
  {
    [v489 setObject:@"AfterHigher" forKeyedSubscript:@"RxCRCGlitchComparison"];
    v443 = [NSNumber numberWithDouble:v439 - v431];
    [v489 setObject:v443 forKeyedSubscript:@"RxCRCGlitchDifference"];

    v441 = v486;
    v5 = v487;
  }

  else
  {
    v441 = v486;
    v5 = v487;
    if (v440 == 1)
    {
      [v489 setObject:@"BeforeHigher" forKeyedSubscript:@"RxCRCGlitchComparison"];
      v442 = [NSNumber numberWithDouble:v431 - v439];
      [v489 setObject:v442 forKeyedSubscript:@"RxCRCGlitchDifference"];
    }

    else if (v440)
    {
      v444 = [NSString stringWithFormat:@"(unknown: %lu)", v440];
      [v489 setObject:v444 forKeyedSubscript:@"RxCRCGlitchComparison"];

      v445 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v445, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
        v502 = 1024;
        v503 = 837;
        v504 = 2048;
        v505 = v431;
        v506 = 2048;
        v507 = v439;
        _os_log_impl(&_mh_execute_header, v445, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Invalid Comparison result for Rx CRCGlitch before:%f after:%f", buf, 0x26u);
      }
    }

    else
    {
      [v489 setObject:@"Same" forKeyedSubscript:@"RxCRCGlitchComparison"];
      [v489 setObject:&off_1001030D0 forKeyedSubscript:@"RxCRCGlitchDifference"];
    }
  }

LABEL_124:

  v446 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v446, OS_LOG_TYPE_DEFAULT))
  {
    v447 = [v2 count];
    *buf = 136446722;
    v501 = "[CADataTransformEngine transformAndSubmitDNSMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v502 = 1024;
    v503 = 841;
    v504 = 2048;
    v505 = *&v447;
    _os_log_impl(&_mh_execute_header, v446, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DNS metric dict fieldCount: %lu", buf, 0x1Cu);
  }

  v448 = v2;
  return v2;
}

void *sub_10008C664(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [NSMutableDictionary dictionaryWithDictionary:?];
  }

  else
  {
    +[NSMutableDictionary dictionary];
  }
  v2 = ;
  v3 = [*(a1 + 40) instantiateAWDProtobufAndPopulateValues:*(a1 + 48)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if ([v5 hasSlowNotice])
    {
      v6 = [v5 slowNotice];
      [v6 recoveryReason];
    }

    else
    {
      v6 = 0;
    }

    v314 = a1;
    v7 = [NSNumber numberWithUnsignedInt:[v6 actionField]];
    [v2 setObject:v7 forKeyedSubscript:@"actionField"];

    v8 = [NSNumber numberWithUnsignedInt:[v6 recoveryAction]];
    [v2 setObject:v8 forKeyedSubscript:@"recoveryAction"];

    v9 = [NSNumber numberWithUnsignedInt:[v6 recoveryReason]];
    [v2 setObject:v9 forKeyedSubscript:@"recoveryReason"];

    v10 = [NSNumber numberWithUnsignedInt:[v6 userInput]];
    [v2 setObject:v10 forKeyedSubscript:@"userInput"];

    v11 = [NSNumber numberWithBool:[v6 facetimeCallInProgress]];
    [v2 setObject:v11 forKeyedSubscript:@"IsCriticalAppInUse"];

    if ([v5 usbEventsCount])
    {
      v12 = [v5 usbEventAtIndex:{objc_msgSend(v5, "usbEventsCount") - 1}];
      v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 usbAction]);
      [v2 setObject:v13 forKeyedSubscript:@"usbAction"];

      v14 = [v5 usbEventAtIndex:{objc_msgSend(v5, "usbEventsCount") - 1}];
      v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 usbTotal]);
      [v2 setObject:v15 forKeyedSubscript:@"usbTotal"];

      v16 = [v5 usbEventAtIndex:{objc_msgSend(v5, "usbEventsCount") - 1}];
      v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 durationSinceUSBEventInSeconds]);
      [v2 setObject:v17 forKeyedSubscript:@"timeSinceUSBEvent"];

      v18 = [v5 usbEventAtIndex:{objc_msgSend(v5, "usbEventsCount") - 1}];
      v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 smartCCADesenseSupported]);
      [v2 setObject:v19 forKeyedSubscript:@"isSmartCCADesenseSupported"];

      v20 = [v5 usbEventAtIndex:{objc_msgSend(v5, "usbEventsCount") - 1}];
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 isVendorApple]);
      [v2 setObject:v21 forKeyedSubscript:@"isUSBDeviceVendorApple"];
    }

    v22 = [v5 linkQualSampleAtIndex:0];
    v23 = [v5 linkQualSamples];
    v24 = [v23 lastObject];

    v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 cCA]);
    [v2 setObject:v25 forKeyedSubscript:@"CCABeforeRecovery"];

    v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 cCA]);
    [v2 setObject:v26 forKeyedSubscript:@"CCAAfterRecovery"];

    v27 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v22 rSSI]);
    [v2 setObject:v27 forKeyedSubscript:@"RSSIBeforeRecovery"];

    v28 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v24 rSSI]);
    [v2 setObject:v28 forKeyedSubscript:@"RSSIAfterRecovery"];

    v29 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 sNR]);
    [v2 setObject:v29 forKeyedSubscript:@"SNRBeforeRecovery"];

    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 sNR]);
    [v2 setObject:v30 forKeyedSubscript:@"SNRAfterRecovery"];

    v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 txExpectedAMPDUDensity]);
    [v2 setObject:v31 forKeyedSubscript:@"TxExpectedAMPDUDensityBeforeRecovery"];

    v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 txExpectedAMPDUDensity]);
    [v2 setObject:v32 forKeyedSubscript:@"TxExpectedAMPDUDensityAfterRecovery"];

    v33 = *(v314 + 40);
    v34 = [v2 objectForKeyedSubscript:@"TxExpectedAMPDUDensityBeforeRecovery"];
    v35 = [v34 integerValue];
    v36 = [v2 objectForKeyedSubscript:@"TxExpectedAMPDUDensityAfterRecovery"];
    v37 = [v33 compareValues:v35 second:{objc_msgSend(v36, "integerValue")}];

    v312 = v6;
    v313 = v4;
    if (v37 >= 3)
    {
      v38 = [NSString stringWithFormat:@"(unknown: %lu)", v37];
    }

    else
    {
      v38 = *(&off_1000EE808 + v37);
    }

    [v2 setObject:v38 forKeyedSubscript:@"TxExpectedAMPDUDensityComparison"];

    v39 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v2 objectForKeyedSubscript:@"TxExpectedAMPDUDensityBeforeRecovery"];
      v41 = [v40 integerValue];
      v42 = [v2 objectForKeyedSubscript:@"TxExpectedAMPDUDensityAfterRecovery"];
      v43 = [v42 integerValue];
      v44 = [v2 objectForKeyedSubscript:@"TxExpectedAMPDUDensityComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 913;
      v319 = 2048;
      v320 = v41;
      v321 = 2048;
      v322 = v43;
      v323 = 2112;
      v324 = v44;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:TxExpectedAMPDUDensity before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v45 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 aPTxDataStall]);
    [v2 setObject:v45 forKeyedSubscript:@"APTxDataStallBeforeRecovery"];

    v46 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 aPTxDataStall]);
    [v2 setObject:v46 forKeyedSubscript:@"APTxDataStallAfterRecovery"];

    v47 = *(v314 + 40);
    v48 = [v2 objectForKeyedSubscript:@"APTxDataStallBeforeRecovery"];
    v49 = [v48 integerValue];
    v50 = [v2 objectForKeyedSubscript:@"APTxDataStallAfterRecovery"];
    v51 = [v47 compareValues:v49 second:{objc_msgSend(v50, "integerValue")}];

    if (v51 >= 3)
    {
      v52 = [NSString stringWithFormat:@"(unknown: %lu)", v51];
    }

    else
    {
      v52 = *(&off_1000EE808 + v51);
    }

    [v2 setObject:v52 forKeyedSubscript:@"APTxDataStallComparison"];

    v53 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v2 objectForKeyedSubscript:@"APTxDataStallBeforeRecovery"];
      v55 = [v54 integerValue];
      v56 = [v2 objectForKeyedSubscript:@"APTxDataStallAfterRecovery"];
      v57 = [v56 integerValue];
      v58 = [v2 objectForKeyedSubscript:@"APTxDataStallComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 919;
      v319 = 2048;
      v320 = v55;
      v321 = 2048;
      v322 = v57;
      v323 = 2112;
      v324 = v58;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:APTxStall before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v59 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 rxAmpduTxBaMismatch]);
    [v2 setObject:v59 forKeyedSubscript:@"RxAmpduTxBaMismatchBeforeRecovery"];

    v60 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 rxAmpduTxBaMismatch]);
    [v2 setObject:v60 forKeyedSubscript:@"RxAmpduTxBaMismatchAfterRecovery"];

    v61 = *(v314 + 40);
    v62 = [v2 objectForKeyedSubscript:@"RxAmpduTxBaMismatchBeforeRecovery"];
    v63 = [v62 integerValue];
    v64 = [v2 objectForKeyedSubscript:@"RxAmpduTxBaMismatchAfterRecovery"];
    v65 = [v61 compareValues:v63 second:{objc_msgSend(v64, "integerValue")}];

    if (v65 >= 3)
    {
      v66 = [NSString stringWithFormat:@"(unknown: %lu)", v65];
    }

    else
    {
      v66 = *(&off_1000EE808 + v65);
    }

    [v2 setObject:v66 forKeyedSubscript:@"RxAmpduTxBaMismatchComparison"];

    v67 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [v2 objectForKeyedSubscript:@"RxAmpduTxBaMismatchBeforeRecovery"];
      v69 = [v68 integerValue];
      v70 = [v2 objectForKeyedSubscript:@"RxAmpduTxBaMismatchAfterRecovery"];
      v71 = [v70 integerValue];
      v72 = [v2 objectForKeyedSubscript:@"RxAmpduTxBaMismatchComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 925;
      v319 = 2048;
      v320 = v69;
      v321 = 2048;
      v322 = v71;
      v323 = 2112;
      v324 = v72;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RxAmpduTxBaMismatch before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v73 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 symptomsFails]);
    [v2 setObject:v73 forKeyedSubscript:@"SymptomsFailsBeforeRecovery"];

    v74 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 symptomsFails]);
    [v2 setObject:v74 forKeyedSubscript:@"SymptomsFailsAfterRecovery"];

    v75 = *(v314 + 40);
    v76 = [v2 objectForKeyedSubscript:@"SymptomsFailsBeforeRecovery"];
    v77 = [v76 integerValue];
    v78 = [v2 objectForKeyedSubscript:@"SymptomsFailsAfterRecovery"];
    v79 = [v75 compareValues:v77 second:{objc_msgSend(v78, "integerValue")}];

    if (v79 >= 3)
    {
      v80 = [NSString stringWithFormat:@"(unknown: %lu)", v79];
    }

    else
    {
      v80 = *(&off_1000EE808 + v79);
    }

    [v2 setObject:v80 forKeyedSubscript:@"SymptomsFailsComparison"];

    v81 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = [v2 objectForKeyedSubscript:@"SymptomsFailsBeforeRecovery"];
      v83 = [v82 integerValue];
      v84 = [v2 objectForKeyedSubscript:@"SymptomsFailsAfterRecovery"];
      v85 = [v84 integerValue];
      v86 = [v2 objectForKeyedSubscript:@"SymptomsFailsComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 931;
      v319 = 2048;
      v320 = v83;
      v321 = 2048;
      v322 = v85;
      v323 = 2112;
      v324 = v86;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SymptomsFails before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v87 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 infraDutyCycle]);
    [v2 setObject:v87 forKeyedSubscript:@"InfraDutyCycleBeforeRecovery"];

    v88 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 infraDutyCycle]);
    [v2 setObject:v88 forKeyedSubscript:@"InfraDutyCycleAfterRecovery"];

    v89 = *(v314 + 40);
    v90 = [v2 objectForKeyedSubscript:@"InfraDutyCycleBeforeRecovery"];
    v91 = [v90 integerValue];
    v92 = [v2 objectForKeyedSubscript:@"InfraDutyCycleAfterRecovery"];
    v93 = [v89 compareValues:v91 second:{objc_msgSend(v92, "integerValue")}];

    if (v93 >= 3)
    {
      v94 = [NSString stringWithFormat:@"(unknown: %lu)", v93];
    }

    else
    {
      v94 = *(&off_1000EE808 + v93);
    }

    [v2 setObject:v94 forKeyedSubscript:@"InfraDutyCycleComparison"];

    v95 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v96 = [v2 objectForKeyedSubscript:@"InfraDutyCycleBeforeRecovery"];
      v97 = [v96 integerValue];
      v98 = [v2 objectForKeyedSubscript:@"InfraDutyCycleAfterRecovery"];
      v99 = [v98 integerValue];
      v100 = [v2 objectForKeyedSubscript:@"InfraDutyCycleComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 937;
      v319 = 2048;
      v320 = v97;
      v321 = 2048;
      v322 = v99;
      v323 = 2112;
      v324 = v100;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:InfraDutyCycle before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v101 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 lastScanReason]);
    [v2 setObject:v101 forKeyedSubscript:@"LastScanReasonBeforeRecovery"];

    v102 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 lastScanReason]);
    [v2 setObject:v102 forKeyedSubscript:@"LastScanReasonAfterRecovery"];

    v103 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 accessPointOUI]);
    [v2 setObject:v103 forKeyedSubscript:@"AccessPointOUIBeforeRecovery"];

    v104 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 accessPointOUI]);
    [v2 setObject:v104 forKeyedSubscript:@"AccessPointOUIAfterRecovery"];

    v105 = [v22 accessPointOUI];
    if (v105 == [v24 accessPointOUI])
    {
      v106 = &__kCFBooleanTrue;
    }

    else
    {
      v106 = &__kCFBooleanFalse;
    }

    [v2 setObject:v106 forKeyedSubscript:@"IsAccessPointOUISameAfterRecovery"];
    if ([v22 is2GBand])
    {
      v107 = &__kCFBooleanTrue;
    }

    else
    {
      v107 = &__kCFBooleanFalse;
    }

    [v2 setObject:v107 forKeyedSubscript:@"Is2GBandBeforeRecovery"];
    if ([v24 is2GBand])
    {
      v108 = &__kCFBooleanTrue;
    }

    else
    {
      v108 = &__kCFBooleanFalse;
    }

    [v2 setObject:v108 forKeyedSubscript:@"Is2GBandAfterRecovery"];
    if ([v22 isFGTraffic])
    {
      v109 = &__kCFBooleanTrue;
    }

    else
    {
      v109 = &__kCFBooleanFalse;
    }

    [v2 setObject:v109 forKeyedSubscript:@"IsFGTrafficBeforeRecovery"];
    if ([v24 isFGTraffic])
    {
      v110 = &__kCFBooleanTrue;
    }

    else
    {
      v110 = &__kCFBooleanFalse;
    }

    [v2 setObject:v110 forKeyedSubscript:@"IsFGTrafficAfterRecovery"];
    v111 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 rxThroughput]);
    [v2 setObject:v111 forKeyedSubscript:@"RxThroughputBeforeRecovery"];

    v112 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 rxThroughput]);
    [v2 setObject:v112 forKeyedSubscript:@"RxThroughputAfterRecovery"];

    v113 = *(v314 + 40);
    v114 = [v2 objectForKeyedSubscript:@"RxThroughputBeforeRecovery"];
    v115 = [v114 integerValue];
    v116 = [v2 objectForKeyedSubscript:@"RxThroughputAfterRecovery"];
    v117 = [v113 compareValues:v115 second:{objc_msgSend(v116, "integerValue")}];

    if (v117 >= 3)
    {
      v118 = [NSString stringWithFormat:@"(unknown: %lu)", v117];
    }

    else
    {
      v118 = *(&off_1000EE808 + v117);
    }

    [v2 setObject:v118 forKeyedSubscript:@"RxThroughputComparison"];

    v119 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v120 = [v2 objectForKeyedSubscript:@"RxThroughputBeforeRecovery"];
      v121 = [v120 integerValue];
      v122 = [v2 objectForKeyedSubscript:@"RxThroughputAfterRecovery"];
      v123 = [v122 integerValue];
      v124 = [v2 objectForKeyedSubscript:@"RxThroughputComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 956;
      v319 = 2048;
      v320 = v121;
      v321 = 2048;
      v322 = v123;
      v323 = 2112;
      v324 = v124;
      _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RxThroughput before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v125 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 baselineThroughput]);
    [v2 setObject:v125 forKeyedSubscript:@"BaselineThroughputBeforeRecovery"];

    v126 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 baselineThroughput]);
    [v2 setObject:v126 forKeyedSubscript:@"BaselineThroughputAfterRecovery"];

    v127 = *(v314 + 40);
    v128 = [v2 objectForKeyedSubscript:@"BaselineThroughputBeforeRecovery"];
    v129 = [v128 integerValue];
    v130 = [v2 objectForKeyedSubscript:@"BaselineThroughputAfterRecovery"];
    v131 = [v127 compareValues:v129 second:{objc_msgSend(v130, "integerValue")}];

    if (v131 >= 3)
    {
      v132 = [NSString stringWithFormat:@"(unknown: %lu)", v131];
    }

    else
    {
      v132 = *(&off_1000EE808 + v131);
    }

    [v2 setObject:v132 forKeyedSubscript:@"BaselineThroughputComparison"];

    v133 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      v134 = [v2 objectForKeyedSubscript:@"BaselineThroughputBeforeRecovery"];
      v135 = [v134 integerValue];
      v136 = [v2 objectForKeyedSubscript:@"BaselineThroughputAfterRecovery"];
      v137 = [v136 integerValue];
      v138 = [v2 objectForKeyedSubscript:@"BaselineThroughputComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 962;
      v319 = 2048;
      v320 = v135;
      v321 = 2048;
      v322 = v137;
      v323 = 2112;
      v324 = v138;
      _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BaselineThroughput before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v139 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 testThroughput]);
    [v2 setObject:v139 forKeyedSubscript:@"TestThroughputBeforeRecovery"];

    v140 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 testThroughput]);
    [v2 setObject:v140 forKeyedSubscript:@"TestThroughputAfterRecovery"];

    v141 = *(v314 + 40);
    v142 = [v2 objectForKeyedSubscript:@"TestThroughputBeforeRecovery"];
    v143 = [v142 integerValue];
    v144 = [v2 objectForKeyedSubscript:@"TestThroughputAfterRecovery"];
    v145 = [v141 compareValues:v143 second:{objc_msgSend(v144, "integerValue")}];

    if (v145 >= 3)
    {
      v146 = [NSString stringWithFormat:@"(unknown: %lu)", v145];
    }

    else
    {
      v146 = *(&off_1000EE808 + v145);
    }

    [v2 setObject:v146 forKeyedSubscript:@"TestThroughputComparison"];

    v147 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      v148 = [v2 objectForKeyedSubscript:@"TestThroughputBeforeRecovery"];
      v149 = [v148 integerValue];
      v150 = [v2 objectForKeyedSubscript:@"TestThroughputAfterRecovery"];
      v151 = [v150 integerValue];
      v152 = [v2 objectForKeyedSubscript:@"TestThroughputComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 968;
      v319 = 2048;
      v320 = v149;
      v321 = 2048;
      v322 = v151;
      v323 = 2112;
      v324 = v152;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:TestThroughput before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    v153 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 txAMPDUDensity]);
    [v2 setObject:v153 forKeyedSubscript:@"TxAMPDUDensityBeforeRecovery"];

    v154 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 txAMPDUDensity]);
    [v2 setObject:v154 forKeyedSubscript:@"TxAMPDUDensityAfterRecovery"];

    v155 = *(v314 + 40);
    v156 = [v2 objectForKeyedSubscript:@"TxAMPDUDensityBeforeRecovery"];
    v157 = [v156 integerValue];
    v158 = [v2 objectForKeyedSubscript:@"TxAMPDUDensityAfterRecovery"];
    v159 = [v155 compareValues:v157 second:{objc_msgSend(v158, "integerValue")}];

    if (v159 >= 3)
    {
      v160 = [NSString stringWithFormat:@"(unknown: %lu)", v159];
    }

    else
    {
      v160 = *(&off_1000EE808 + v159);
    }

    [v2 setObject:v160 forKeyedSubscript:@"TxAMPDUDensityComparison"];

    v161 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      v162 = [v2 objectForKeyedSubscript:@"TxAMPDUDensityBeforeRecovery"];
      v163 = [v162 integerValue];
      v164 = [v2 objectForKeyedSubscript:@"TxAMPDUDensityAfterRecovery"];
      v165 = [v164 integerValue];
      v166 = [v2 objectForKeyedSubscript:@"TxAMPDUDensityComparison"];
      *buf = 136447234;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 974;
      v319 = 2048;
      v320 = v163;
      v321 = 2048;
      v322 = v165;
      v323 = 2112;
      v324 = v166;
      _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:TxAMPDU before:%ld after:%ld comparison:%@", buf, 0x30u);
    }

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"rxFCSErrs") + objc_msgSend(v22, "rxPLCPErrs"), objc_msgSend(v22, "rxFCSErrs") + objc_msgSend(v22, "rxPLCPErrs") + objc_msgSend(v22, "rxGoodPlcps")}];
    v167 = [NSNumber numberWithDouble:?];
    [v2 setObject:v167 forKeyedSubscript:@"PhyErrPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"rxFCSErrs") + objc_msgSend(v24, "rxPLCPErrs"), objc_msgSend(v24, "rxFCSErrs") + objc_msgSend(v24, "rxPLCPErrs") + objc_msgSend(v24, "rxGoodPlcps")}];
    v168 = [NSNumber numberWithDouble:?];
    [v2 setObject:v168 forKeyedSubscript:@"PhyErrPercentAfterRecovery"];

    v169 = *(v314 + 40);
    v170 = [v2 objectForKeyedSubscript:@"PhyErrPercentBeforeRecovery"];
    v171 = [v170 integerValue];
    v172 = [v2 objectForKeyedSubscript:@"PhyErrPercentBeforeRecovery"];
    v173 = [v169 compareValues:v171 second:{objc_msgSend(v172, "integerValue")}];

    if (v173 >= 3)
    {
      v175 = &WAXPCRequestDelegateInterface_ptr;
      v174 = [NSString stringWithFormat:@"(unknown: %lu)", v173];
    }

    else
    {
      v174 = *(&off_1000EE808 + v173);
      v175 = &WAXPCRequestDelegateInterface_ptr;
    }

    [v2 setObject:v174 forKeyedSubscript:@"PhyErrPercentComparison"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"txCompPkts"), objc_msgSend(v22, "txSubPkts")}];
    v176 = [NSNumber numberWithDouble:?];
    [v2 setObject:v176 forKeyedSubscript:@"CompletionPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"txCompPkts"), objc_msgSend(v24, "txSubPkts")}];
    v177 = [NSNumber numberWithDouble:?];
    [v2 setObject:v177 forKeyedSubscript:@"CompletionPercentAfterRecovery"];

    v178 = *(v314 + 40);
    v179 = [v2 objectForKeyedSubscript:@"CompletionPercentBeforeRecovery"];
    v180 = [v179 integerValue];
    v181 = [v2 objectForKeyedSubscript:@"CompletionPercentAfterRecovery"];
    v182 = [v178 compareValues:v180 second:{objc_msgSend(v181, "integerValue")}];

    if (v182 >= 3)
    {
      v183 = [v175[401] stringWithFormat:@"(unknown: %lu)", v182];
    }

    else
    {
      v183 = *(&off_1000EE808 + v182);
    }

    [v2 setObject:v183 forKeyedSubscript:@"CompletionPercentComparison"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"txRetries"), objc_msgSend(v22, "txFrames")}];
    v184 = [NSNumber numberWithDouble:?];
    [v2 setObject:v184 forKeyedSubscript:@"TxRetryPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"txRetries"), objc_msgSend(v24, "txFrames")}];
    v185 = [NSNumber numberWithDouble:?];
    [v2 setObject:v185 forKeyedSubscript:@"TxRetryPercentAfterRecovery"];

    v186 = *(v314 + 40);
    v187 = [v2 objectForKeyedSubscript:@"TxRetryPercentBeforeRecovery"];
    v188 = [v187 integerValue];
    v189 = [v2 objectForKeyedSubscript:@"TxRetryPercentAfterRecovery"];
    v190 = [v186 compareValues:v188 second:{objc_msgSend(v189, "integerValue")}];

    if (v190 >= 3)
    {
      v191 = [v175[401] stringWithFormat:@"(unknown: %lu)", v190];
    }

    else
    {
      v191 = *(&off_1000EE808 + v190);
    }

    [v2 setObject:v191 forKeyedSubscript:@"TxRetryPercentComparison"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"txFails"), objc_msgSend(v22, "txFrames")}];
    v192 = [NSNumber numberWithDouble:?];
    [v2 setObject:v192 forKeyedSubscript:@"TxFailPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"txFails"), objc_msgSend(v24, "txFrames")}];
    v193 = [NSNumber numberWithDouble:?];
    [v2 setObject:v193 forKeyedSubscript:@"TxFailPercentAfterRecovery"];

    v194 = *(v314 + 40);
    v195 = [v2 objectForKeyedSubscript:@"TxFailPercentBeforeRecovery"];
    v196 = [v195 integerValue];
    v197 = [v2 objectForKeyedSubscript:@"TxFailPercentAfterRecovery"];
    v198 = [v194 compareValues:v196 second:{objc_msgSend(v197, "integerValue")}];

    if (v198 >= 3)
    {
      v199 = [v175[401] stringWithFormat:@"(unknown: %lu)", v198];
    }

    else
    {
      v199 = *(&off_1000EE808 + v198);
    }

    [v2 setObject:v199 forKeyedSubscript:@"TxFailPercentComparison"];

    v200 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 rxOvflErrs]);
    [v2 setObject:v200 forKeyedSubscript:@"RxOvflErrsBeforeRecovery"];

    v201 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 rxOvflErrs]);
    [v2 setObject:v201 forKeyedSubscript:@"RxOvflErrsAfterRecovery"];

    v202 = *(v314 + 40);
    v203 = [v2 objectForKeyedSubscript:@"RxOvflErrsBeforeRecovery"];
    v204 = [v203 integerValue];
    v205 = [v2 objectForKeyedSubscript:@"RxOvflErrsAfterRecovery"];
    v206 = [v202 compareValues:v204 second:{objc_msgSend(v205, "integerValue")}];

    if (v206 >= 3)
    {
      v207 = [v175[401] stringWithFormat:@"(unknown: %lu)", v206];
    }

    else
    {
      v207 = *(&off_1000EE808 + v206);
    }

    [v2 setObject:v207 forKeyedSubscript:@"RxOvflErrsComparison"];

    v208 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 rxReplayErrs]);
    [v2 setObject:v208 forKeyedSubscript:@"RxReplayErrsBeforeRecovery"];

    v209 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 rxReplayErrs]);
    [v2 setObject:v209 forKeyedSubscript:@"RxReplayErrsAfterRecovery"];

    v210 = *(v314 + 40);
    v211 = [v2 objectForKeyedSubscript:@"RxReplayErrsBeforeRecovery"];
    v212 = [v211 integerValue];
    v213 = [v2 objectForKeyedSubscript:@"RxReplayErrsAfterRecovery"];
    v214 = [v210 compareValues:v212 second:{objc_msgSend(v213, "integerValue")}];

    if (v214 >= 3)
    {
      v215 = [v175[401] stringWithFormat:@"(unknown: %lu)", v214];
    }

    else
    {
      v215 = *(&off_1000EE808 + v214);
    }

    [v2 setObject:v215 forKeyedSubscript:@"RxReplayErrsComparison"];

    v216 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 rxDecryErrs]);
    [v2 setObject:v216 forKeyedSubscript:@"RxDecryErrsBeforeRecovery"];

    v217 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 rxDecryErrs]);
    [v2 setObject:v217 forKeyedSubscript:@"RxDecryErrsAfterRecovery"];

    v218 = *(v314 + 40);
    v219 = [v2 objectForKeyedSubscript:@"RxDecryErrsBeforeRecovery"];
    v220 = [v219 integerValue];
    v221 = [v2 objectForKeyedSubscript:@"RxDecryErrsAfterRecovery"];
    v222 = [v218 compareValues:v220 second:{objc_msgSend(v221, "integerValue")}];

    if (v222 >= 3)
    {
      v223 = [v175[401] stringWithFormat:@"(unknown: %lu)", v222];
    }

    else
    {
      v223 = *(&off_1000EE808 + v222);
    }

    [v2 setObject:v223 forKeyedSubscript:@"RxDecryErrsComparison"];

    v224 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 rxCRSErrs]);
    [v2 setObject:v224 forKeyedSubscript:@"RxCRSErrsBeforeRecovery"];

    v225 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 rxCRSErrs]);
    [v2 setObject:v225 forKeyedSubscript:@"RxCRSErrsAfterRecovery"];

    v226 = *(v314 + 40);
    v227 = [v2 objectForKeyedSubscript:@"RxCRSErrsBeforeRecovery"];
    v228 = [v227 integerValue];
    v229 = [v2 objectForKeyedSubscript:@"RxCRSErrsAfterRecovery"];
    v230 = [v226 compareValues:v228 second:{objc_msgSend(v229, "integerValue")}];

    if (v230 >= 3)
    {
      v231 = [v175[401] stringWithFormat:@"(unknown: %lu)", v230];
    }

    else
    {
      v231 = *(&off_1000EE808 + v230);
    }

    [v2 setObject:v231 forKeyedSubscript:@"RxCRSErrsComparison"];

    v232 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 txPhyRate]);
    [v2 setObject:v232 forKeyedSubscript:@"TxPhyRateBeforeRecovery"];

    v233 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 txPhyRate]);
    [v2 setObject:v233 forKeyedSubscript:@"TxPhyRateAfterRecovery"];

    v234 = *(v314 + 40);
    v235 = [v2 objectForKeyedSubscript:@"TxPhyRateBeforeRecovery"];
    v236 = [v235 integerValue];
    v237 = [v2 objectForKeyedSubscript:@"TxPhyRateAfterRecovery"];
    v238 = [v234 compareValues:v236 second:{objc_msgSend(v237, "integerValue")}];

    if (v238 >= 3)
    {
      v239 = [v175[401] stringWithFormat:@"(unknown: %lu)", v238];
    }

    else
    {
      v239 = *(&off_1000EE808 + v238);
    }

    [v2 setObject:v239 forKeyedSubscript:@"TxPhyRateComparison"];

    v240 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 rxPhyRate]);
    [v2 setObject:v240 forKeyedSubscript:@"RxPhyRateBeforeRecovery"];

    v241 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 rxPhyRate]);
    [v2 setObject:v241 forKeyedSubscript:@"RxPhyRateAfterRecovery"];

    v242 = *(v314 + 40);
    v243 = [v2 objectForKeyedSubscript:@"RxPhyRateBeforeRecovery"];
    v244 = [v243 integerValue];
    v245 = [v2 objectForKeyedSubscript:@"RxPhyRateAfterRecovery"];
    v246 = [v242 compareValues:v244 second:{objc_msgSend(v245, "integerValue")}];

    if (v246 >= 3)
    {
      v247 = [v175[401] stringWithFormat:@"(unknown: %lu)", v246];
    }

    else
    {
      v247 = *(&off_1000EE808 + v246);
    }

    [v2 setObject:v247 forKeyedSubscript:@"RxPhyRateComparison"];

    v248 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 outputThroughput]);
    [v2 setObject:v248 forKeyedSubscript:@"OutputThroughputBeforeRecovery"];

    v249 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 outputThroughput]);
    [v2 setObject:v249 forKeyedSubscript:@"OutputThroughputAfterRecovery"];

    v250 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 inputThroughput]);
    [v2 setObject:v250 forKeyedSubscript:@"InputThroughputBeforeRecovery"];

    v251 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 inputThroughput]);
    [v2 setObject:v251 forKeyedSubscript:@"InputThroughputAfterRecovery"];

    v252 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 expectedThroughput]);
    [v2 setObject:v252 forKeyedSubscript:@"ExpectedThroughputBeforeRecovery"];

    v253 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 expectedThroughput]);
    [v2 setObject:v253 forKeyedSubscript:@"ExpectedThroughputAfterRecovery"];

    v254 = [v2 objectForKeyedSubscript:@"OutputThroughputBeforeRecovery"];
    v255 = [v254 integerValue];
    v256 = [v2 objectForKeyedSubscript:@"InputThroughputBeforeRecovery"];
    v257 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v255 - [v256 integerValue]);
    [v2 setObject:v257 forKeyedSubscript:@"OutputInputThroughputDiffBeforeRecovery"];

    v258 = [v2 objectForKeyedSubscript:@"ExpectedThroughputBeforeRecovery"];
    v259 = [v258 integerValue];
    v260 = [v2 objectForKeyedSubscript:@"OutputThroughputBeforeRecovery"];
    v261 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v259 - [v260 integerValue]);
    [v2 setObject:v261 forKeyedSubscript:@"ExpectedOutputThroughputDiffBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"rxDupErrs"), objc_msgSend(v22, "rxFrames")}];
    v262 = [NSNumber numberWithDouble:?];
    [v2 setObject:v262 forKeyedSubscript:@"RxDupPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"rxRetries"), objc_msgSend(v22, "rxRetries")}];
    v263 = [NSNumber numberWithDouble:?];
    [v2 setObject:v263 forKeyedSubscript:@"RxRetriesPercentBeforeRecovery"];

    v264 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 timeSinceLastRecovery]);
    [v2 setObject:v264 forKeyedSubscript:@"TimeSinceLastSWRecovery"];

    v265 = [v22 measurementDurMS];
    v266 = [v24 measurementDurMS];
    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"maxQueueFullDurMS"), v265}];
    v267 = [NSNumber numberWithDouble:?];
    [v2 setObject:v267 forKeyedSubscript:@"MaxQueueFullDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"maxQueueFullDurMS"), v266}];
    v268 = [NSNumber numberWithDouble:?];
    [v2 setObject:v268 forKeyedSubscript:@"MaxQueueFullDurMSPercentAfterRecovery"];

    v269 = *(v314 + 40);
    v270 = [v2 objectForKeyedSubscript:@"MaxQueueFullDurMSPercentBeforeRecovery"];
    v271 = [v270 integerValue];
    v272 = [v2 objectForKeyedSubscript:@"MaxQueueFullDurMSPercentAfterRecovery"];
    v273 = [v269 compareValues:v271 second:{objc_msgSend(v272, "integerValue")}];

    if (v273 >= 3)
    {
      v274 = [NSString stringWithFormat:@"(unknown: %lu)", v273];
    }

    else
    {
      v274 = *(&off_1000EE808 + v273);
    }

    [v2 setObject:v274 forKeyedSubscript:@"MaxQueueFullDurMSPercentComparison"];

    v275 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 avgTxLatencyMS]);
    [v2 setObject:v275 forKeyedSubscript:@"AvgTxLatencyMSBeforeRecovery"];

    v276 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 avgTxLatencyMS]);
    [v2 setObject:v276 forKeyedSubscript:@"AvgTxLatencyMSAfterRecovery"];

    v277 = *(v314 + 40);
    v278 = [v2 objectForKeyedSubscript:@"AvgTxLatencyMSBeforeRecovery"];
    v279 = [v278 integerValue];
    v280 = [v2 objectForKeyedSubscript:@"AvgTxLatencyMSAfterRecovery"];
    v281 = [v277 compareValues:v279 second:{objc_msgSend(v280, "integerValue")}];

    if (v281 >= 3)
    {
      v282 = [NSString stringWithFormat:@"(unknown: %lu)", v281];
    }

    else
    {
      v282 = *(&off_1000EE808 + v281);
    }

    [v2 setObject:v282 forKeyedSubscript:@"AvgTxLatencyMSComparison"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"rC1CoexDurationMS"), v265}];
    v283 = [NSNumber numberWithDouble:?];
    [v2 setObject:v283 forKeyedSubscript:@"RC1CoexDurationMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"rC1CoexDurationMS"), v266}];
    v284 = [NSNumber numberWithDouble:?];
    [v2 setObject:v284 forKeyedSubscript:@"RC1CoexDurationMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"rC2CoexDurationMS"), v265}];
    v285 = [NSNumber numberWithDouble:?];
    [v2 setObject:v285 forKeyedSubscript:@"RC2CoexDurationMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"rC2CoexDurationMS"), v266}];
    v286 = [NSNumber numberWithDouble:?];
    [v2 setObject:v286 forKeyedSubscript:@"RC2CoexDurationMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"lTECoexDurationMS"), v265}];
    v287 = [NSNumber numberWithDouble:?];
    [v2 setObject:v287 forKeyedSubscript:@"LTECoexDurationMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"lTECoexDurationMS"), v266}];
    v288 = [NSNumber numberWithDouble:?];
    [v2 setObject:v288 forKeyedSubscript:@"LTECoexDurationMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"tVPMActiveDurationMS"), v265}];
    v289 = [NSNumber numberWithDouble:?];
    [v2 setObject:v289 forKeyedSubscript:@"TVPMActiveDurationMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"tVPMActiveDurationMS"), v266}];
    v290 = [NSNumber numberWithDouble:?];
    [v2 setObject:v290 forKeyedSubscript:@"TVPMActiveDurationMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"availWLANDurMS"), v265}];
    v291 = [NSNumber numberWithDouble:?];
    [v2 setObject:v291 forKeyedSubscript:@"AvailWLANDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"availWLANDurMS"), v266}];
    v292 = [NSNumber numberWithDouble:?];
    [v2 setObject:v292 forKeyedSubscript:@"AvailWLANDurMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"availWLANRxDurMS"), v265}];
    v293 = [NSNumber numberWithDouble:?];
    [v2 setObject:v293 forKeyedSubscript:@"AvailWLANRxDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"availWLANRxDurMS"), v266}];
    v294 = [NSNumber numberWithDouble:?];
    [v2 setObject:v294 forKeyedSubscript:@"AvailWLANRxDurMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"availWLANTxDurMS"), v265}];
    v295 = [NSNumber numberWithDouble:?];
    [v2 setObject:v295 forKeyedSubscript:@"AvailWLANTxDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"availWLANTxDurMS"), v266}];
    v296 = [NSNumber numberWithDouble:?];
    [v2 setObject:v296 forKeyedSubscript:@"AvailWLANTxDurMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"concurrentIntDurMS"), v265}];
    v297 = [NSNumber numberWithDouble:?];
    [v2 setObject:v297 forKeyedSubscript:@"ConcurrentIntDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"concurrentIntDurMS"), v266}];
    v298 = [NSNumber numberWithDouble:?];
    [v2 setObject:v298 forKeyedSubscript:@"ConcurrentIntDurMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"phyTxActivityDurMS"), v265}];
    v299 = [NSNumber numberWithDouble:?];
    [v2 setObject:v299 forKeyedSubscript:@"PhyTxActivityDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"phyTxActivityDurMS"), v266}];
    v300 = [NSNumber numberWithDouble:?];
    [v2 setObject:v300 forKeyedSubscript:@"PhyTxActivityDurMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"phyRxActivityDurMS"), v265}];
    v301 = [NSNumber numberWithDouble:?];
    [v2 setObject:v301 forKeyedSubscript:@"PhyRxActivityDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"phyRxActivityDurMS"), v266}];
    v302 = [NSNumber numberWithDouble:?];
    [v2 setObject:v302 forKeyedSubscript:@"PhyRxActivityDurMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"offChanDurMS"), v265}];
    v303 = [NSNumber numberWithDouble:?];
    [v2 setObject:v303 forKeyedSubscript:@"OffChanDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"offChanDurMS"), v266}];
    v304 = [NSNumber numberWithDouble:?];
    [v2 setObject:v304 forKeyedSubscript:@"OffChanDurMSPercentAfterRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v22 denomenator:{"bTAntennaDurMS"), v265}];
    v305 = [NSNumber numberWithDouble:?];
    [v2 setObject:v305 forKeyedSubscript:@"BTAntennaDurMSPercentBeforeRecovery"];

    [*(v314 + 40) computePercentage:objc_msgSend(v24 denomenator:{"bTAntennaDurMS"), v266}];
    v306 = [NSNumber numberWithDouble:?];
    [v2 setObject:v306 forKeyedSubscript:@"BTAntennaDurMSPercentAfterRecovery"];

    v307 = v312;
    v4 = v313;
  }

  else
  {
    v307 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v307, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
      v317 = 1024;
      v318 = 878;
      _os_log_impl(&_mh_execute_header, v307, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating SW data to send to CA", buf, 0x12u);
    }
  }

  v308 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
  {
    v309 = [v2 count];
    *buf = 136446722;
    v316 = "[CADataTransformEngine transformAndSubmitSWMessageToCA:additionalInfo:timestamps:]_block_invoke";
    v317 = 1024;
    v318 = 1092;
    v319 = 2048;
    v320 = v309;
    _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SW metricDict fieldCount: %lu", buf, 0x1Cu);
  }

  v310 = v2;
  return v2;
}

void sub_10008FBAC(id a1)
{
  qword_10010DEE0 = objc_alloc_init(WAActivityManager);

  _objc_release_x1();
}

void sub_100090260(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009039C;
  v6[3] = &unk_1000EE848;
  v6[4] = *(a1 + 32);
  v2 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v6 block:5.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  *(*(a1 + 32) + 24) = 0;
  v5 = WALogActivityManagerHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[WAActivityManager debugTimer]_block_invoke";
    v9 = 1024;
    v10 = 160;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:configured _periodicActiveListTimer", buf, 0x12u);
  }
}

void sub_10009039C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090410;
  block[3] = &unk_1000ED880;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_100090410(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) copy];
  v2 = WALogActivityManagerHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[WAActivityManager debugTimer]_block_invoke_3";
    v18 = 1024;
    v19 = 149;
    v20 = 2048;
    v21 = [v1 count];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:activeTransactions %lu", buf, 0x1Cu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = WALogActivityManagerHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          description = os_transaction_get_description();
          *buf = 136446722;
          v17 = "[WAActivityManager debugTimer]_block_invoke";
          v18 = 1024;
          v19 = 152;
          v20 = 2080;
          v21 = description;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:activeTransaction %s", buf, 0x1Cu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_1000906D4(void *a1)
{
  v2 = a1[4];
  if (!v2[2])
  {
    v3 = [v2 debugTimerEnabled];
    v2 = a1[4];
    if (v3)
    {
      [v2 debugTimer];
      v2 = a1[4];
    }
  }

  if (!v2[9])
  {
    v4 = +[NSDate now];
    v5 = a1[4];
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;

    v2 = a1[4];
  }

  v7 = v2[1];
  if (v7 && [v7 isValid])
  {
    v8 = WALogActivityManagerHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446466;
      v16 = "[WAActivityManager osTransactionCreate:transaction:]_block_invoke";
      v17 = 1024;
      v18 = 184;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:osTransactionCreate, timer was running, invalidating and freeing", &v15, 0x12u);
    }

    [*(a1[4] + 8) invalidate];
    v9 = a1[4];
    v10 = *(v9 + 8);
    *(v9 + 8) = 0;
  }

  [*(a1[4] + 32) addObject:a1[5]];
  ++*(a1[4] + 72);
  v11 = WALogActivityManagerHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[6];
    v13 = [*(a1[4] + 32) count];
    v14 = *(a1[4] + 72);
    v15 = 136447234;
    v16 = "[WAActivityManager osTransactionCreate:transaction:]_block_invoke";
    v17 = 1024;
    v18 = 192;
    v19 = 2080;
    v20 = v12;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:osTransactionCreate %s, active count is now %lu, total started is now %lu", &v15, 0x30u);
  }
}

void sub_100090A4C(void *a1)
{
  v2 = WALogActivityManagerHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 136446722;
    v21 = "[WAActivityManager osTransactionComplete:]_block_invoke";
    v22 = 1024;
    v23 = 208;
    v24 = 2080;
    description = os_transaction_get_description();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:osTransactionComplete %s", buf, 0x1Cu);
  }

  if (([*(a1[5] + 32) containsObject:a1[4]] & 1) == 0)
  {
    v4 = WALogActivityManagerHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = os_transaction_get_description();
      v7 = [*(a1[5] + 32) count];
      *buf = 136446978;
      v21 = "[WAActivityManager osTransactionComplete:]_block_invoke";
      v22 = 1024;
      v23 = 211;
      v24 = 2080;
      description = v6;
      v26 = 2048;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:osTransactionComplete %s, TRANSACTION NOT FOUND, active count before completing %lu", buf, 0x26u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  [*(a1[5] + 32) removeObject:a1[4]];
  ++*(a1[5] + 88);
  if (![*(a1[5] + 32) count])
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 persistentDomainForName:@"com.apple.wifianalyticsd"];

    v10 = [v9 objectForKey:@"eager-exit-timeout"];
    if (v10)
    {
      v11 = WALogActivityManagerHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v21 = "[WAActivityManager osTransactionComplete:]_block_invoke";
        v22 = 1024;
        v23 = 224;
        v24 = 2112;
        description = @"com.apple.wifianalyticsd";
        v26 = 2112;
        v27 = @"eager-exit-timeout";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found preference value in domain: %@ key: %@", buf, 0x26u);
      }

      v12 = [v10 intValue];
      if (v12 < 1)
      {
        v18 = WALogActivityManagerHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v21 = "[WAActivityManager osTransactionComplete:]_block_invoke";
          v22 = 1024;
          v23 = 260;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_active_transactions empty, eager exit timer disabled via defaults write", buf, 0x12u);
        }

        goto LABEL_26;
      }

      v13 = v12;
    }

    else
    {
      v13 = 300.0;
    }

    v14 = *(a1[5] + 8);
    v15 = WALogActivityManagerHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 136446722;
        v21 = "[WAActivityManager osTransactionComplete:]_block_invoke";
        v22 = 1024;
        v23 = 232;
        v24 = 2048;
        description = *&v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_active_transactions empty, extending running eager exit timer to %f seconds", buf, 0x1Cu);
      }

      if ([*(a1[5] + 8) isValid])
      {
        [*(a1[5] + 8) invalidate];
      }

      v17 = a1[5];
      v15 = *(v17 + 8);
      *(v17 + 8) = 0;
    }

    else if (v16)
    {
      *buf = 136446722;
      v21 = "[WAActivityManager osTransactionComplete:]_block_invoke";
      v22 = 1024;
      v23 = 230;
      v24 = 2048;
      description = *&v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:_active_transactions empty, configuring eager exit timer in %f seconds", buf, 0x1Cu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100090EE4;
    v19[3] = &unk_1000EE318;
    v19[4] = a1[5];
    *&v19[5] = v13;
    dispatch_async(&_dispatch_main_q, v19);
LABEL_26:
  }
}

void sub_100090EE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100090F88;
  v6[3] = &unk_1000EE898;
  v6[4] = *(a1 + 32);
  v6[5] = v2;
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

void sub_100090F88(uint64_t a1)
{
  v2 = WALogActivityManagerHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    [*(v3 + 80) timeIntervalSinceNow];
    v10 = 136446978;
    v11 = "[WAActivityManager osTransactionComplete:]_block_invoke_2";
    v12 = 1024;
    v13 = 242;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = -v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Completed %lu transactions within uptime of %f seconds", &v10, 0x26u);
  }

  v6 = WALogActivityManagerHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v10 = 136446722;
    v11 = "[WAActivityManager osTransactionComplete:]_block_invoke";
    v12 = 1024;
    v13 = 244;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting Daemon Eager Exit due to inactivity timeout of %f seconds", &v10, 0x1Cu);
  }

  [*(a1 + 32) _executeBeforePossibleEagerExit];
  v8 = [*(a1 + 32) alternateExecutionBlockForCleanExit];

  if (v8)
  {
    [*(a1 + 32) _executeTimerBlock];
  }

  else if ((xpc_transaction_try_exit_clean() & 1) == 0)
  {
    v9 = WALogActivityManagerHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[WAActivityManager osTransactionComplete:]_block_invoke";
      v12 = 1024;
      v13 = 251;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Cannot eager exit, still outstanding transactions", &v10, 0x12u);
    }
  }
}

id sub_100091328(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  getpid();
  v4 = sandbox_check();
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4 == 0;
    v7 = +[NSProcessInfo processInfo];
    v8 = [v7 processIdentifier];
    if (v6)
    {
      v9 = @"NO";
    }

    else
    {
      v9 = @"YES";
    }

    v10 = +[NSProcessInfo processInfo];
    v11 = [v10 processName];
    *buf = 136447490;
    *&buf[4] = "int main(int, const char **)";
    *&buf[12] = 1024;
    *&buf[14] = 116;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    *v33 = 2112;
    *&v33[2] = v9;
    *&v33[10] = 2112;
    *&v33[12] = v11;
    *&v33[20] = 2080;
    *&v33[22] = "WiFiAnalytics_executables-785.10 Oct 22 2025 21:28:53";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:STARTUP (%d) isSandboxed: %@ -- %@ version: %s", buf, 0x36u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *v33 = sub_1000918E0;
  *&v33[8] = sub_1000918F0;
  *&v33[16] = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000918F8;
  v31[3] = &unk_1000EDA60;
  v31[4] = buf;
  v12 = objc_retainBlock(v31);
  v13 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100091AF4;
  handler[3] = &unk_1000EE8E8;
  v14 = v12;
  v30 = v14;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100091BE0;
  v27[3] = &unk_1000EE8E8;
  v15 = v14;
  v28 = v15;
  xpc_set_event_stream_handler("com.apple.awd.launch.wifi", &_dispatch_main_q, v27);

  v16 = objc_alloc_init(WAEngine);
  v26.__sigaction_u.__sa_handler = 1;
  *&v26.sa_mask = 0;
  sigaction(15, &v26, 0);
  v17 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v18 = qword_10010DEE8;
  qword_10010DEE8 = v17;

  v19 = qword_10010DEE8;
  if (qword_10010DEE8)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100091CCC;
    v23[3] = &unk_1000ED880;
    v20 = v16;
    v24 = v20;
    dispatch_source_set_event_handler(v19, v23);
    dispatch_resume(qword_10010DEE8);
    [(WAEngine *)v20 run];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v25 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "FAILED to setup SIGTERM catcher", v25, 2u);
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v3);
  if (v19)
  {
    v21 = +[NSRunLoop currentRunLoop];
    [v21 run];
  }

  return 0;
}

uint64_t sub_1000918E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000918F8(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    block[9] = v1;
    block[10] = v2;
    v4 = os_transaction_create();
    v5 = +[WAActivityManager sharedActivityManager];
    [v5 osTransactionCreate:"com.apple.wifianalytics.keepalive" transaction:v4];

    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    v8 = dispatch_time(0, 30000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000919FC;
    block[3] = &unk_1000EDA60;
    block[4] = *(a1 + 32);
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

void sub_1000919FC(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "int main(int, const char **)_block_invoke_2";
    v8 = 1024;
    v9 = 123;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Transaction hold expired", &v6, 0x12u);
  }

  v3 = +[WAActivityManager sharedActivityManager];
  [v3 osTransactionComplete:*(*(*(a1 + 32) + 8) + 40)];

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

uint64_t sub_100091AF4(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446978;
    v5 = "int main(int, const char **)_block_invoke";
    v6 = 1024;
    v7 = 131;
    v8 = 2080;
    v9 = "com.apple.notifyd.matching";
    v10 = 1024;
    v11 = 30;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Wake notify received (%s), staying dirty (holding a transsaction) for %d seconds", &v4, 0x22u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100091BE0(uint64_t a1)
{
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446978;
    v5 = "int main(int, const char **)_block_invoke";
    v6 = 1024;
    v7 = 135;
    v8 = 2080;
    v9 = "com.apple.awd.launch.wifi";
    v10 = 1024;
    v11 = 30;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Wake notify received (%s), staying dirty (holding a transsaction) for %d seconds", &v4, 0x22u);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100091CCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    exit(1);
  }

  return [v2 prepareToTerminateAnyReply:&stru_1000EE928];
}

void sub_100091D00(id a1, id a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136446466;
    v8 = "int main(int, const char **)_block_invoke_2";
    v9 = 1024;
    v10 = 156;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Now exit(143)", &v7, 0x12u);
  }

  exit(143);
}

void sub_100092860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100092F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 136447234;
    v8 = "[WADatapathDiagnosticsMessageSubmitter submitSlowWiFiMessage:]_block_invoke";
    v9 = 1024;
    v10 = 153;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:[WiFi Slow WiFi - %@ %@] ABC snapshot response = %@", &v7, 0x30u);
  }
}

void sub_100093E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100093EC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100093ED8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = 136447234;
    v8 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]_block_invoke";
    v9 = 1024;
    v10 = 385;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:[WiFi DatapathStall - %@ %@] ABC snapshot response = %@", &v7, 0x30u);
  }
}

void sub_10009853C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Unwind_Resume(a1);
}

void sub_100098630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = 136447234;
    v8 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]_block_invoke";
    v9 = 1024;
    v10 = 1048;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:[WiFi DatapathStall - %@ %@] ABC snapshot response = %@", &v7, 0x30u);
  }
}

Class sub_100098788(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10010DF00)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000988DC;
    v4[4] = &unk_1000ED7E0;
    v4[5] = v4;
    v5 = off_1000EE998;
    v6 = 0;
    qword_10010DF00 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10010DF00)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SDRDiagnosticReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10010DEF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000988DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10010DF00 = result;
  return result;
}

void sub_10009AF14(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[WiFiStallDetect alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10009B20C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [WiFiStallDetectOutput alloc];
    v7 = [v14 featureValueForName:@"stall"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"stallProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(WiFiStallDetectOutput *)v6 initWithStall:v8 stallProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_10009B414(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [WiFiStallDetectOutput alloc];
    v7 = [v14 featureValueForName:@"stall"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"stallProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(WiFiStallDetectOutput *)v6 initWithStall:v8 stallProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}