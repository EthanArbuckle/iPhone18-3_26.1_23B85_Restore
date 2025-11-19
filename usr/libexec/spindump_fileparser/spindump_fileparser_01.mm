void sub_100040A80(id a1)
{
  v1 = os_log_create("com.apple.spindump", "SpinTelemetry");
  v2 = qword_100127CE8;
  qword_100127CE8 = v1;

  v3 = os_log_create("com.apple.spindump", "HangTelemetry");
  v4 = qword_100127CF0;
  qword_100127CF0 = v3;

  v5 = os_log_create("com.apple.spindump", "CPUResourceTelemetry");
  v6 = qword_100127CF8;
  qword_100127CF8 = v5;

  v7 = os_log_create("com.apple.spindump", "PowerException");
  v8 = qword_100127D00;
  qword_100127D00 = v7;

  v9 = os_log_create("com.apple.spindump", "DiskWritesResourceTelemetry");
  v10 = qword_100127D08;
  qword_100127D08 = v9;

  v11 = os_log_create("com.apple.spindump", "FileDescriptorExhaustion");
  v12 = qword_100127D10;
  qword_100127D10 = v11;

  v13 = os_log_create("com.apple.spindump", "PortExhaustion");
  v14 = qword_100127D18;
  qword_100127D18 = v13;

  v15 = os_log_create("com.apple.spindump", "KQWorkLoopExhaustion");
  v16 = qword_100127D20;
  qword_100127D20 = v15;

  v17 = os_log_create("com.apple.spindump", "StuckApp");
  v18 = qword_100127D28;
  qword_100127D28 = v17;

  qword_100127D30 = os_log_create("com.apple.spindump", "ServiceWatchdog");

  _objc_release_x1();
}

void sub_100040BF0(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("com.apple.spindump.eventrate", v1);
  v3 = qword_100127D40;
  qword_100127D40 = v2;
}

void sub_100040FD4(const char *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = strdup(a1);
  v4 = malloc_type_calloc(0x400uLL, 1uLL, 0x2275EEB4uLL);
  basename_r(v3, v4);
  v5 = sub_10003DEB8("WR for %s", v4);
  free(v4);
  if (qword_100127D58 != -1)
  {
    sub_1000A5F1C();
  }

  v6 = qword_100127D50;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000410EC;
  block[3] = &unk_100114EC0;
  v9 = v5;
  v10 = v3;
  v7 = v5;
  dispatch_async(v6, block);

  objc_autoreleasePoolPop(v2);
}

void sub_1000410EC(uint64_t a1)
{
  v500 = objc_alloc_init(NSUUID);
  if (!objc_opt_class())
  {
    if (byte_100127EC8 == 1)
    {
      v14 = *__error();
      v15 = sub_10003E080();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A69B4(a1, v15, v16, v17, v18, v19, v20, v21);
      }

      *__error() = v14;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v23 = *__error();
      v25 = *(a1 + 40);
      v24 = (a1 + 40);
      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: WorkflowResponsivness unavailable, not generating spindump report(s) for %s", v25);
      v27 = v26;
      if (v26)
      {
        CStringPtr = CFStringGetCStringPtr(v26, 0x8000100u);
        if (CStringPtr)
        {
          v29 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xC374754AuLL);
          CFStringGetCString(v27, CStringPtr, 1024, 0x8000100u);
          v29 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v83 = qword_100127ED0;
        }

        else
        {
          v83 = __stderrp;
        }

        fprintf(v83, "%s\n", CStringPtr);
        if (v29)
        {
          free(v29);
        }

        CFRelease(v27);
      }

      else
      {
        v40 = sub_10003E080();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6A24(v24, v40, v41, v42, v43, v44, v45, v46);
        }

        if (qword_100127ED0)
        {
          v47 = qword_100127ED0;
        }

        else
        {
          v47 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v47);
      }

      *__error() = v23;
    }

    goto LABEL_196;
  }

  v2 = [WRWorkflowEventTracker alloc];
  v496 = (a1 + 40);
  v3 = [NSString stringWithUTF8String:*(a1 + 40)];
  v565 = 0;
  v501 = [v2 initWithTailspin:v3 error:&v565];
  v495 = v565;

  v4 = v501;
  if (!v501)
  {
    if (byte_100127EC8 == 1)
    {
      v30 = *__error();
      v31 = sub_10003E080();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000A68E4();
      }

      *__error() = v30;
      v4 = 0;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v33 = *__error();
      v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: Unable to decode workflow event tracker: %@", v495);
      v35 = v34;
      if (v34)
      {
        v36 = CFStringGetCStringPtr(v34, 0x8000100u);
        if (v36)
        {
          v37 = 0;
        }

        else
        {
          v36 = malloc_type_calloc(0x400uLL, 1uLL, 0x375D1AACuLL);
          CFStringGetCString(v35, v36, 1024, 0x8000100u);
          v37 = v36;
        }

        if (qword_100127ED0)
        {
          v86 = qword_100127ED0;
        }

        else
        {
          v86 = __stderrp;
        }

        fprintf(v86, "%s\n", v36);
        if (v37)
        {
          free(v37);
        }

        CFRelease(v35);
      }

      else
      {
        v84 = sub_10003E080();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
        {
          sub_1000A694C();
        }

        if (qword_100127ED0)
        {
          v85 = qword_100127ED0;
        }

        else
        {
          v85 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v85);
      }

      *__error() = v33;
      v4 = 0;
    }

    free(*v496);
    goto LABEL_195;
  }

  v5 = [v501 workflow];
  v494 = [v5 name];

  if (byte_100127EC8 == 1)
  {
    v6 = *__error();
    v7 = sub_10003E080();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v496;
      *buf = 138412546;
      v606 = v494;
      v607 = 2080;
      v608 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WR: %@: Received tailspin path %s", buf, 0x16u);
    }

    *__error() = v6;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 2)
  {
    v9 = *__error();
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Received tailspin path %s", v494, *v496);
    v11 = v10;
    if (v10)
    {
      v12 = CFStringGetCStringPtr(v10, 0x8000100u);
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v12 = malloc_type_calloc(0x400uLL, 1uLL, 0x39676E6CuLL);
        CFStringGetCString(v11, v12, 1024, 0x8000100u);
        v13 = v12;
      }

      if (qword_100127ED0)
      {
        v48 = qword_100127ED0;
      }

      else
      {
        v48 = __stderrp;
      }

      fprintf(v48, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v11);
    }

    else
    {
      v38 = sub_10003E080();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5F30(v494, v496);
      }

      if (qword_100127ED0)
      {
        v39 = qword_100127ED0;
      }

      else
      {
        v39 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v39);
    }

    *__error() = v9;
  }

  v493 = [v501 eventStart];
  if (!v493)
  {
    if (byte_100127EC8 == 1)
    {
      v62 = *__error();
      v63 = sub_10003E080();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_1000A6814();
      }

      *__error() = v62;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v64 = *__error();
      v65 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: No workflow event start", v494);
      v66 = v65;
      if (v65)
      {
        v67 = CFStringGetCStringPtr(v65, 0x8000100u);
        if (v67)
        {
          v68 = 0;
        }

        else
        {
          v67 = malloc_type_calloc(0x400uLL, 1uLL, 0xB824851AuLL);
          CFStringGetCString(v66, v67, 1024, 0x8000100u);
          v68 = v67;
        }

        if (qword_100127ED0)
        {
          v96 = qword_100127ED0;
        }

        else
        {
          v96 = __stderrp;
        }

        fprintf(v96, "%s\n", v67);
        if (v68)
        {
          free(v68);
        }

        CFRelease(v66);
      }

      else
      {
        v87 = sub_10003E080();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          sub_1000A687C();
        }

        if (qword_100127ED0)
        {
          v88 = qword_100127ED0;
        }

        else
        {
          v88 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v88);
      }

      *__error() = v64;
    }

    free(*v496);
    goto LABEL_194;
  }

  v49 = [v501 eventEnd];
  v490 = v49;
  v50 = v49;
  if (!v49)
  {
    if (byte_100127EC8 == 1)
    {
      v69 = *__error();
      v70 = sub_10003E080();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        sub_1000A6744();
      }

      *__error() = v69;
      v50 = 0;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v71 = *__error();
      v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: No workflow event end", v494);
      v73 = v72;
      if (v72)
      {
        v74 = CFStringGetCStringPtr(v72, 0x8000100u);
        if (v74)
        {
          v75 = 0;
        }

        else
        {
          v74 = malloc_type_calloc(0x400uLL, 1uLL, 0xF0C0D5F5uLL);
          CFStringGetCString(v73, v74, 1024, 0x8000100u);
          v75 = v74;
        }

        if (qword_100127ED0)
        {
          v101 = qword_100127ED0;
        }

        else
        {
          v101 = __stderrp;
        }

        fprintf(v101, "%s\n", v74);
        if (v75)
        {
          free(v75);
        }

        CFRelease(v73);
      }

      else
      {
        v97 = sub_10003E080();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
        {
          sub_1000A67AC();
        }

        if (qword_100127ED0)
        {
          v98 = qword_100127ED0;
        }

        else
        {
          v98 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v98);
      }

      *__error() = v71;
      v50 = 0;
    }

    free(*v496);
    goto LABEL_193;
  }

  v51 = [v49 machContTimeNs];
  v479 = (v51 - [v493 machContTimeNs]);
  v52 = v479 / 1000000000.0;
  if (v52 <= 0.0)
  {
    if (byte_100127EC8 == 1)
    {
      v76 = *__error();
      v77 = sub_10003E080();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5FA8();
      }

      *__error() = v76;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v78 = *__error();
      v79 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Workflow event has invalid duration %.3f", v494, *&v52);
      v80 = v79;
      if (v79)
      {
        v81 = CFStringGetCStringPtr(v79, 0x8000100u);
        if (v81)
        {
          v82 = 0;
        }

        else
        {
          v81 = malloc_type_calloc(0x400uLL, 1uLL, 0x8DC2A7D1uLL);
          CFStringGetCString(v80, v81, 1024, 0x8000100u);
          v82 = v81;
        }

        if (qword_100127ED0)
        {
          v102 = qword_100127ED0;
        }

        else
        {
          v102 = __stderrp;
        }

        fprintf(v102, "%s\n", v81);
        if (v82)
        {
          free(v82);
        }

        CFRelease(v80);
      }

      else
      {
        v99 = sub_10003E080();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
        {
          sub_1000A601C();
        }

        if (qword_100127ED0)
        {
          v100 = qword_100127ED0;
        }

        else
        {
          v100 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v100);
      }

      *__error() = v78;
    }

    free(*v496);
    goto LABEL_192;
  }

  v487 = [v501 error];
  if (!v487)
  {
    goto LABEL_211;
  }

  v53 = [v487 domain];
  if (![v53 isEqualToString:WRErrorDomain])
  {

    goto LABEL_128;
  }

  v54 = [v487 code] == 4;

  if (!v54)
  {
LABEL_128:
    if (byte_100127EC8 == 1)
    {
      v89 = *__error();
      v90 = sub_10003E080();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v606 = v494;
        v607 = 2112;
        v608 = v487;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "WR: %@: Workflow event has error %@, not considering for diagnostics", buf, 0x16u);
      }

      *__error() = v89;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v91 = *__error();
      v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Workflow event has error %@, not considering for diagnostics", v494, v487);
      v93 = v92;
      if (v92)
      {
        v94 = CFStringGetCStringPtr(v92, 0x8000100u);
        if (v94)
        {
          v95 = 0;
        }

        else
        {
          v94 = malloc_type_calloc(0x400uLL, 1uLL, 0x6BBB553CuLL);
          CFStringGetCString(v93, v94, 1024, 0x8000100u);
          v95 = v94;
        }

        if (qword_100127ED0)
        {
          v105 = qword_100127ED0;
        }

        else
        {
          v105 = __stderrp;
        }

        fprintf(v105, "%s\n", v94);
        if (v95)
        {
          free(v95);
        }

        CFRelease(v93);
      }

      else
      {
        v103 = sub_10003E080();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6090();
        }

        if (qword_100127ED0)
        {
          v104 = qword_100127ED0;
        }

        else
        {
          v104 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v104);
      }

      *__error() = v91;
    }

    free(*v496);
    goto LABEL_191;
  }

  if (byte_100127EC8 == 1)
  {
    v55 = *__error();
    v56 = sub_10003E080();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v606 = v494;
      v607 = 2112;
      v608 = v487;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "WR: %@: Workflow event has error %@, still considering for diagnostics", buf, 0x16u);
    }

    *__error() = v55;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 2)
  {
    v57 = *__error();
    v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Workflow event has error %@, still considering for diagnostics", v494, v487);
    v59 = v58;
    if (v58)
    {
      v60 = CFStringGetCStringPtr(v58, 0x8000100u);
      if (v60)
      {
        v61 = 0;
      }

      else
      {
        v60 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3A78419uLL);
        CFStringGetCString(v59, v60, 1024, 0x8000100u);
        v61 = v60;
      }

      if (qword_100127ED0)
      {
        v108 = qword_100127ED0;
      }

      else
      {
        v108 = __stderrp;
      }

      fprintf(v108, "%s\n", v60);
      if (v61)
      {
        free(v61);
      }

      CFRelease(v59);
    }

    else
    {
      v106 = sub_10003E080();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
      {
        sub_1000A6104();
      }

      if (qword_100127ED0)
      {
        v107 = qword_100127ED0;
      }

      else
      {
        v107 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v107);
    }

    *__error() = v57;
  }

LABEL_211:
  v563[0] = 0;
  v563[1] = v563;
  v563[2] = 0x2020000000;
  v564 = 0;
  v557 = 0;
  v558 = &v557;
  v559 = 0x3032000000;
  v560 = sub_100045D80;
  v561 = sub_100045D90;
  v562 = 0;
  v555[0] = 0;
  v555[1] = v555;
  v555[2] = 0x3032000000;
  v555[3] = sub_100045D80;
  v555[4] = sub_100045D90;
  v556 = 0;
  v550[0] = _NSConcreteStackBlock;
  v550[1] = 3221225472;
  v550[2] = sub_100045D98;
  v550[3] = &unk_100114E48;
  v552 = v563;
  v553 = &v557;
  v554 = *v496;
  v470 = v494;
  v551 = v470;
  v109 = objc_retainBlock(v550);
  v549[0] = _NSConcreteStackBlock;
  v549[1] = 3221225472;
  v549[2] = sub_100046438;
  v549[3] = &unk_100114E70;
  v549[4] = v555;
  v549[5] = &v557;
  v110 = objc_retainBlock(v549);

  v548 = 0;
  v111 = [v501 encodedStringWithError:&v548];
  v495 = v548;
  v489 = v111;
  if (!v111)
  {
    v448 = *__error();
    v449 = sub_10003E080();
    if (os_log_type_enabled(v449, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6178();
    }

    *__error() = v448;
    if (byte_100127EC9 == 1 && dword_100127558 <= 4)
    {
      v450 = *__error();
      v451 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to encode workflow event tracked into a string: %@", v495);
      v452 = v451;
      if (v451)
      {
        v453 = CFStringGetCStringPtr(v451, 0x8000100u);
        if (v453)
        {
          v454 = 0;
        }

        else
        {
          v453 = malloc_type_calloc(0x400uLL, 1uLL, 0x8DEC0E9AuLL);
          CFStringGetCString(v452, v453, 1024, 0x8000100u);
          v454 = v453;
        }

        if (qword_100127ED0)
        {
          v457 = qword_100127ED0;
        }

        else
        {
          v457 = __stderrp;
        }

        fprintf(v457, "%s\n", v453);
        if (v454)
        {
          free(v454);
        }

        CFRelease(v452);
      }

      else
      {
        v455 = sub_10003E080();
        if (os_log_type_enabled(v455, OS_LOG_TYPE_FAULT))
        {
          sub_1000A61E0();
        }

        if (qword_100127ED0)
        {
          v456 = qword_100127ED0;
        }

        else
        {
          v456 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v456);
      }

      *__error() = v450;
    }
  }

  v112 = objc_alloc_init(NSMutableArray);
  v471 = objc_alloc_init(NSMutableArray);
  v473 = objc_alloc_init(NSMutableDictionary);
  v546 = 0;
  v545 = 0;
  v547 = 0;
  [v501 stats];
  v518 = v112;
  v113 = v501;
  v482 = v109;
  v481 = v110;
  v583 = 0u;
  v584 = 0u;
  v585 = 0u;
  v586 = 0u;
  v532 = v113;
  v114 = [v113 workflow];
  obj = [v114 workflowDiagnostics];

  v115 = [obj countByEnumeratingWithState:&v583 objects:buf count:16];
  if (!v115)
  {
    v116 = 0;
    goto LABEL_304;
  }

  v488 = v115;
  v116 = 0;
  v491 = *v584;
  v477 = WRErrorDomain;
  while (2)
  {
    for (i = 0; i != v488; i = (i + 1))
    {
      if (*v584 != v491)
      {
        objc_enumerationMutation(obj);
      }

      v528 = *(*(&v583 + 1) + 8 * i);
      v525 = [[SPWRReportReason alloc] initWithWorkflowTracker:v532 signpostTracker:0 diagnostic:v528];
      if (![v528 hasTriggerThresholdDurationSingle])
      {
        goto LABEL_221;
      }

      v117 = 0;
      if (([v528 reportOmittingNetworkBoundIntervals] & 1) == 0)
      {
        v118 = [v532 eventEnd];
        v119 = [v118 machContTimeNs];
        v120 = [v532 eventStart];
        v121 = [v120 machContTimeNs];

        v117 = v119 - v121;
      }

      [v528 triggerThresholdDurationSingle];
      v122 = v117 / 1000000000.0;
      if (v123 <= v122)
      {
        if ([v528 reportOmittingNetworkBoundIntervals])
        {
          [(SPWRReportReason *)v525 setWorkflowDurationOmittingNetworkBoundIntervals:v122];
        }

        else
        {
          [(SPWRReportReason *)v525 setWorkflowDuration:v122];
        }

        v124 = 1;
      }

      else
      {
LABEL_221:
        v124 = 0;
      }

      if (![v528 triggerEventTimeout])
      {
        v128 = 0;
        goto LABEL_234;
      }

      v125 = [v532 error];
      v126 = [v125 domain];
      if (![v126 isEqualToString:v477])
      {

LABEL_232:
        v128 = 0;
        goto LABEL_233;
      }

      v127 = [v125 code] == 4;

      if (!v127)
      {
        goto LABEL_232;
      }

      v128 = 1;
      [(SPWRReportReason *)v525 setWorkflowEventTimedOut:1];
LABEL_233:

LABEL_234:
      if ((v124 | v128) == 1)
      {
        if ([v528 hasAnySpindumpReports])
        {
          v523 = v482[2]();
          if (!v523)
          {

            v116 = 1;
            goto LABEL_304;
          }

          v521 = v481[2]();
          v483 = [v528 reportProcessesWithName];
          if (v483)
          {
            v129 = objc_alloc_init(NSMutableArray);
            *&v566 = _NSConcreteStackBlock;
            *(&v566 + 1) = 3221225472;
            *&v567 = sub_1000488B8;
            *(&v567 + 1) = &unk_100114F08;
            *&v568 = v483;
            v519 = v129;
            *(&v568 + 1) = v519;
            [v523 enumerateTasks:&v566];
          }

          else
          {
            v519 = 0;
          }

          v502 = [v528 reportOtherSignpostWithName];
          if (v502)
          {
            v130 = [v532 allSignpostTrackers];
            v131 = [v130 mutableCopy];

            if ([v131 count])
            {
              v132 = 0;
              do
              {
                v133 = [v131 objectAtIndexedSubscript:v132];
                v134 = [v133 signpost];
                v135 = [v134 name];
                v136 = [v135 isEqualToString:v502];

                if (v136)
                {
                  ++v132;
                }

                else
                {
                  [v131 removeObjectAtIndex:v132];
                }
              }

              while (v132 < [v131 count]);
            }

            v581 = 0u;
            v580 = 0u;
            v579 = 0u;
            v578 = 0u;
            v504 = v131;
            v508 = [v504 countByEnumeratingWithState:&v578 objects:v600 count:16];
            if (v508)
            {
              v506 = *v579;
              do
              {
                for (j = 0; j != v508; j = j + 1)
                {
                  if (*v579 != v506)
                  {
                    objc_enumerationMutation(v504);
                  }

                  v530 = *(*(&v578 + 1) + 8 * j);
                  v512 = [v530 intervals];
                  v510 = [v530 incompleteIntervalStarts];
                  v137 = [v512 count];
                  if ([v510 count] + v137)
                  {
                    v577 = 0u;
                    v576 = 0u;
                    v575 = 0u;
                    v574 = 0u;
                    v150 = [v530 intervals];
                    v151 = [v150 countByEnumeratingWithState:&v574 objects:v591 count:16];
                    if (v151)
                    {
                      v152 = *v575;
                      v516 = v150;
                      do
                      {
                        for (k = 0; k != v151; k = k + 1)
                        {
                          if (*v575 != v152)
                          {
                            objc_enumerationMutation(v516);
                          }

                          v154 = *(*(&v574 + 1) + 8 * k);
                          v155 = [v154 start];
                          v156 = [v155 threadID];
                          v157 = [v154 end];
                          v158 = [v157 threadID];
                          v159 = [v154 start];
                          v160 = [v159 machContTimeNs];
                          v161 = [v154 end];
                          sub_100048930(v518, v525, v523, v532, 0, v528, v530, v519, v521, v156, v158, v160, [v161 machContTimeNs]);
                        }

                        v150 = v516;
                        v151 = [v516 countByEnumeratingWithState:&v574 objects:v591 count:16];
                      }

                      while (v151);
                    }

                    v573 = 0u;
                    v572 = 0u;
                    v571 = 0u;
                    v570 = 0u;
                    v162 = [v530 incompleteIntervalStarts];
                    v163 = [v162 countByEnumeratingWithState:&v570 objects:v590 count:16];
                    if (v163)
                    {
                      v164 = *v571;
                      do
                      {
                        for (m = 0; m != v163; m = m + 1)
                        {
                          if (*v571 != v164)
                          {
                            objc_enumerationMutation(v162);
                          }

                          v166 = *(*(&v570 + 1) + 8 * m);
                          v167 = [v166 threadID];
                          v168 = [v166 machContTimeNs];
                          v169 = [v532 eventEnd];
                          sub_100048930(v518, v525, v523, v532, 0, v528, v530, v519, v521, v167, 0, v168, [v169 machContTimeNs]);
                        }

                        v163 = [v162 countByEnumeratingWithState:&v570 objects:v590 count:16];
                      }

                      while (v163);
                    }
                  }

                  else
                  {
                    if (byte_100127EC8 == 1)
                    {
                      v138 = *__error();
                      v139 = sub_10003E080();
                      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                      {
                        v173 = [v532 workflow];
                        v174 = [v173 name];
                        v175 = [v530 signpost];
                        v176 = [v175 name];
                        v177 = [v528 name];
                        *v601 = 138412802;
                        *&v601[4] = v174;
                        *&v601[12] = 2112;
                        *&v601[14] = v176;
                        *&v601[22] = 2112;
                        v602 = v177;
                        _os_log_error_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to overall workflow, but no intervals to report", v601, 0x20u);
                      }

                      *__error() = v138;
                    }

                    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                    {
                      v141 = *__error();
                      v142 = [v532 workflow];
                      v143 = [v142 name];
                      v144 = [v530 signpost];
                      v145 = [v144 name];
                      v146 = [v528 name];
                      v147 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to overall workflow, but no intervals to report", v143, v145, v146);

                      if (v147)
                      {
                        v148 = CFStringGetCStringPtr(v147, 0x8000100u);
                        if (v148)
                        {
                          v149 = 0;
                        }

                        else
                        {
                          v148 = malloc_type_calloc(0x400uLL, 1uLL, 0x15682504uLL);
                          CFStringGetCString(v147, v148, 1024, 0x8000100u);
                          v149 = v148;
                        }

                        if (qword_100127ED0)
                        {
                          v172 = qword_100127ED0;
                        }

                        else
                        {
                          v172 = __stderrp;
                        }

                        fprintf(v172, "%s\n", v148);
                        if (v149)
                        {
                          free(v149);
                        }

                        CFRelease(v147);
                      }

                      else
                      {
                        v170 = sub_10003E080();
                        if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                        {
                          v178 = [v532 workflow];
                          v179 = [v178 name];
                          v180 = [v530 signpost];
                          v181 = [v180 name];
                          v182 = [v528 name];
                          *v601 = 138412802;
                          *&v601[4] = v179;
                          *&v601[12] = 2112;
                          *&v601[14] = v181;
                          *&v601[22] = 2112;
                          v602 = v182;
                          _os_log_fault_impl(&_mh_execute_header, v170, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to overall workflow, but no intervals to report", v601, 0x20u);
                        }

                        if (qword_100127ED0)
                        {
                          v171 = qword_100127ED0;
                        }

                        else
                        {
                          v171 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v171);
                      }

                      *__error() = v141;
                    }
                  }
                }

                v508 = [v504 countByEnumeratingWithState:&v578 objects:v600 count:16];
              }

              while (v508);
            }

            v183 = v504;
            v184 = v504;
          }

          else
          {
            v184 = [v532 eventStart];
            v185 = [v184 threadID];
            v183 = [v532 eventEnd];
            v186 = [v183 threadID];
            v187 = [v532 eventStart];
            v188 = [v187 machContTimeNs];
            v189 = [v532 eventEnd];
            sub_100048930(v518, v525, v523, v532, 0, v528, 0, v519, v521, v185, v186, v188, [v189 machContTimeNs]);
          }
        }

        v116 = 1;
      }
    }

    v488 = [obj countByEnumeratingWithState:&v583 objects:buf count:16];
    if (v488)
    {
      continue;
    }

    break;
  }

LABEL_304:

  if (v116)
  {
    [v471 addObject:@"overall"];
  }

  v478 = objc_alloc_init(NSMutableDictionary);
  if (v546 != v479)
  {
    v190 = [NSNumber numberWithDouble:v546 / 1000000000.0];
    [v478 setObject:v190 forKeyedSubscript:@"nonNetworkS"];
  }

  if (v547)
  {
    v191 = [NSNumber numberWithUnsignedLongLong:?];
    [v478 setObject:v191 forKeyedSubscript:@"numIncomplete"];
  }

  if (v545)
  {
    v192 = [NSNumber numberWithDouble:v545 / 1000000000.0];
    [v478 setObject:v192 forKeyedSubscript:@"untrackedS"];
  }

  if ([v478 count])
  {
    [v473 setObject:v478 forKeyedSubscript:@"overall"];
  }

  v543 = 0u;
  v544 = 0u;
  v541 = 0u;
  v542 = 0u;
  v193 = [v532 allSignpostTrackers];
  v194 = [v193 countByEnumeratingWithState:&v541 objects:v589 count:16];
  if (v194)
  {
    v466 = *v542;
    v464 = v193;
    do
    {
      v195 = 0;
      v465 = v194;
      do
      {
        if (*v542 != v466)
        {
          objc_enumerationMutation(v193);
        }

        v196 = *(*(&v541 + 1) + 8 * v195);
        v588 = 0u;
        v587 = 0u;
        v586 = 0u;
        v585 = 0u;
        v584 = 0u;
        v583 = 0u;
        v197 = [v532 eventEnd];
        v198 = [v197 machContTimeNs];
        if (v196)
        {
          [v196 statsWithEventEndNs:v198];
        }

        else
        {
          v588 = 0u;
          v587 = 0u;
          v586 = 0u;
          v585 = 0u;
          v584 = 0u;
          v583 = 0u;
        }

        v469 = v195;

        v475 = v583;
        if (v583)
        {
          v199 = v584;
          v511 = v518;
          v531 = v532;
          v200 = v196;
          v468 = v482;
          v467 = v481;
          v578 = 0u;
          v579 = 0u;
          v580 = 0u;
          v581 = 0u;
          v522 = v200;
          v201 = [v200 signpost];
          v480 = [v201 diagnostics];

          v202 = [v480 countByEnumeratingWithState:&v578 objects:buf count:16];
          if (!v202)
          {
            v203 = 0;
            goto LABEL_458;
          }

          v474 = v202;
          v203 = 0;
          v476 = *v579;
          v204 = *(&v199 + 1) / 1000000000.0;
          while (1)
          {
            v484 = 0;
            do
            {
              if (*v579 != v476)
              {
                objc_enumerationMutation(v480);
              }

              v524 = *(*(&v578 + 1) + 8 * v484);
              v520 = [[SPWRReportReason alloc] initWithWorkflowTracker:v531 signpostTracker:v522 diagnostic:v524];
              if ([v524 hasTriggerThresholdCount] && v475 >= objc_msgSend(v524, "triggerThresholdCount"))
              {
                v205 = [v524 reportOtherSignpostWithName];
                if (v205)
                {

LABEL_334:
                  [(SPWRReportReason *)v520 setSignpostCount:v475];
                  LODWORD(v529) = 1;
                  goto LABEL_335;
                }

                if (v199)
                {
                  goto LABEL_334;
                }

                if (byte_100127EC8 == 1)
                {
                  v285 = *__error();
                  v286 = sub_10003E080();
                  if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
                  {
                    v299 = [v531 workflow];
                    v300 = [v299 name];
                    v301 = [v522 signpost];
                    v302 = [v301 name];
                    v303 = [v524 name];
                    *v592 = 138412802;
                    v593 = v300;
                    v594 = 2112;
                    v595 = v302;
                    v596 = 2112;
                    v597 = v303;
                    _os_log_error_impl(&_mh_execute_header, v286, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to count threshold, but no intervals to report", v592, 0x20u);
                  }

                  *__error() = v285;
                }

                LODWORD(v529) = 0;
                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v287 = *__error();
                  v288 = [v531 workflow];
                  v289 = [v288 name];
                  v290 = [v522 signpost];
                  v291 = [v290 name];
                  v292 = [v524 name];
                  v293 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to count threshold, but no intervals to report", v289, v291, v292);

                  if (v293)
                  {
                    v294 = CFStringGetCStringPtr(v293, 0x8000100u);
                    if (v294)
                    {
                      v295 = 0;
                    }

                    else
                    {
                      v294 = malloc_type_calloc(0x400uLL, 1uLL, 0x81203CD8uLL);
                      CFStringGetCString(v293, v294, 1024, 0x8000100u);
                      v295 = v294;
                    }

                    if (qword_100127ED0)
                    {
                      v298 = qword_100127ED0;
                    }

                    else
                    {
                      v298 = __stderrp;
                    }

                    fprintf(v298, "%s\n", v294);
                    if (v295)
                    {
                      free(v295);
                    }

                    CFRelease(v293);
                  }

                  else
                  {
                    v296 = sub_10003E080();
                    if (os_log_type_enabled(v296, OS_LOG_TYPE_FAULT))
                    {
                      v304 = [v531 workflow];
                      v305 = [v304 name];
                      v306 = [v522 signpost];
                      v307 = [v306 name];
                      v308 = [v524 name];
                      *v592 = 138412802;
                      v593 = v305;
                      v594 = 2112;
                      v595 = v307;
                      v596 = 2112;
                      v597 = v308;
                      _os_log_fault_impl(&_mh_execute_header, v296, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to count threshold, but no intervals to report", v592, 0x20u);
                    }

                    if (qword_100127ED0)
                    {
                      v297 = qword_100127ED0;
                    }

                    else
                    {
                      v297 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v297);
                  }

                  LODWORD(v529) = 0;
                  *__error() = v287;
                }
              }

              else
              {
                LODWORD(v529) = 0;
              }

LABEL_335:
              v206 = 0.0;
              if ([v524 hasTriggerThresholdDurationSingle])
              {
                [v524 triggerThresholdDurationSingle];
                if (v207 <= v204)
                {
                  [(SPWRReportReason *)v520 setSignpostDurationSingle:v204];
                  [v524 triggerThresholdDurationSingle];
                  v206 = v208;
                }
              }

              if ([v524 hasTriggerThresholdDurationSum])
              {
                [v524 triggerThresholdDurationSum];
                if (v209 <= v204)
                {
                  [(SPWRReportReason *)v520 setSignpostDurationSum:v204];
                  LODWORD(v529) = 1;
                }
              }

              if ([v524 hasTriggerThresholdDurationUnion])
              {
                [v524 triggerThresholdDurationUnion];
                if (v210 <= v204)
                {
                  [(SPWRReportReason *)v520 setSignpostDurationUnion:v204];
                  LOBYTE(v529) = 1;
LABEL_349:
                  if ([v524 hasAnySpindumpReports])
                  {
                    v517 = (v482[2])(v468);
                    if (!v517)
                    {

                      v203 = 1;
                      goto LABEL_458;
                    }

                    v515 = (v481[2])(v467);
                    obja = [v524 reportOtherSignpostWithName];
                    if (obja)
                    {
                      v212 = [v531 allSignpostTrackers];
                      v529 = [v212 mutableCopy];

                      if ([v529 count])
                      {
                        v213 = 0;
                        while (1)
                        {
                          v214 = v213;
                          v215 = [v529 objectAtIndexedSubscript:?];
                          v216 = [v215 signpost];
                          v217 = [v216 name];
                          v218 = [v217 isEqualToString:obja];

                          if (v218)
                          {
                            break;
                          }

                          [v529 removeObjectAtIndex:v214];
LABEL_367:

                          v226 = [v529 count];
                          v213 = v214;
                          if (v214 >= v226)
                          {
                            goto LABEL_368;
                          }
                        }

                        v219 = [v522 signpost];
                        v220 = [v219 individuationFieldName];
                        if (v220)
                        {
                          v221 = [v216 individuationFieldName];
                          if (v221)
                          {
                            v222 = [v522 individuationIdentifier];
                            if (v222 && ([v215 individuationIdentifier], (v223 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              v224 = [v522 individuationIdentifier];
                              v225 = [v215 individuationIdentifier];
                              v526 = [v224 isEqualToString:v225];

                              if (v526)
                              {
                                goto LABEL_366;
                              }
                            }

                            else
                            {
                            }

                            [v529 removeObjectAtIndex:v214--];
                          }

                          else
                          {
                          }
                        }

                        else
                        {
                        }

LABEL_366:
                        ++v214;
                        goto LABEL_367;
                      }

LABEL_368:
                      v227 = [v529 copy];

                      LOBYTE(v529) = 1;
                    }

                    else
                    {
                      v227 = [[NSArray alloc] initWithObjects:{v522, 0}];
                    }

                    v472 = [v524 reportProcessesWithName];
                    if (v472)
                    {
                      v228 = objc_alloc_init(NSMutableArray);
                      *v601 = _NSConcreteStackBlock;
                      *&v601[8] = 3221225472;
                      *&v601[16] = sub_10004E3E4;
                      v602 = &unk_100114F08;
                      v603 = v472;
                      v513 = v228;
                      v604 = v513;
                      [v517 enumerateTasks:v601];
                    }

                    else
                    {
                      v513 = 0;
                    }

                    v577 = 0u;
                    v576 = 0u;
                    v575 = 0u;
                    v574 = 0u;
                    v492 = v227;
                    alloc = [v492 countByEnumeratingWithState:&v574 objects:v600 count:16];
                    if (alloc)
                    {
                      v498 = *v575;
                      do
                      {
                        for (n = 0; n != alloc; n = (n + 1))
                        {
                          if (*v575 != v498)
                          {
                            objc_enumerationMutation(v492);
                          }

                          v527 = *(*(&v574 + 1) + 8 * n);
                          v507 = [v527 intervals];
                          v505 = [v527 incompleteIntervalStarts];
                          v229 = [v507 count];
                          if ([v505 count] + v229)
                          {
                            v573 = 0u;
                            v572 = 0u;
                            v571 = 0u;
                            v570 = 0u;
                            v509 = v507;
                            v244 = [v509 countByEnumeratingWithState:&v570 objects:v591 count:16];
                            if (v244)
                            {
                              v245 = *v571;
                              do
                              {
                                for (ii = 0; ii != v244; ii = ii + 1)
                                {
                                  if (*v571 != v245)
                                  {
                                    objc_enumerationMutation(v509);
                                  }

                                  v247 = *(*(&v570 + 1) + 8 * ii);
                                  if (v529)
                                  {
                                    goto LABEL_398;
                                  }

                                  v248 = [*(*(&v570 + 1) + 8 * ii) start];
                                  v249 = [v248 machContTimeNs];
                                  v250 = [v247 end];
                                  LOBYTE(v249) = v206 + v249 > [v250 machContTimeNs];

                                  if ((v249 & 1) == 0)
                                  {
LABEL_398:
                                    v251 = [v247 start];
                                    v252 = [v251 threadID];
                                    v253 = [v247 end];
                                    v254 = [v253 threadID];
                                    v255 = [v247 start];
                                    v256 = [v255 machContTimeNs];
                                    v257 = [v247 end];
                                    sub_100048930(v511, v520, v517, v531, v522, v524, v527, v513, v515, v252, v254, v256, [v257 machContTimeNs]);
                                  }
                                }

                                v244 = [v509 countByEnumeratingWithState:&v570 objects:v591 count:16];
                              }

                              while (v244);
                            }

                            v569 = 0u;
                            v568 = 0u;
                            v567 = 0u;
                            v566 = 0u;
                            v258 = v505;
                            v259 = [v258 countByEnumeratingWithState:&v566 objects:v590 count:16];
                            if (v259)
                            {
                              v260 = *v567;
                              do
                              {
                                for (jj = 0; jj != v259; jj = jj + 1)
                                {
                                  if (*v567 != v260)
                                  {
                                    objc_enumerationMutation(v258);
                                  }

                                  v262 = *(*(&v566 + 1) + 8 * jj);
                                  if ((v529 & 1) == 0)
                                  {
                                    v263 = [*(*(&v566 + 1) + 8 * jj) machContTimeNs];
                                    v264 = [v531 eventEnd];
                                    LOBYTE(v263) = v206 + v263 > [v264 machContTimeNs];

                                    if (v263)
                                    {
                                      continue;
                                    }
                                  }

                                  v265 = [v262 threadID];
                                  v266 = [v262 machContTimeNs];
                                  v267 = [v531 eventEnd];
                                  sub_100048930(v511, v520, v517, v531, v522, v524, v527, v513, v515, v265, 0, v266, [v267 machContTimeNs]);
                                }

                                v259 = [v258 countByEnumeratingWithState:&v566 objects:v590 count:16];
                              }

                              while (v259);
                            }
                          }

                          else
                          {
                            if (byte_100127EC8 == 1)
                            {
                              v230 = *__error();
                              v231 = sub_10003E080();
                              if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
                              {
                                v271 = [v531 workflow];
                                v272 = [v271 name];
                                v273 = [v527 signpost];
                                v274 = [v273 name];
                                v275 = [v524 name];
                                v276 = [v527 signpost];
                                v277 = [v276 name];
                                *v592 = 138413058;
                                v593 = v272;
                                v594 = 2112;
                                v595 = v274;
                                v596 = 2112;
                                v597 = v275;
                                v598 = 2112;
                                v599 = v277;
                                _os_log_error_impl(&_mh_execute_header, v231, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to %@, but no intervals to report", v592, 0x2Au);
                              }

                              *__error() = v230;
                            }

                            if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                            {
                              v233 = *__error();
                              v234 = [v531 workflow];
                              v235 = [v234 name];
                              v236 = [v527 signpost];
                              v237 = [v236 name];
                              v238 = [v524 name];
                              v239 = [v527 signpost];
                              v240 = [v239 name];
                              v241 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to %@, but no intervals to report", v235, v237, v238, v240);

                              if (v241)
                              {
                                v242 = CFStringGetCStringPtr(v241, 0x8000100u);
                                if (v242)
                                {
                                  v243 = 0;
                                }

                                else
                                {
                                  v242 = malloc_type_calloc(0x400uLL, 1uLL, 0xAEC52EFCuLL);
                                  CFStringGetCString(v241, v242, 1024, 0x8000100u);
                                  v243 = v242;
                                }

                                if (qword_100127ED0)
                                {
                                  v270 = qword_100127ED0;
                                }

                                else
                                {
                                  v270 = __stderrp;
                                }

                                fprintf(v270, "%s\n", v242);
                                if (v243)
                                {
                                  free(v243);
                                }

                                CFRelease(v241);
                              }

                              else
                              {
                                v268 = sub_10003E080();
                                if (os_log_type_enabled(v268, OS_LOG_TYPE_FAULT))
                                {
                                  v278 = [v531 workflow];
                                  v279 = [v278 name];
                                  v280 = [v527 signpost];
                                  v281 = [v280 name];
                                  v282 = [v524 name];
                                  v283 = [v527 signpost];
                                  v284 = [v283 name];
                                  *v592 = 138413058;
                                  v593 = v279;
                                  v594 = 2112;
                                  v595 = v281;
                                  v596 = 2112;
                                  v597 = v282;
                                  v598 = 2112;
                                  v599 = v284;
                                  _os_log_fault_impl(&_mh_execute_header, v268, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Reporting spindump for this signpost due to %@, but no intervals to report", v592, 0x2Au);
                                }

                                if (qword_100127ED0)
                                {
                                  v269 = qword_100127ED0;
                                }

                                else
                                {
                                  v269 = __stderrp;
                                }

                                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v269);
                              }

                              *__error() = v233;
                            }
                          }
                        }

                        alloc = [v492 countByEnumeratingWithState:&v574 objects:v600 count:16];
                      }

                      while (alloc);
                    }
                  }

                  v203 = 1;
                  goto LABEL_430;
                }
              }

              if (v206 > 0.0)
              {
                v211 = 1;
              }

              else
              {
                v211 = v529;
              }

              if (v211 == 1)
              {
                goto LABEL_349;
              }

LABEL_430:

              v484 = v484 + 1;
            }

            while (v484 != v474);
            v309 = [v480 countByEnumeratingWithState:&v578 objects:buf count:16];
            v474 = v309;
            if (!v309)
            {
LABEL_458:

              if (v203)
              {
                v310 = [v522 signpost];
                v311 = [v310 name];
                v312 = [v471 containsObject:v311];

                if ((v312 & 1) == 0)
                {
                  v313 = [v522 signpost];
                  v314 = [v313 name];
                  [v471 addObject:v314];
                }
              }

              v315 = objc_alloc_init(NSMutableDictionary);
              v316 = v583;
              if (v583 >= 2)
              {
                v317 = [NSNumber numberWithUnsignedLongLong:?];
                [v315 setObject:v317 forKeyedSubscript:@"num"];

                v316 = v583;
              }

              if (v316 != v586)
              {
                v318 = [NSNumber numberWithUnsignedLongLong:?];
                [v315 setObject:v318 forKeyedSubscript:@"numIncomplete"];
              }

              v319 = *(&v586 + 1);
              if (*(&v586 + 1))
              {
                v320 = [NSNumber numberWithDouble:*(&v586 + 1) / 1000000000.0];
                [v315 setObject:v320 forKeyedSubscript:@"unionS"];

                v319 = *(&v586 + 1);
              }

              if (v319 != v587)
              {
                v321 = [NSNumber numberWithDouble:v587 / 1000000000.0];
                [v315 setObject:v321 forKeyedSubscript:@"sumS"];

                v319 = *(&v586 + 1);
              }

              if (v319 != *(&v587 + 1))
              {
                v322 = [NSNumber numberWithDouble:*(&v587 + 1) / 1000000000.0];
                [v315 setObject:v322 forKeyedSubscript:@"maxS"];
              }

              v323 = [v522 environment];
              v537[0] = _NSConcreteStackBlock;
              v537[1] = 3221225472;
              v537[2] = sub_1000464B4;
              v537[3] = &unk_100114E98;
              v324 = v315;
              v538 = v324;
              v539 = v470;
              v540 = v522;
              [v323 enumerateKeysAndObjectsUsingBlock:v537];

              if ([v324 count])
              {
                v325 = [v522 individuationIdentifier];
                [v522 signpost];
                if (v325)
                  v463 = {;
                  v461 = [v463 name];
                  v462 = [v522 individuationIdentifier];
                  v458 = [NSString stringWithFormat:@"%@-%@", v461, v462];
                }

                else
                  v460 = {;
                  v459 = [v460 name];
                }

                v326 = WRSanitizeForCA();
                v327 = v459;
                v328 = v460;
                if (v325)
                {

                  v327 = v461;
                  v328 = v463;
                }

                [v473 setObject:v324 forKeyedSubscript:v326];
              }

              break;
            }
          }
        }

        v193 = v464;
        v195 = v469 + 1;
      }

      while ((v469 + 1) != v465);
      v329 = [v464 countByEnumeratingWithState:&v541 objects:v589 count:16];
      v194 = v329;
    }

    while (v329);
  }

  if (![v518 count])
  {
    if (byte_100127EC8 == 1)
    {
      v333 = *__error();
      v334 = sub_10003E080();
      if (os_log_type_enabled(v334, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v606 = v470;
        _os_log_impl(&_mh_execute_header, v334, OS_LOG_TYPE_DEFAULT, "WR: %@: no spindump reports to generate", buf, 0xCu);
      }

      *__error() = v333;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 2)
    {
      goto LABEL_587;
    }

    v335 = *__error();
    v336 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: no spindump reports to generate", v470);
    v337 = v336;
    if (v336)
    {
      v338 = CFStringGetCStringPtr(v336, 0x8000100u);
      if (v338)
      {
        v339 = 0;
      }

      else
      {
        v338 = malloc_type_calloc(0x400uLL, 1uLL, 0xBE258729uLL);
        CFStringGetCString(v337, v338, 1024, 0x8000100u);
        v339 = v338;
      }

      if (qword_100127ED0)
      {
        v365 = qword_100127ED0;
      }

      else
      {
        v365 = __stderrp;
      }

      fprintf(v365, "%s\n", v338);
      if (v339)
      {
        free(v339);
      }

      goto LABEL_562;
    }

    v361 = sub_10003E080();
    if (os_log_type_enabled(v361, OS_LOG_TYPE_FAULT))
    {
      sub_1000A63AC();
    }

    if (qword_100127ED0)
    {
      v362 = qword_100127ED0;
    }

    else
    {
      v362 = __stderrp;
    }

LABEL_547:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v362);
LABEL_563:
    *__error() = v335;
    goto LABEL_587;
  }

  v330 = v558[5];
  if (!v330)
  {
    v340 = *__error();
    v341 = sub_10003E080();
    if (os_log_type_enabled(v341, OS_LOG_TYPE_FAULT))
    {
      sub_1000A632C(v600, [v518 count], v341);
    }

    *__error() = v340;
    if (byte_100127EC9 != 1 || dword_100127558 > 4)
    {
      goto LABEL_587;
    }

    v335 = *__error();
    v342 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: have %lu reports, but no sampleStore", [v518 count]);
    v337 = v342;
    if (v342)
    {
      v343 = CFStringGetCStringPtr(v342, 0x8000100u);
      if (v343)
      {
        v344 = 0;
      }

      else
      {
        v343 = malloc_type_calloc(0x400uLL, 1uLL, 0x4CF62461uLL);
        CFStringGetCString(v337, v343, 1024, 0x8000100u);
        v344 = v343;
      }

      if (qword_100127ED0)
      {
        v368 = qword_100127ED0;
      }

      else
      {
        v368 = __stderrp;
      }

      fprintf(v368, "%s\n", v343);
      if (v344)
      {
        free(v344);
      }

LABEL_562:
      CFRelease(v337);
      goto LABEL_563;
    }

    v366 = sub_10003E080();
    if (os_log_type_enabled(v366, OS_LOG_TYPE_FAULT))
    {
      sub_1000A636C(v591, [v518 count], v366);
    }

    if (qword_100127ED0)
    {
      v362 = qword_100127ED0;
    }

    else
    {
      v362 = __stderrp;
    }

    goto LABEL_547;
  }

  v331 = [v330 startTime];
  if (v331)
  {
    v332 = v331;

    goto LABEL_505;
  }

  v332 = [v558[5] endTime];

  if (v332)
  {
LABEL_505:
    [v332 machContTimeSeconds];
    if (v345 == 0.0)
    {
      goto LABEL_506;
    }

    if (byte_100127EC8 == 1)
    {
      v353 = *__error();
      v354 = sub_10003E080();
      if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
      {
        v355 = [v518 count];
        *buf = 138412546;
        v606 = v470;
        v607 = 2048;
        v608 = v355;
        _os_log_impl(&_mh_execute_header, v354, OS_LOG_TYPE_DEFAULT, "WR: %@: generating %lu spindump reports", buf, 0x16u);
      }

      *__error() = v353;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v356 = *__error();
      v357 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: generating %lu spindump reports", v470, [v518 count]);
      v358 = v357;
      if (v357)
      {
        v359 = CFStringGetCStringPtr(v357, 0x8000100u);
        if (v359)
        {
          v360 = 0;
        }

        else
        {
          v359 = malloc_type_calloc(0x400uLL, 1uLL, 0xDA88106FuLL);
          CFStringGetCString(v358, v359, 1024, 0x8000100u);
          v360 = v359;
        }

        if (qword_100127ED0)
        {
          v371 = qword_100127ED0;
        }

        else
        {
          v371 = __stderrp;
        }

        fprintf(v371, "%s\n", v359);
        if (v360)
        {
          free(v360);
        }

        CFRelease(v358);
      }

      else
      {
        v369 = sub_10003E080();
        if (os_log_type_enabled(v369, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6248(v470, v600, [v518 count], v369);
        }

        if (qword_100127ED0)
        {
          v370 = qword_100127ED0;
        }

        else
        {
          v370 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v370);
      }

      *__error() = v356;
    }

    [v558[5] setWrWorkflowName:v470];
    v372 = [v532 error];
    [v558[5] setWrError:v372];

    v535 = 0u;
    v536 = 0u;
    v533 = 0u;
    v534 = 0u;
    v373 = v518;
    v374 = [v373 countByEnumeratingWithState:&v533 objects:v582 count:16];
    if (v374)
    {
      v375 = *v534;
      do
      {
        for (kk = 0; kk != v374; kk = kk + 1)
        {
          if (*v534 != v375)
          {
            objc_enumerationMutation(v373);
          }

          sub_100046878(v558[5], *(*(&v533 + 1) + 8 * kk), v500, v489);
        }

        v374 = [v373 countByEnumeratingWithState:&v533 objects:v582 count:16];
      }

      while (v374);
    }
  }

  else
  {
LABEL_506:
    if (byte_100127EC8 == 1)
    {
      v346 = *__error();
      v347 = sub_10003E080();
      if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
      {
        [v332 debugDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000A6294();
      }

      *__error() = v346;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v348 = *__error();
      v349 = [v332 debugDescription];
      v350 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Unable to compare timesamps with tailspin data (%@)", v470, v349);

      if (v350)
      {
        v351 = CFStringGetCStringPtr(v350, 0x8000100u);
        if (v351)
        {
          v352 = 0;
        }

        else
        {
          v351 = malloc_type_calloc(0x400uLL, 1uLL, 0x8997BC18uLL);
          CFStringGetCString(v350, v351, 1024, 0x8000100u);
          v352 = v351;
        }

        if (qword_100127ED0)
        {
          v367 = qword_100127ED0;
        }

        else
        {
          v367 = __stderrp;
        }

        fprintf(v367, "%s\n", v351);
        if (v352)
        {
          free(v352);
        }

        CFRelease(v350);
      }

      else
      {
        v363 = sub_10003E080();
        if (os_log_type_enabled(v363, OS_LOG_TYPE_FAULT))
        {
          [v332 debugDescription];
          objc_claimAutoreleasedReturnValue();
          sub_1000A62E8();
        }

        if (qword_100127ED0)
        {
          v364 = qword_100127ED0;
        }

        else
        {
          v364 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v364);
      }

      *__error() = v348;
    }
  }

LABEL_587:
  if (&_DRShouldGatherLog)
  {
    sub_1000484AC(v473);
    v377 = [NSMutableDictionary alloc];
    v378 = [NSNumber numberWithDouble:v52 * 1000.0];
    v379 = [v500 UUIDString];
    v380 = [v377 initWithObjectsAndKeys:{v378, @"durationms", @"239", @"bugtype", v470, @"workflow", v471, @"exceededThresholds", v379, @"IncidentUUID", v473, @"stats", 0}];

    v381 = [v532 error];

    if (v381)
    {
      v382 = [v532 error];
      v383 = [v382 domain];
      v384 = [v383 isEqualToString:WRErrorDomain];

      if (v384)
      {
        v385 = [v532 error];
        v386 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v385 code]);
        [v380 setObject:v386 forKeyedSubscript:@"error"];
      }

      else
      {
        [v380 setObject:&off_10011FFA8 forKeyedSubscript:@"error"];
      }
    }

    v387 = v470;
    v388 = DRShouldGatherLog();
    v389 = 0;
    v390 = v389;
    if (v388)
    {
      if (byte_100127EC8 == 1)
      {
        v391 = *__error();
        v392 = sub_10003E080();
        if (os_log_type_enabled(v392, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A6578();
        }

        *__error() = v391;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v393 = *__error();
        v394 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: submitting tailspin to Diagnostic Pipeline", v387);
        v395 = v394;
        if (v394)
        {
          v396 = CFStringGetCStringPtr(v394, 0x8000100u);
          if (v396)
          {
            v397 = 0;
          }

          else
          {
            v396 = malloc_type_calloc(0x400uLL, 1uLL, 0x8DAE0CC2uLL);
            CFStringGetCString(v395, v396, 1024, 0x8000100u);
            v397 = v396;
          }

          if (qword_100127ED0)
          {
            v415 = qword_100127ED0;
          }

          else
          {
            v415 = __stderrp;
          }

          fprintf(v415, "%s\n", v396);
          if (v397)
          {
            free(v397);
          }

          CFRelease(v395);
        }

        else
        {
          v413 = sub_10003E080();
          if (os_log_type_enabled(v413, OS_LOG_TYPE_FAULT))
          {
            sub_1000A65EC();
          }

          if (qword_100127ED0)
          {
            v414 = qword_100127ED0;
          }

          else
          {
            v414 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v414);
        }

        *__error() = v393;
      }

      v416 = [NSString stringWithUTF8String:*v496];
      v417 = DRSubmitLog();
      v407 = v390;

      if (v417)
      {
        if (byte_100127EC8)
        {
          v418 = *__error();
          v419 = sub_10003E080();
          if (os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v606 = v387;
            _os_log_impl(&_mh_execute_header, v419, OS_LOG_TYPE_DEFAULT, "WR: %@: submitted tailspin to Diagnostic Pipeline", buf, 0xCu);
          }

          *__error() = v418;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 2)
        {
          v420 = *__error();
          v421 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: submitted tailspin to Diagnostic Pipeline", v387);
          v422 = v421;
          if (v421)
          {
            v423 = CFStringGetCStringPtr(v421, 0x8000100u);
            if (v423)
            {
              v424 = 0;
            }

            else
            {
              v423 = malloc_type_calloc(0x400uLL, 1uLL, 0x620ACF2EuLL);
              CFStringGetCString(v422, v423, 1024, 0x8000100u);
              v424 = v423;
            }

            if (qword_100127ED0)
            {
              v441 = qword_100127ED0;
            }

            else
            {
              v441 = __stderrp;
            }

            fprintf(v441, "%s\n", v423);
            if (v424)
            {
              free(v424);
            }

            CFRelease(v422);
          }

          else
          {
            v434 = sub_10003E080();
            if (os_log_type_enabled(v434, OS_LOG_TYPE_FAULT))
            {
              sub_1000A66DC();
            }

            if (qword_100127ED0)
            {
              v435 = qword_100127ED0;
            }

            else
            {
              v435 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v435);
          }

          *__error() = v420;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v425 = *__error();
          v426 = sub_10003E080();
          if (os_log_type_enabled(v426, OS_LOG_TYPE_ERROR))
          {
            [v407 description];
            objc_claimAutoreleasedReturnValue();
            sub_1000A6654();
          }

          *__error() = v425;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v427 = *__error();
          v428 = [v407 description];
          v429 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: error trying to provide tailspin to Diagnostic Pipeline: %@", v387, v428);

          if (v429)
          {
            v430 = CFStringGetCStringPtr(v429, 0x8000100u);
            if (v430)
            {
              v431 = 0;
            }

            else
            {
              v430 = malloc_type_calloc(0x400uLL, 1uLL, 0xEA7BB444uLL);
              CFStringGetCString(v429, v430, 1024, 0x8000100u);
              v431 = v430;
            }

            if (qword_100127ED0)
            {
              v442 = qword_100127ED0;
            }

            else
            {
              v442 = __stderrp;
            }

            fprintf(v442, "%s\n", v430);
            if (v431)
            {
              free(v431);
            }

            CFRelease(v429);
          }

          else
          {
            v436 = sub_10003E080();
            if (os_log_type_enabled(v436, OS_LOG_TYPE_FAULT))
            {
              [v407 description];
              objc_claimAutoreleasedReturnValue();
              sub_1000A6698();
            }

            if (qword_100127ED0)
            {
              v437 = qword_100127ED0;
            }

            else
            {
              v437 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v437);
          }

          *__error() = v427;
        }

        v443 = [NSPropertyListSerialization dataWithPropertyList:v380 format:200 options:0 error:0];
        v444 = sub_10003E080();
        if (os_signpost_enabled(v444))
        {
          v445 = [v407 localizedDescription];
          v446 = [v443 length];
          *buf = 138543874;
          v606 = v387;
          v607 = 2114;
          v608 = v445;
          v609 = 2050;
          v610 = v446;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v444, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DPFailure", "Workflow:%{signpost.telemetry:string1,public}@ error:%{signpost.telemetry:string2,public}@ contextDictionarySize:%{signpost.telemetry:number1,public}lu enableTelemetry=YES ", buf, 0x20u);
        }
      }
    }

    else if (v389)
    {
      if (byte_100127EC8)
      {
        v398 = *__error();
        v399 = sub_10003E080();
        if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
        {
          [v390 description];
          objc_claimAutoreleasedReturnValue();
          sub_1000A6414();
        }

        *__error() = v398;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v400 = *__error();
        v401 = [v390 description];
        v402 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: error in DRShouldGatherLog call: %@", v387, v401);

        if (v402)
        {
          v403 = CFStringGetCStringPtr(v402, 0x8000100u);
          if (v403)
          {
            v404 = 0;
          }

          else
          {
            v403 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7AF1945uLL);
            CFStringGetCString(v402, v403, 1024, 0x8000100u);
            v404 = v403;
          }

          if (qword_100127ED0)
          {
            v438 = qword_100127ED0;
          }

          else
          {
            v438 = __stderrp;
          }

          fprintf(v438, "%s\n", v403);
          if (v404)
          {
            free(v404);
          }

          CFRelease(v402);
        }

        else
        {
          v432 = sub_10003E080();
          if (os_log_type_enabled(v432, OS_LOG_TYPE_FAULT))
          {
            [v390 description];
            objc_claimAutoreleasedReturnValue();
            sub_1000A6458();
          }

          if (qword_100127ED0)
          {
            v433 = qword_100127ED0;
          }

          else
          {
            v433 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v433);
        }

        *__error() = v400;
      }

      v407 = v390;
    }

    else
    {
      if (byte_100127EC8)
      {
        v405 = *__error();
        v406 = sub_10003E080();
        if (os_log_type_enabled(v406, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A649C();
        }

        *__error() = v405;
      }

      v407 = 0;
      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v408 = *__error();
        v409 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: DRShouldGatherLog return false, not submitting tailspin", v387);
        v410 = v409;
        if (v409)
        {
          v411 = CFStringGetCStringPtr(v409, 0x8000100u);
          if (v411)
          {
            v412 = 0;
          }

          else
          {
            v411 = malloc_type_calloc(0x400uLL, 1uLL, 0x8EFD3034uLL);
            CFStringGetCString(v410, v411, 1024, 0x8000100u);
            v412 = v411;
          }

          if (qword_100127ED0)
          {
            v447 = qword_100127ED0;
          }

          else
          {
            v447 = __stderrp;
          }

          fprintf(v447, "%s\n", v411);
          if (v412)
          {
            free(v412);
          }

          CFRelease(v410);
        }

        else
        {
          v439 = sub_10003E080();
          if (os_log_type_enabled(v439, OS_LOG_TYPE_FAULT))
          {
            sub_1000A6510();
          }

          if (qword_100127ED0)
          {
            v440 = qword_100127ED0;
          }

          else
          {
            v440 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v440);
        }

        v407 = 0;
        *__error() = v408;
      }
    }
  }

  free(*v496);

  _Block_object_dispose(v555, 8);
  _Block_object_dispose(&v557, 8);

  _Block_object_dispose(v563, 8);
LABEL_191:

LABEL_192:
  v50 = v490;
LABEL_193:

LABEL_194:
  v4 = v501;
LABEL_195:

LABEL_196:
}

void sub_100045B68(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Block_object_dispose(&STACK[0x438], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100045D80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100045D98(void *a1)
{
  v2 = *(a1[5] + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = *(*(a1[6] + 8) + 40);
  }

  else
  {
    *(v2 + 24) = 1;
    v4 = +[NSMutableArray array];
    v5 = [[SASampleStore alloc] initForLiveSampling];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[7];
    v9 = *(*(a1[6] + 8) + 40);
    v62 = 0;
    v55 = [v9 parseKTraceFile:v8 warningsOut:v4 errorOut:&v62];
    v56 = v62;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    v11 = &byte_100127EC9;
    v12 = &dword_100127558;
    if (v10)
    {
      v13 = v10;
      v14 = *v59;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v59 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v58 + 1) + 8 * i);
          if (byte_100127EC8 == 1)
          {
            v17 = *__error();
            v18 = sub_10003E080();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = a1[4];
              v20 = a1[7];
              *buf = 138412802;
              v64 = v19;
              v65 = 2080;
              v66 = v20;
              v67 = 2112;
              v68 = v16;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "WR: %@: WARNING trying to create sample store from %s: %@\n", buf, 0x20u);
            }

            *__error() = v17;
          }

          if (*v11 == 1 && *v12 <= 1)
          {
            v22 = *__error();
            v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: WARNING trying to create sample store from %s: %@\n", a1[4], a1[7], v16);
            if (v23)
            {
              v24 = v23;
              v25 = v11;
              v26 = v12;
              CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
              if (CStringPtr)
              {
                v28 = CStringPtr;
                v29 = 0;
              }

              else
              {
                v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x66E09E2uLL);
                CFStringGetCString(v24, v28, 1024, 0x8000100u);
                v29 = v28;
              }

              if (qword_100127ED0)
              {
                v32 = qword_100127ED0;
              }

              else
              {
                v32 = __stderrp;
              }

              fprintf(v32, "%s\n", v28);
              if (v29)
              {
                free(v29);
              }

              CFRelease(v24);
              v12 = v26;
              v11 = v25;
            }

            else
            {
              v30 = sub_10003E080();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
              {
                v33 = a1[4];
                v34 = a1[7];
                *buf = 138412802;
                v64 = v33;
                v65 = 2080;
                v66 = v34;
                v67 = 2112;
                v68 = v16;
                _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: WARNING trying to create sample store from %s: %@\n", buf, 0x20u);
              }

              if (qword_100127ED0)
              {
                v31 = qword_100127ED0;
              }

              else
              {
                v31 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
            }

            *__error() = v22;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v13);
    }

    if ((v55 & 1) == 0)
    {
      if (byte_100127EC8 == 1)
      {
        v35 = *__error();
        v36 = sub_10003E080();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v50 = a1[4];
          v51 = a1[7];
          v52 = @"Unknown error";
          if (v56)
          {
            v52 = v56;
          }

          *buf = 138412802;
          v64 = v50;
          v65 = 2080;
          v66 = v51;
          v67 = 2112;
          v68 = v52;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "WR: %@: Not generating any spindump reports, unable to create sample store for %s: %@\n", buf, 0x20u);
        }

        *__error() = v35;
      }

      if (*v11 == 1 && *v12 <= 3)
      {
        v37 = *__error();
        if (v56)
        {
          v38 = v56;
        }

        else
        {
          v38 = @"Unknown error";
        }

        v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: Not generating any spindump reports, unable to create sample store for %s: %@\n", a1[4], a1[7], v38);
        if (v39)
        {
          v40 = v39;
          v41 = CFStringGetCStringPtr(v39, 0x8000100u);
          if (v41)
          {
            v42 = v41;
            v43 = 0;
          }

          else
          {
            v42 = malloc_type_calloc(0x400uLL, 1uLL, 0x59986AD3uLL);
            CFStringGetCString(v40, v42, 1024, 0x8000100u);
            v43 = v42;
          }

          if (qword_100127ED0)
          {
            v46 = qword_100127ED0;
          }

          else
          {
            v46 = __stderrp;
          }

          fprintf(v46, "%s\n", v42);
          if (v43)
          {
            free(v43);
          }

          CFRelease(v40);
        }

        else
        {
          v44 = sub_10003E080();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            v53 = a1[4];
            v54 = a1[7];
            *buf = 138412802;
            v64 = v53;
            v65 = 2080;
            v66 = v54;
            v67 = 2112;
            v68 = v38;
            _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: Not generating any spindump reports, unable to create sample store for %s: %@\n", buf, 0x20u);
          }

          if (qword_100127ED0)
          {
            v45 = qword_100127ED0;
          }

          else
          {
            v45 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v45);
        }

        *__error() = v37;
      }

      v47 = *(a1[6] + 8);
      v48 = *(v47 + 40);
      *(v47 + 40) = 0;
    }

    v3 = *(*(a1[6] + 8) + 40);
  }

  return v3;
}

id sub_100046438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(*(a1 + 32) + 8) + 40);
  if (!v9)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10)
    {
      sub_1000A6A94(0, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 = [v10 tidToPidDict];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v9 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v9;
}

void sub_1000464B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [NSString alloc];
    v8 = WRSanitizeForCA();
    v9 = [v7 initWithFormat:@"env_%@", v8];

    v10 = [*(a1 + 32) objectForKeyedSubscript:v9];

    if (v10)
    {
      if (byte_100127EC8 == 1)
      {
        v11 = *__error();
        v12 = sub_10003E080();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 40);
          v26 = [*(a1 + 48) signpost];
          v27 = [v26 name];
          *buf = 138413058;
          v32 = v25;
          v33 = 2112;
          v34 = v27;
          v35 = 2112;
          v36 = v5;
          v37 = 2112;
          v38 = v6;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "WR: %@: %@: %@ -> %@, conflicts with existing entry", buf, 0x2Au);
        }

        *__error() = v11;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v14 = *__error();
        v15 = *(a1 + 40);
        v16 = [*(a1 + 48) signpost];
        v17 = [v16 name];
        v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: %@ -> %@, conflicts with existing entry", v15, v17, v5, v6);

        if (v18)
        {
          CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
          if (CStringPtr)
          {
            v20 = CStringPtr;
            v21 = 0;
          }

          else
          {
            v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x37D0A3C7uLL);
            CFStringGetCString(v18, v20, 1024, 0x8000100u);
            v21 = v20;
          }

          if (qword_100127ED0)
          {
            v24 = qword_100127ED0;
          }

          else
          {
            v24 = __stderrp;
          }

          fprintf(v24, "%s\n", v20);
          if (v21)
          {
            free(v21);
          }

          CFRelease(v18);
        }

        else
        {
          v22 = sub_10003E080();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            v28 = *(a1 + 40);
            v29 = [*(a1 + 48) signpost];
            v30 = [v29 name];
            *buf = 138413058;
            v32 = v28;
            v33 = 2112;
            v34 = v30;
            v35 = 2112;
            v36 = v5;
            v37 = 2112;
            v38 = v6;
            _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: %@ -> %@, conflicts with existing entry", buf, 0x2Au);
          }

          if (qword_100127ED0)
          {
            v23 = qword_100127ED0;
          }

          else
          {
            v23 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
        }

        *__error() = v14;
      }
    }

    else
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
    }
  }
}

void sub_100046878(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v249 = a3;
  v9 = a4;
  v10 = [v8 reportReason];
  v247 = [v10 workflowTracker];
  v248 = [v247 workflow];
  v254 = [v248 name];
  v11 = [v10 signpostTracker];
  v12 = [v8 reportedSignpostTracker];
  v253 = [v8 timeRange];
  v13 = v8;
  v14 = [v8 task];
  v15 = v7;
  [v15 setWrWorkflowTimeoutDuration:0.0];
  [v15 setWrWorkflowDuration:0.0];
  [v15 setWrWorkflowDurationThreshold:0.0];
  [v15 setWrWorkflowDurationOmittingNetworkBoundIntervals:0.0];
  [v15 setWrWorkflowDurationOmittingNetworkBoundIntervalsThreshold:0.0];
  [v15 setWrSignpostName:0];
  [v15 setWrSignpostSubsystem:0];
  [v15 setWrSignpostCategory:0];
  [v15 setWrTriggeringSignpostName:0];
  [v15 setWrTriggeringSignpostSubsystem:0];
  [v15 setWrTriggeringSignpostCategory:0];
  [v15 setWrSignpostDurationUnion:0.0];
  [v15 setWrSignpostDurationUnionThreshold:0.0];
  [v15 setWrSignpostDurationSum:0.0];
  [v15 setWrSignpostDurationSumThreshold:0.0];
  [v15 setWrSignpostDurationSingle:0.0];
  [v15 setWrSignpostDurationSingleThreshold:0.0];
  [v15 setWrSignpostCount:0];
  [v15 setWrSignpostCountThreshold:0];

  v251 = v10;
  v252 = v11;
  v250 = v12;
  if (v12)
  {
    v16 = [v12 signpost];
    v17 = [v16 name];
    [v15 setWrSignpostName:v17];

    v18 = [v12 signpost];
    v19 = [v18 subsystem];
    [v15 setWrSignpostSubsystem:v19];

    v20 = [v12 signpost];
    v21 = [v20 category];
    [v15 setWrSignpostCategory:v21];

    if (v11)
    {
      v22 = v249;
      if (byte_100127EC8)
      {
        v23 = *__error();
        v24 = sub_10003E080();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v250 signpost];
          [v25 name];
          v26 = v244 = v9;
          v27 = [v11 signpost];
          [v27 name];
          v29 = v28 = v13;
          v30 = [v14 name];
          *buf = 138413314;
          v256 = v254;
          v257 = 2112;
          v258 = v26;
          v259 = 2112;
          v260 = v29;
          v261 = 2112;
          v262 = v30;
          v263 = 1024;
          v264 = [v14 pid];
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "WR: %@ generating report for %@ due to %@ for %@ [%d]", buf, 0x30u);

          v11 = v252;
          v13 = v28;
          v22 = v249;

          v9 = v244;
          v10 = v251;
        }

        *__error() = v23;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v245 = v9;
        v31 = v22;
        v32 = v13;
        v242 = *__error();
        v33 = [v250 signpost];
        v34 = [v33 name];
        v35 = v11;
        v36 = v34;
        v37 = [v35 signpost];
        v38 = [v37 name];
        v39 = [v14 name];
        v40 = v14;
        v41 = v39;
        v42 = v40;
        v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@ generating report for %@ due to %@ for %@ [%d]", v254, v36, v38, v39, [v40 pid]);

        if (v43)
        {
          CStringPtr = CFStringGetCStringPtr(v43, 0x8000100u);
          if (CStringPtr)
          {
            v45 = CStringPtr;
            v46 = 0;
          }

          else
          {
            v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x343484D2uLL);
            CFStringGetCString(v43, v45, 1024, 0x8000100u);
            v46 = v45;
          }

          v14 = v42;
          if (qword_100127ED0)
          {
            v73 = qword_100127ED0;
          }

          else
          {
            v73 = __stderrp;
          }

          fprintf(v73, "%s\n", v45);
          v13 = v32;
          if (v46)
          {
            free(v46);
          }

          CFRelease(v43);
        }

        else
        {
          v69 = sub_10003E080();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
          {
            v241 = [v250 signpost];
            v238 = [v241 name];
            v239 = [v252 signpost];
            v148 = [v239 name];
            v149 = [v42 name];
            v150 = [v42 pid];
            *buf = 138413314;
            v256 = v254;
            v257 = 2112;
            v258 = v238;
            v259 = 2112;
            v260 = v148;
            v261 = 2112;
            v262 = v149;
            v263 = 1024;
            v264 = v150;
            _os_log_fault_impl(&_mh_execute_header, v69, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@ generating report for %@ due to %@ for %@ [%d]", buf, 0x30u);
          }

          if (qword_100127ED0)
          {
            v70 = qword_100127ED0;
          }

          else
          {
            v70 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v70);
          v14 = v42;
          v13 = v32;
        }

        v22 = v31;
        v9 = v245;
        v11 = v252;
        *__error() = v242;
        v10 = v251;
      }

      v74 = [v11 signpost];
      [v74 name];
      v76 = v75 = v11;
      [v15 setWrTriggeringSignpostName:v76];

      v77 = [v75 signpost];
      v78 = [v77 subsystem];
      [v15 setWrTriggeringSignpostSubsystem:v78];

      v79 = [v75 signpost];
      v80 = [v79 category];
      [v15 setWrTriggeringSignpostCategory:v80];
    }

    else
    {
      v22 = v249;
      if (byte_100127EC8)
      {
        v56 = *__error();
        v57 = sub_10003E080();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [v250 signpost];
          v59 = [v58 name];
          v60 = [v14 name];
          *buf = 138413058;
          v256 = v254;
          v257 = 2112;
          v258 = v59;
          v259 = 2112;
          v260 = v60;
          v261 = 1024;
          LODWORD(v262) = [v14 pid];
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "WR: %@ generating report for %@ due to overall workflow for %@ [%d]", buf, 0x26u);

          v10 = v251;
        }

        *__error() = v56;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v61 = *__error();
        v62 = [v250 signpost];
        v63 = [v62 name];
        v64 = [v14 name];
        v65 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@ generating report for %@ due to overall workflow for %@ [%d]", v254, v63, v64, [v14 pid]);

        if (v65)
        {
          v66 = CFStringGetCStringPtr(v65, 0x8000100u);
          if (v66)
          {
            v67 = v66;
            v68 = 0;
          }

          else
          {
            v67 = malloc_type_calloc(0x400uLL, 1uLL, 0x9957FABEuLL);
            CFStringGetCString(v65, v67, 1024, 0x8000100u);
            v68 = v67;
          }

          if (qword_100127ED0)
          {
            v88 = qword_100127ED0;
          }

          else
          {
            v88 = __stderrp;
          }

          fprintf(v88, "%s\n", v67);
          if (v68)
          {
            free(v68);
          }

          CFRelease(v65);
        }

        else
        {
          v86 = sub_10003E080();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
          {
            v151 = [v250 signpost];
            v152 = [v151 name];
            v153 = [v14 name];
            v154 = [v14 pid];
            *buf = 138413058;
            v256 = v254;
            v257 = 2112;
            v258 = v152;
            v259 = 2112;
            v260 = v153;
            v261 = 1024;
            LODWORD(v262) = v154;
            _os_log_fault_impl(&_mh_execute_header, v86, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@ generating report for %@ due to overall workflow for %@ [%d]", buf, 0x26u);
          }

          if (qword_100127ED0)
          {
            v87 = qword_100127ED0;
          }

          else
          {
            v87 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v87);
        }

        *__error() = v61;
        v10 = v251;
      }
    }

    if ([v10 signpostCount])
    {
      [v15 setWrSignpostCount:{objc_msgSend(v10, "signpostCount")}];
      v89 = [v10 diagnostic];
      [v15 setWrSignpostCountThreshold:{objc_msgSend(v89, "triggerThresholdCount")}];
    }

    [v10 signpostDurationUnion];
    v11 = v252;
    if (v90 > 0.0)
    {
      [v10 signpostDurationUnion];
      [v15 setWrSignpostDurationUnion:?];
      v91 = [v10 diagnostic];
      [v91 triggerThresholdDurationUnion];
      [v15 setWrSignpostDurationUnionThreshold:?];
    }

    [v10 signpostDurationSum];
    if (v92 > 0.0)
    {
      [v10 signpostDurationSum];
      [v15 setWrSignpostDurationSum:?];
      v93 = [v10 diagnostic];
      [v93 triggerThresholdDurationSum];
      [v15 setWrSignpostDurationSumThreshold:?];
    }

    [v10 signpostDurationSingle];
    if (v94 > 0.0)
    {
      [v10 signpostDurationSingle];
      [v15 setWrSignpostDurationSingle:?];
      v95 = [v10 diagnostic];
      [v95 triggerThresholdDurationSingle];
      [v15 setWrSignpostDurationSingleThreshold:?];
    }
  }

  else
  {
    v22 = v249;
    if (byte_100127EC8 == 1)
    {
      v47 = *__error();
      v48 = sub_10003E080();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = [v14 name];
        *buf = 138412802;
        v256 = v254;
        v257 = 2112;
        v258 = v49;
        v259 = 1024;
        LODWORD(v260) = [v14 pid];
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "WR: %@ generating overall workflow report for %@ [%d]", buf, 0x1Cu);
      }

      *__error() = v47;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 1)
    {
      v50 = *__error();
      v51 = [v14 name];
      v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@ generating overall workflow report for %@ [%d]", v254, v51, [v14 pid]);

      if (v52)
      {
        v53 = CFStringGetCStringPtr(v52, 0x8000100u);
        if (v53)
        {
          v54 = v53;
          v55 = 0;
        }

        else
        {
          v54 = malloc_type_calloc(0x400uLL, 1uLL, 0x557858ABuLL);
          CFStringGetCString(v52, v54, 1024, 0x8000100u);
          v55 = v54;
        }

        if (qword_100127ED0)
        {
          v81 = qword_100127ED0;
        }

        else
        {
          v81 = __stderrp;
        }

        fprintf(v81, "%s\n", v54);
        if (v55)
        {
          free(v55);
        }

        CFRelease(v52);
        v10 = v251;
      }

      else
      {
        v71 = sub_10003E080();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
        {
          sub_1000A6C98(v254, v14);
        }

        if (qword_100127ED0)
        {
          v72 = qword_100127ED0;
        }

        else
        {
          v72 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v72);
      }

      *__error() = v50;
    }

    [v10 workflowDuration];
    if (v82 > 0.0)
    {
      [v10 workflowDuration];
      [v15 setWrWorkflowDuration:?];
      v83 = [v10 diagnostic];
      [v83 triggerThresholdDurationSingle];
      [v15 setWrWorkflowDurationThreshold:?];
    }

    [v10 workflowDurationOmittingNetworkBoundIntervals];
    if (v84 > 0.0)
    {
      [v10 workflowDurationOmittingNetworkBoundIntervals];
      [v15 setWrWorkflowDurationOmittingNetworkBoundIntervals:?];
      v85 = [v10 diagnostic];
      [v85 triggerThresholdDurationSingle];
      [v15 setWrWorkflowDurationOmittingNetworkBoundIntervalsThreshold:?];
    }

    if ([v10 workflowEventTimedOut])
    {
      [v248 maximumEventDuration];
      [v15 setWrWorkflowTimeoutDuration:?];
    }
  }

  if (v11)
  {
    v96 = [v11 signpost];
    v97 = [v96 name];
    v98 = [NSString stringWithFormat:@"Workflow responsiveness delay with %@ (%@)", v254, v97];
    [v15 setReason:v98];
  }

  else
  {
    v96 = [NSString stringWithFormat:@"Workflow responsiveness delay with %@", v254];
    [v15 setReason:v96];
  }

  v99 = [v253 startTime];
  if ([v15 indexOfFirstSampleOnOrAfterTimestamp:v99] == 0x7FFFFFFFFFFFFFFFLL)
  {

    v100 = v251;
  }

  else
  {
    v101 = [v253 endTime];
    v102 = [v15 indexOfLastSampleOnOrBeforeTimestamp:v101];

    v100 = v251;
    if (v102 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v112 = [v13 task];
      [v15 setTargetProcess:v112];

      v113 = [v13 thread];

      if (!v113)
      {
        goto LABEL_105;
      }

      v114 = [v13 thread];
      [v15 setTargetThreadId:{objc_msgSend(v114, "threadId")}];

      v115 = [v15 targetDispatchQueueId];
      v116 = [v13 dispatchQueue];
      v117 = [v116 identifier];

      if (v115 != v117)
      {
        if (([v14 pid] & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v173 = *__error();
            v174 = sub_10003E080();
            if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6D54(v174, v175, v176, v177, v178, v179, v180, v181);
            }

            *__error() = v173;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v182 = *__error();
            v183 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to set target thread", "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v183)
            {
              v217 = v183;
              v218 = CFStringGetCStringPtr(v183, 0x8000100u);
              if (v218)
              {
                v219 = v218;
                v220 = 0;
              }

              else
              {
                v219 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CF4EA3EuLL);
                CFStringGetCString(v217, v219, 1024, 0x8000100u);
                v220 = v219;
              }

              if (qword_100127ED0)
              {
                v232 = qword_100127ED0;
              }

              else
              {
                v232 = __stderrp;
              }

              fprintf(v232, "%s\n", v219);
              if (v220)
              {
                free(v220);
              }

              CFRelease(v217);
            }

            else
            {
              v184 = sub_10003E080();
              if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
              {
                sub_1000A6DCC(v184, v185, v186, v187, v188, v189, v190, v191);
              }

              if (qword_100127ED0)
              {
                v192 = qword_100127ED0;
              }

              else
              {
                v192 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v192);
            }

            *__error() = v182;
          }

          v237 = "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier";
          v231 = "%s: Unable to set target thread";
        }

        else
        {
          if (byte_100127EC8)
          {
            v159 = *__error();
            v160 = sub_10003E080();
            if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6E44();
            }

            *__error() = v159;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v161 = *__error();
            v162 = sub_10003E020([v14 pid]);
            v163 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Unable to set target thread", v162, [v14 pid], "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v163)
            {
              v213 = v163;
              v214 = CFStringGetCStringPtr(v163, 0x8000100u);
              if (v214)
              {
                v215 = v214;
                v216 = 0;
              }

              else
              {
                v215 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CF4EA3EuLL);
                CFStringGetCString(v213, v215, 1024, 0x8000100u);
                v216 = v215;
              }

              if (qword_100127ED0)
              {
                v229 = qword_100127ED0;
              }

              else
              {
                v229 = __stderrp;
              }

              fprintf(v229, "%s\n", v215);
              if (v216)
              {
                free(v216);
              }

              CFRelease(v213);
            }

            else
            {
              v164 = sub_10003E080();
              if (os_log_type_enabled(v164, OS_LOG_TYPE_FAULT))
              {
                sub_1000A6ED8();
              }

              if (qword_100127ED0)
              {
                v165 = qword_100127ED0;
              }

              else
              {
                v165 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v165);
            }

            *__error() = v161;
          }

          v230 = sub_10003E020([v14 pid]);
          [v14 pid];
          LOBYTE(v237) = v230;
          v231 = "%s [%d]: %s: Unable to set target thread";
        }

        v233 = 219;
      }

      else
      {
LABEL_105:
        v118 = [v13 dispatchQueue];

        if (!v118)
        {
          goto LABEL_107;
        }

        v119 = [v13 dispatchQueue];
        [v15 setTargetDispatchQueueId:{objc_msgSend(v119, "identifier")}];

        v120 = [v15 targetDispatchQueueId];
        v121 = [v13 dispatchQueue];
        v122 = [v121 identifier];

        if (v120 == v122)
        {
LABEL_107:
          v243 = v14;
          v246 = v9;
          [v15 setEvent:@"Workflow Responsiveness Delay"];
          v103 = v252;
          if (v252)
          {
            v240 = [v252 signpost];
            v123 = [v240 subsystem];
            v124 = [v252 signpost];
            v125 = [v124 category];
            v126 = [v252 signpost];
            v127 = [v126 name];
            v128 = [v251 diagnostic];
            [v128 name];
            v130 = v129 = v13;
            v131 = [NSString stringWithFormat:@"%@, %@.%@.%@, %@", v254, v123, v125, v127, v130];
            [v15 setEventNote:v131];

            v13 = v129;
            v132 = v240;

            v22 = v249;
            v103 = v252;
          }

          else
          {
            v132 = [v251 diagnostic];
            v123 = [v132 name];
            v124 = [NSString stringWithFormat:@"%@, %@", v254, v123];
            [v15 setEventNote:v124];
          }

          [v15 setEventTimeRange:v253];
          v9 = v246;
          [v15 setCustomOutput:v246];
          v135 = [[SASamplePrinter alloc] initWithSampleStore:v15];
          v136 = [v135 options];
          [v136 setPrintHeavyStacks:1];

          v137 = [v135 options];
          [v137 setPrintSpinSignatureStack:1];

          v138 = [v135 options];
          [v138 setForceOneBasedTimeIndexes:1];

          [v135 setIncidentUUID:v22];
          v139 = [v253 startTime];
          v140 = [v253 endTime];
          [v135 filterToTimestampRangeStart:v139 end:v140];

          v141 = [v253 startTime];
          v142 = [v253 endTime];
          [v141 deltaSecondsTo:v142 timeDomainPriorityList:&off_1001200E0 timeDomainUsed:0];
          v144 = v143;

          v145 = [v253 startTime];
          [v145 wallTime];
          sub_1000694CC(v135, 0, 0, 14, 0, 0, v146, v144, 1, 0, 0, 0);

          v14 = v243;
          v100 = v251;
          goto LABEL_125;
        }

        if (([v14 pid] & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v193 = *__error();
            v194 = sub_10003E080();
            if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
            {
              sub_1000A6F6C(v194, v195, v196, v197, v198, v199, v200, v201);
            }

            *__error() = v193;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v202 = *__error();
            v203 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to set target dispatch queue", "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v203)
            {
              v225 = v203;
              v226 = CFStringGetCStringPtr(v203, 0x8000100u);
              if (v226)
              {
                v227 = v226;
                v228 = 0;
              }

              else
              {
                v227 = malloc_type_calloc(0x400uLL, 1uLL, 0x86D0A680uLL);
                CFStringGetCString(v225, v227, 1024, 0x8000100u);
                v228 = v227;
              }

              if (qword_100127ED0)
              {
                v236 = qword_100127ED0;
              }

              else
              {
                v236 = __stderrp;
              }

              fprintf(v236, "%s\n", v227);
              if (v228)
              {
                free(v228);
              }

              CFRelease(v225);
            }

            else
            {
              v204 = sub_10003E080();
              if (os_log_type_enabled(v204, OS_LOG_TYPE_FAULT))
              {
                sub_1000A6FE4(v204, v205, v206, v207, v208, v209, v210, v211);
              }

              if (qword_100127ED0)
              {
                v212 = qword_100127ED0;
              }

              else
              {
                v212 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v212);
            }

            *__error() = v202;
          }

          v237 = "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier";
          v231 = "%s: Unable to set target dispatch queue";
        }

        else
        {
          if (byte_100127EC8)
          {
            v166 = *__error();
            v167 = sub_10003E080();
            if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
            {
              sub_1000A705C();
            }

            *__error() = v166;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v168 = *__error();
            v169 = sub_10003E020([v14 pid]);
            v170 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Unable to set target dispatch queue", v169, [v14 pid], "sampleStore.targetDispatchQueueId == report.dispatchQueue.identifier");
            if (v170)
            {
              v221 = v170;
              v222 = CFStringGetCStringPtr(v170, 0x8000100u);
              if (v222)
              {
                v223 = v222;
                v224 = 0;
              }

              else
              {
                v223 = malloc_type_calloc(0x400uLL, 1uLL, 0x86D0A680uLL);
                CFStringGetCString(v221, v223, 1024, 0x8000100u);
                v224 = v223;
              }

              if (qword_100127ED0)
              {
                v234 = qword_100127ED0;
              }

              else
              {
                v234 = __stderrp;
              }

              fprintf(v234, "%s\n", v223);
              if (v224)
              {
                free(v224);
              }

              CFRelease(v221);
            }

            else
            {
              v171 = sub_10003E080();
              if (os_log_type_enabled(v171, OS_LOG_TYPE_FAULT))
              {
                sub_1000A70F0();
              }

              if (qword_100127ED0)
              {
                v172 = qword_100127ED0;
              }

              else
              {
                v172 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v172);
            }

            *__error() = v168;
          }

          v235 = sub_10003E020([v14 pid]);
          [v14 pid];
          LOBYTE(v237) = v235;
          v231 = "%s [%d]: %s: Unable to set target dispatch queue";
        }

        v233 = 223;
      }

      sub_10003DF54("GenerateWorkflowResponsivenessReport", "monitor-WorkflowResponsiveness.m", v233, v231, v155, v156, v157, v158, v237);
      abort();
    }
  }

  v103 = v252;
  if (byte_100127EC8 == 1)
  {
    v104 = *__error();
    v105 = sub_10003E080();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7184(v105);
    }

    *__error() = v104;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v106 = *__error();
    v107 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sample store contains no samples for the signpost interval, not generating spindump report");
    if (v107)
    {
      v108 = v107;
      v109 = CFStringGetCStringPtr(v107, 0x8000100u);
      if (v109)
      {
        v110 = v109;
        v111 = 0;
      }

      else
      {
        v110 = malloc_type_calloc(0x400uLL, 1uLL, 0xF0964AAEuLL);
        CFStringGetCString(v108, v110, 1024, 0x8000100u);
        v111 = v110;
      }

      if (qword_100127ED0)
      {
        v147 = qword_100127ED0;
      }

      else
      {
        v147 = __stderrp;
      }

      fprintf(v147, "%s\n", v110);
      if (v111)
      {
        free(v111);
      }

      CFRelease(v108);
      v100 = v251;
    }

    else
    {
      v133 = sub_10003E080();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
      {
        sub_1000A71C8(v133);
      }

      if (qword_100127ED0)
      {
        v134 = qword_100127ED0;
      }

      else
      {
        v134 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v134);
    }

    *__error() = v106;
  }

LABEL_125:
}

void sub_1000484AC(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = [v2 allKeys];
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v33 + 1) + 8 * i);
          v9 = [v2 objectForKeyedSubscript:v8];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10004E5DC;
          v30[3] = &unk_100114FA8;
          v31 = v2;
          v32 = v8;
          sub_10004E45C(v9, v30);
        }

        v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v5);
    }

LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v1;
    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:v11];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10004E5EC;
        v27[3] = &unk_100114FD0;
        v13 = v10;
        v28 = v13;
        v29 = v11;
        sub_10004E45C(v12, v27);

        ++v11;
      }

      while (v11 < [v13 count]);
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = [v14 copy];
    v15 = [v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v3);
          }

          v19 = *(*(&v23 + 1) + 8 * j);
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10004E5FC;
          v20[3] = &unk_100114FA8;
          v21 = v14;
          v22 = v19;
          sub_10004E45C(v19, v20);
        }

        v16 = [v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
      }

      while (v16);
    }

    goto LABEL_24;
  }

LABEL_26:
}

void sub_100048834(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);

  v2 = dispatch_queue_create("WR processing", attr);
  v3 = qword_100127D50;
  qword_100127D50 = v2;
}

void sub_1000488B8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_100048930(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, unint64_t a12, unint64_t a13)
{
  v147 = a1;
  v146 = a2;
  v20 = a3;
  v148 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = v25;
  v136 = v20;
  v137 = v24;
  if (v24)
  {
    alloc = v25;
    v27 = v24;
    v28 = a13;
LABEL_19:
    v45 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:a12 / 1000000000.0 wallTime:0.0];
    v46 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:v28 / 1000000000.0 wallTime:0.0];
    v47 = [SATimeRange timeRangeStart:v45 end:v46];

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v48 = v27;
    v49 = [v48 countByEnumeratingWithState:&v149 objects:v153 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v150;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v150 != v51)
          {
            objc_enumerationMutation(v48);
          }

          sub_100049A1C(v147, v146, v148, v21, v22, v23, a10, a11, v47, *(*(&v149 + 1) + 8 * i));
        }

        v50 = [v48 countByEnumeratingWithState:&v149 objects:v153 count:16];
      }

      while (v50);
    }

    v20 = v136;
    v24 = v137;
    v26 = alloc;
    goto LABEL_27;
  }

  if (!a11)
  {
    v28 = a13;
    if (a10)
    {
      v29 = sub_1000497A4(v20, v25, a10, a12);
      if (v29)
      {
        goto LABEL_18;
      }

      if (byte_100127EC8 == 1)
      {
        v67 = *__error();
        v68 = sub_10003E080();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v143 = [v148 workflow];
          v101 = [(__CFAllocator *)v143 name];
          v126 = v101;
          v130 = [v21 signpost];
          v102 = [v130 name];
          allocb = v26;
          v103 = v102;
          v104 = v20;
          if (v102)
          {
            v105 = v102;
          }

          else
          {
            v105 = @"<entire workflow>";
          }

          [v22 name];
          *buf = 138413314;
          v155 = v101;
          v156 = 2112;
          v157 = v105;
          v20 = v104;
          v159 = v158 = 2112;
          v106 = v159;
          v160 = 2048;
          v161 = a10;
          v162 = 2048;
          v24 = 0;
          v163 = a12;
          _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);

          v26 = allocb;
        }

        *__error() = v67;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_27;
      }

      alloca = v26;
      v128 = *__error();
      v69 = [v148 workflow];
      v70 = [v69 name];
      v71 = [v21 signpost];
      v72 = [v71 name];
      v73 = v72;
      if (v72)
      {
        v74 = v72;
      }

      else
      {
        v74 = @"<entire workflow>";
      }

      v75 = [v22 name];
      v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", v70, v74, v75, a10, a12);

      v77 = v76;
      if (v76)
      {
        CStringPtr = CFStringGetCStringPtr(v76, 0x8000100u);
        if (CStringPtr)
        {
          v79 = CStringPtr;
          v80 = 0;
        }

        else
        {
          v79 = malloc_type_calloc(0x400uLL, 1uLL, 0x74111809uLL);
          CFStringGetCString(v76, v79, 1024, 0x8000100u);
          v80 = v79;
        }

        v26 = alloca;
        v20 = v136;
        if (qword_100127ED0)
        {
          v89 = qword_100127ED0;
        }

        else
        {
          v89 = __stderrp;
        }

        fprintf(v89, "%s\n", v79);
        v24 = 0;
        if (v80)
        {
          free(v80);
        }

        CFRelease(v77);
        goto LABEL_84;
      }

      v87 = sub_10003E080();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
      {
        v145 = [v148 workflow];
        v118 = [(__CFAllocator *)v145 name];
        v127 = [v21 signpost];
        v119 = [v127 name];
        v120 = v119;
        if (v119)
        {
          v121 = v119;
        }

        else
        {
          v121 = @"<entire workflow>";
        }

        v122 = [v22 name];
        *buf = 138413314;
        v155 = v118;
        v156 = 2112;
        v157 = v121;
        v158 = 2112;
        v159 = v122;
        v160 = 2048;
        v161 = a10;
        v162 = 2048;
        v163 = a12;
        _os_log_fault_impl(&_mh_execute_header, v87, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);
      }
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v53 = *__error();
        v54 = sub_10003E080();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v142 = [v148 workflow];
          v95 = [(__CFAllocator *)v142 name];
          v140 = [v21 signpost];
          v96 = [v140 name];
          v97 = v96;
          v98 = v20;
          if (v96)
          {
            v99 = v96;
          }

          else
          {
            v99 = @"<entire workflow>";
          }

          [v22 name];
          v100 = allocd = v26;
          *buf = 138412802;
          v155 = v95;
          v156 = 2112;
          v157 = v99;
          v20 = v98;
          v24 = 0;
          v158 = 2112;
          v159 = v100;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Unable to find task given no threads, cannot generate report", buf, 0x20u);

          v26 = allocd;
        }

        *__error() = v53;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_27;
      }

      alloca = v26;
      v128 = *__error();
      v55 = [v148 workflow];
      v56 = [v55 name];
      v57 = [v21 signpost];
      v58 = [v57 name];
      v59 = v58;
      if (v58)
      {
        v60 = v58;
      }

      else
      {
        v60 = @"<entire workflow>";
      }

      v61 = [v22 name];
      v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Unable to find task given no threads, cannot generate report", v56, v60, v61);

      v63 = v62;
      if (v62)
      {
        v64 = CFStringGetCStringPtr(v62, 0x8000100u);
        if (v64)
        {
          v65 = v64;
          v66 = 0;
        }

        else
        {
          v65 = malloc_type_calloc(0x400uLL, 1uLL, 0x475CB09uLL);
          CFStringGetCString(v62, v65, 1024, 0x8000100u);
          v66 = v65;
        }

        v20 = v136;
        v85 = v128;
        if (qword_100127ED0)
        {
          v86 = qword_100127ED0;
        }

        else
        {
          v86 = __stderrp;
        }

        fprintf(v86, "%s\n", v65);
        v24 = 0;
        if (v66)
        {
          free(v66);
        }

        CFRelease(v63);
        v26 = alloca;
        goto LABEL_85;
      }

      v84 = sub_10003E080();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        v144 = [v148 workflow];
        v112 = [(__CFAllocator *)v144 name];
        v113 = [v21 signpost];
        v114 = [v113 name];
        v115 = v114;
        if (v114)
        {
          v116 = v114;
        }

        else
        {
          v116 = @"<entire workflow>";
        }

        v117 = [v22 name];
        *buf = 138412802;
        v155 = v112;
        v156 = 2112;
        v157 = v116;
        v158 = 2112;
        v159 = v117;
        _os_log_fault_impl(&_mh_execute_header, v84, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Unable to find task given no threads, cannot generate report", buf, 0x20u);
      }
    }

    if (qword_100127ED0)
    {
      v88 = qword_100127ED0;
    }

    else
    {
      v88 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v88);
    v20 = v136;
    v24 = 0;
    v26 = alloca;
LABEL_84:
    v85 = v128;
LABEL_85:
    *__error() = v85;
    goto LABEL_27;
  }

  v28 = a13;
  v29 = sub_1000497A4(v20, v25, a11, a13);
  if (v29)
  {
LABEL_18:
    v44 = v29;
    alloc = v26;
    v27 = [[NSArray alloc] initWithObjects:{v29, 0}];

    goto LABEL_19;
  }

  if (byte_100127EC8 == 1)
  {
    v30 = *__error();
    v31 = sub_10003E080();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v139 = [v148 workflow];
      v90 = [v139 name];
      v123 = v90;
      v129 = [v21 signpost];
      v91 = [v129 name];
      v125 = v91;
      v92 = v20;
      if (v91)
      {
        v93 = v91;
      }

      else
      {
        v93 = @"<entire workflow>";
      }

      [v22 name];
      *buf = 138413314;
      v155 = v90;
      v156 = 2112;
      v157 = v93;
      v20 = v92;
      v24 = 0;
      v159 = v158 = 2112;
      v94 = v159;
      v160 = 2048;
      v161 = a11;
      v162 = 2048;
      v163 = a13;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);

      v28 = a13;
    }

    *__error() = v30;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v128 = *__error();
    v138 = [v148 workflow];
    v32 = [v138 name];
    v124 = [v21 signpost];
    v33 = [v124 name];
    v34 = v28;
    v35 = v33;
    if (v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = @"<entire workflow>";
    }

    v37 = [v22 name];
    v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", v32, v36, v37, a11, v34);

    v39 = v38;
    if (v38)
    {
      v40 = v26;
      v41 = CFStringGetCStringPtr(v38, 0x8000100u);
      if (v41)
      {
        v42 = v41;
        v43 = 0;
      }

      else
      {
        v42 = malloc_type_calloc(0x400uLL, 1uLL, 0x22E06FDCuLL);
        CFStringGetCString(v38, v42, 1024, 0x8000100u);
        v43 = v42;
      }

      v20 = v136;
      if (qword_100127ED0)
      {
        v83 = qword_100127ED0;
      }

      else
      {
        v83 = __stderrp;
      }

      fprintf(v83, "%s\n", v42);
      v24 = 0;
      if (v43)
      {
        free(v43);
      }

      CFRelease(v39);
      v26 = v40;
    }

    else
    {
      v81 = sub_10003E080();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
      {
        v141 = [v148 workflow];
        v107 = [v141 name];
        allocc = [v21 signpost];
        v108 = [(__CFAllocator *)allocc name];
        v109 = v108;
        if (v108)
        {
          v110 = v108;
        }

        else
        {
          v110 = @"<entire workflow>";
        }

        v111 = [v22 name];
        *buf = 138413314;
        v155 = v107;
        v156 = 2112;
        v157 = v110;
        v158 = 2112;
        v159 = v111;
        v160 = 2048;
        v161 = a11;
        v162 = 2048;
        v163 = a13;
        _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: Unable to find task with thread 0x%llx at %llu, cannot generate report", buf, 0x34u);
      }

      if (qword_100127ED0)
      {
        v82 = qword_100127ED0;
      }

      else
      {
        v82 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v82);
      v20 = v136;
      v24 = 0;
    }

    goto LABEL_84;
  }

LABEL_27:
}

id sub_1000497A4(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [v7 tasksByPid];
    v12 = [v11 objectForKeyedSubscript:v10];

    v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v32 = v10;
      v33 = v8;
      v34 = v7;
      v15 = a4 / 1000000000.0;
      v16 = *v36;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = [v18 threads];
          v20 = [NSNumber numberWithUnsignedLongLong:a3];
          v21 = [v19 objectForKeyedSubscript:v20];

          if (v21)
          {
            v22 = [v18 startTimestamp];
            if (v22)
            {
              v23 = v22;
              [v22 machContTimeSeconds];
              if (v24 != 0.0 && v15 < v24)
              {
                v30 = 0;
LABEL_26:

                goto LABEL_27;
              }

              v26 = [v18 endTimestamp];
              v27 = v26;
              if (v26)
              {
                [v26 machContTimeSeconds];
                if (v28 != 0.0 && v15 < v28)
                {
                  v30 = v18;

                  goto LABEL_26;
                }
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v30 = 0;
LABEL_27:
      v8 = v33;
      v7 = v34;
      v10 = v32;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

void sub_100049A1C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v337 = a1;
  v338 = a2;
  v339 = a3;
  v340 = a4;
  v15 = a5;
  v341 = a6;
  v342 = a9;
  v343 = a10;
  v344 = v15;
  if ([v15 reportSpindumpForThisThread])
  {
    v319 = v337;
    v323 = v338;
    v314 = v339;
    v305 = v340;
    v297 = v15;
    v331 = v341;
    v335 = v342;
    v16 = v343;
    v17 = v16;
    if (a7 == a8 || a7 == 0)
    {
      v19 = a8;
    }

    else
    {
      v19 = 0;
    }

    if (a8)
    {
      v20 = v19;
    }

    else
    {
      v20 = a7;
    }

    if (v20)
    {
      v21 = [v16 threads];
      v22 = [NSNumber numberWithUnsignedLongLong:v20];
      v23 = [v21 objectForKeyedSubscript:v22];

      if (v23)
      {
        v24 = [[SPWRReport alloc] initWithReportReason:v323 reportedSignpostTracker:v331 task:v17 timeRange:v335 thread:v23 dispatchQueue:0];
        [v319 addObject:v24];
      }

      else
      {
        if (byte_100127EC8 == 1)
        {
          v39 = *__error();
          v40 = sub_10003E080();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v294 = [v314 workflow];
            v285 = [v294 name];
            v197 = [v305 signpost];
            v198 = [v197 name];
            v199 = v198;
            if (v198)
            {
              v200 = v198;
            }

            else
            {
              v200 = @"<entire workflow>";
            }

            v201 = [v297 name];
            v202 = [v17 name];
            *v362 = 138413570;
            *&v362[4] = v285;
            *&v362[12] = 2112;
            *&v362[14] = v200;
            *&v362[22] = 2112;
            v363 = v201;
            *v364 = 2112;
            *&v364[2] = v202;
            *&v364[10] = 1024;
            *&v364[12] = [v17 pid];
            *&v364[16] = 2048;
            *&v364[18] = v20;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@: %@ [%d] has no thread 0x%llx, cannot generate report", v362, 0x3Au);
          }

          *__error() = v39;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v288 = *__error();
          v41 = [v314 workflow];
          v42 = [v41 name];
          v43 = [v305 signpost];
          v44 = [v43 name];
          v45 = v44;
          if (v44)
          {
            v46 = v44;
          }

          else
          {
            v46 = @"<entire workflow>";
          }

          v47 = [v297 name];
          v48 = [v17 name];
          v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@: %@ [%d] has no thread 0x%llx, cannot generate report", v42, v46, v47, v48, [v17 pid], v20);

          if (v49)
          {
            CStringPtr = CFStringGetCStringPtr(v49, 0x8000100u);
            if (CStringPtr)
            {
              v51 = 0;
            }

            else
            {
              CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xED761696uLL);
              CFStringGetCString(v49, CStringPtr, 1024, 0x8000100u);
              v51 = CStringPtr;
            }

            if (qword_100127ED0)
            {
              v58 = qword_100127ED0;
            }

            else
            {
              v58 = __stderrp;
            }

            fprintf(v58, "%s\n", CStringPtr);
            if (v51)
            {
              free(v51);
            }

            CFRelease(v49);
          }

          else
          {
            v55 = sub_10003E080();
            v56 = v55;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              v287 = [v314 workflow];
              v244 = [v287 name];
              v245 = [v305 signpost];
              v246 = [v245 name];
              v247 = v246;
              if (v246)
              {
                v248 = v246;
              }

              else
              {
                v248 = @"<entire workflow>";
              }

              v249 = [v297 name];
              v250 = [v17 name];
              v251 = [v17 pid];
              *v362 = 138413570;
              *&v362[4] = v244;
              *&v362[12] = 2112;
              *&v362[14] = v248;
              *&v362[22] = 2112;
              v363 = v249;
              *v364 = 2112;
              *&v364[2] = v250;
              *&v364[10] = 1024;
              *&v364[12] = v251;
              *&v364[16] = 2048;
              *&v364[18] = v20;
              _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@: %@ [%d] has no thread 0x%llx, cannot generate report", v362, 0x3Au);

              v56 = v55;
            }

            if (qword_100127ED0)
            {
              v57 = qword_100127ED0;
            }

            else
            {
              v57 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v57);
          }

          *__error() = v288;
        }
      }
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v25 = *__error();
        v26 = sub_10003E080();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v183 = [v314 workflow];
          v184 = [v183 name];
          v185 = [v305 signpost];
          v186 = [v185 name];
          v187 = v186;
          if (v186)
          {
            v188 = v186;
          }

          else
          {
            v188 = @"<entire workflow>";
          }

          v189 = [v297 name];
          *v362 = 138413314;
          *&v362[4] = v184;
          *&v362[12] = 2112;
          *&v362[14] = v188;
          *&v362[22] = 2112;
          v363 = v189;
          *v364 = 2048;
          *&v364[2] = a7;
          *&v364[10] = 2048;
          *&v364[12] = a8;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports this thread, but signpost starts on 0x%llx and ends on 0x%llx", v362, 0x34u);
        }

        *__error() = v25;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v27 = *__error();
        v28 = [v314 workflow];
        v29 = [v28 name];
        v30 = [v305 signpost];
        v31 = [v30 name];
        v32 = v31;
        v33 = @"<entire workflow>";
        if (v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = @"<entire workflow>";
        }

        v35 = [v297 name];
        v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this thread, but signpost starts on 0x%llx and ends on 0x%llx", v29, v34, v35, a7, a8);

        if (v36)
        {
          v37 = CFStringGetCStringPtr(v36, 0x8000100u);
          if (v37)
          {
            v38 = 0;
          }

          else
          {
            v37 = malloc_type_calloc(0x400uLL, 1uLL, 0x35F1E861uLL);
            CFStringGetCString(v36, v37, 1024, 0x8000100u);
            v38 = v37;
          }

          if (qword_100127ED0)
          {
            v54 = qword_100127ED0;
          }

          else
          {
            v54 = __stderrp;
          }

          fprintf(v54, "%s\n", v37);
          if (v38)
          {
            free(v38);
          }

          CFRelease(v36);
        }

        else
        {
          v52 = sub_10003E080();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            v219 = [v314 workflow];
            v220 = [v219 name];
            v221 = [v305 signpost];
            v222 = [v221 name];
            v223 = v222;
            if (v222)
            {
              v33 = v222;
            }

            v224 = [v297 name];
            *v362 = 138413314;
            *&v362[4] = v220;
            *&v362[12] = 2112;
            *&v362[14] = v33;
            *&v362[22] = 2112;
            v363 = v224;
            *v364 = 2048;
            *&v364[2] = a7;
            *&v364[10] = 2048;
            *&v364[12] = a8;
            _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this thread, but signpost starts on 0x%llx and ends on 0x%llx", v362, 0x34u);
          }

          if (qword_100127ED0)
          {
            v53 = qword_100127ED0;
          }

          else
          {
            v53 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v53);
        }

        *__error() = v27;
      }
    }

    v15 = v344;
  }

  v336 = [v15 reportSpindumpForThreadWithName];
  if (v336)
  {
    v59 = v336;
    v298 = v337;
    v306 = v338;
    v289 = v339;
    v281 = v340;
    v278 = v344;
    v315 = v341;
    v320 = v342;
    v324 = v343;
    v332 = v59;
    if ([v59 hasPrefix:@"^"] && objc_msgSend(v59, "hasSuffix:", @"$"))
    {
      v352 = 0;
      v60 = [[NSRegularExpression alloc] initWithPattern:v59 options:0 error:&v352];
      v61 = v352;
      if (!v60)
      {
        if (byte_100127EC8 == 1)
        {
          v79 = v61;
          v80 = *__error();
          v81 = sub_10003E080();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v233 = [v289 workflow];
            v234 = [v233 name];
            v235 = [v281 signpost];
            v236 = [v235 name];
            v237 = v236;
            if (v236)
            {
              v238 = v236;
            }

            else
            {
              v238 = @"<entire workflow>";
            }

            v239 = [v278 name];
            *v362 = 138413314;
            *&v362[4] = v234;
            *&v362[12] = 2112;
            *&v362[14] = v238;
            *&v362[22] = 2112;
            v363 = v239;
            *v364 = 2112;
            *&v364[2] = v332;
            *&v364[10] = 2112;
            *&v364[12] = v79;
            _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports thread %@, but regex failed to compile: %@", v362, 0x34u);
          }

          *__error() = v80;
          v61 = v79;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v82 = v61;
          v83 = *__error();
          v84 = [v289 workflow];
          v85 = [v84 name];
          v86 = [v281 signpost];
          v87 = [v86 name];
          v88 = v87;
          v89 = @"<entire workflow>";
          if (v87)
          {
            v90 = v87;
          }

          else
          {
            v90 = @"<entire workflow>";
          }

          v91 = [v278 name];
          v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports thread %@, but regex failed to compile: %@", v85, v90, v91, v332, v82);

          if (v92)
          {
            v93 = CFStringGetCStringPtr(v92, 0x8000100u);
            if (v93)
            {
              v94 = 0;
            }

            else
            {
              v93 = malloc_type_calloc(0x400uLL, 1uLL, 0x1E150F2CuLL);
              CFStringGetCString(v92, v93, 1024, 0x8000100u);
              v94 = v93;
            }

            if (qword_100127ED0)
            {
              v176 = qword_100127ED0;
            }

            else
            {
              v176 = __stderrp;
            }

            fprintf(v176, "%s\n", v93);
            if (v94)
            {
              free(v94);
            }

            CFRelease(v92);
          }

          else
          {
            v163 = sub_10003E080();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_FAULT))
            {
              v252 = [v289 workflow];
              v253 = [v252 name];
              v254 = [v281 signpost];
              v255 = [v254 name];
              v256 = v255;
              if (v255)
              {
                v89 = v255;
              }

              v257 = [v278 name];
              *v362 = 138413314;
              *&v362[4] = v253;
              *&v362[12] = 2112;
              *&v362[14] = v89;
              *&v362[22] = 2112;
              v363 = v257;
              *v364 = 2112;
              *&v364[2] = v332;
              *&v364[10] = 2112;
              *&v364[12] = v82;
              _os_log_fault_impl(&_mh_execute_header, v163, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports thread %@, but regex failed to compile: %@", v362, 0x34u);
            }

            if (qword_100127ED0)
            {
              v164 = qword_100127ED0;
            }

            else
            {
              v164 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v164);
          }

          *__error() = v83;
          v61 = v82;
        }

        goto LABEL_107;
      }
    }

    else
    {
      v60 = 0;
    }

    v345 = 0;
    v346 = &v345;
    v347 = 0x2020000000;
    LOBYTE(v348) = 0;
    v62 = [v324 threads];
    *v362 = _NSConcreteStackBlock;
    *&v362[8] = 3221225472;
    *&v362[16] = sub_10004DB40;
    v363 = &unk_100114F58;
    v276 = v320;
    *v364 = v276;
    v277 = v60;
    *&v364[8] = v277;
    v275 = v332;
    *&v364[16] = v275;
    v368 = &v345;
    *&v364[24] = v306;
    v365 = v315;
    v63 = v324;
    v366 = v63;
    v367 = v298;
    [v62 enumerateKeysAndObjectsUsingBlock:v362];

    if ((*(v346 + 24) & 1) == 0)
    {
      if (byte_100127EC8 == 1)
      {
        v64 = *__error();
        v65 = sub_10003E080();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v273 = [v289 workflow];
          v267 = [v273 name];
          v270 = [v281 signpost];
          v167 = [v270 name];
          v168 = v167;
          v169 = @"<entire workflow>";
          if (v167)
          {
            v169 = v167;
          }

          v263 = v169;
          v265 = [v278 name];
          v170 = [v63 name];
          v171 = [v63 pid];
          v172 = [v276 startTime];
          v173 = [v172 debugDescription];
          v174 = [v276 endTime];
          v175 = [v174 debugDescription];
          *buf = 138414082;
          *&buf[4] = v267;
          *&buf[12] = 2112;
          *&buf[14] = v263;
          *&buf[22] = 2112;
          *&buf[24] = v265;
          *&buf[32] = 2112;
          *&buf[34] = v275;
          *&buf[42] = 2112;
          *&buf[44] = v170;
          *&buf[52] = 1024;
          *&buf[54] = v171;
          *&buf[58] = 2112;
          *&buf[60] = v173;
          v360 = 2112;
          v361 = v175;
          _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports thread %@, but %@ [%d] has no thread with that name during the interval %@ - %@", buf, 0x4Eu);
        }

        *__error() = v64;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v264 = *__error();
        v272 = [v289 workflow];
        v266 = [v272 name];
        v269 = [v281 signpost];
        v66 = [v269 name];
        v67 = v66;
        if (v66)
        {
          v68 = v66;
        }

        else
        {
          v68 = @"<entire workflow>";
        }

        v69 = [v278 name];
        v70 = [v63 name];
        v71 = [v63 pid];
        v72 = [v276 startTime];
        v73 = [v72 debugDescription];
        v74 = [v276 endTime];
        v75 = [v74 debugDescription];
        v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports thread %@, but %@ [%d] has no thread with that name during the interval %@ - %@", v266, v68, v69, v275, v70, v71, v73, v75);

        if (v76)
        {
          v77 = CFStringGetCStringPtr(v76, 0x8000100u);
          if (v77)
          {
            v78 = 0;
          }

          else
          {
            v77 = malloc_type_calloc(0x400uLL, 1uLL, 0x668B82A4uLL);
            CFStringGetCString(v76, v77, 1024, 0x8000100u);
            v78 = v77;
          }

          if (qword_100127ED0)
          {
            v97 = qword_100127ED0;
          }

          else
          {
            v97 = __stderrp;
          }

          fprintf(v97, "%s\n", v77);
          if (v78)
          {
            free(v78);
          }

          CFRelease(v76);
        }

        else
        {
          v95 = sub_10003E080();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            v274 = [v289 workflow];
            v268 = [v274 name];
            v271 = [v281 signpost];
            v203 = [v271 name];
            v204 = v203;
            if (v203)
            {
              v205 = v203;
            }

            else
            {
              v205 = @"<entire workflow>";
            }

            v206 = [v278 name];
            v207 = [v63 name];
            v208 = [v63 pid];
            v209 = [v276 startTime];
            v210 = [v209 debugDescription];
            v211 = [v276 endTime];
            v212 = [v211 debugDescription];
            *buf = 138414082;
            *&buf[4] = v268;
            *&buf[12] = 2112;
            *&buf[14] = v205;
            *&buf[22] = 2112;
            *&buf[24] = v206;
            *&buf[32] = 2112;
            *&buf[34] = v275;
            *&buf[42] = 2112;
            *&buf[44] = v207;
            *&buf[52] = 1024;
            *&buf[54] = v208;
            *&buf[58] = 2112;
            *&buf[60] = v210;
            v360 = 2112;
            v361 = v212;
            _os_log_fault_impl(&_mh_execute_header, v95, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports thread %@, but %@ [%d] has no thread with that name during the interval %@ - %@", buf, 0x4Eu);
          }

          if (qword_100127ED0)
          {
            v96 = qword_100127ED0;
          }

          else
          {
            v96 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v96);
        }

        *__error() = v264;
      }
    }

    _Block_object_dispose(&v345, 8);
    v61 = v277;
LABEL_107:
  }

  if ([v344 reportSpindumpForMainThread])
  {
    v321 = v337;
    v325 = v338;
    v299 = v339;
    v307 = v340;
    v316 = v344;
    v333 = v341;
    v98 = v342;
    v99 = v343;
    v100 = [v99 mainThread];
    if (v100)
    {
      v101 = [[SPWRReport alloc] initWithReportReason:v325 reportedSignpostTracker:v333 task:v99 timeRange:v98 thread:v100 dispatchQueue:0];
      [v321 addObject:v101];
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v102 = *__error();
        v103 = sub_10003E080();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v293 = [v299 workflow];
          v284 = [v293 name];
          v190 = [v307 signpost];
          v191 = [v190 name];
          v192 = v191;
          if (v191)
          {
            v193 = v191;
          }

          else
          {
            v193 = @"<entire workflow>";
          }

          v194 = [v316 name];
          v195 = [v99 name];
          v196 = [v99 pid];
          *v362 = 138413314;
          *&v362[4] = v284;
          *&v362[12] = 2112;
          *&v362[14] = v193;
          *&v362[22] = 2112;
          v363 = v194;
          *v364 = 2112;
          *&v364[2] = v195;
          *&v364[10] = 1024;
          *&v364[12] = v196;
          _os_log_error_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports main thread, but %@ [%d] has no main thread", v362, 0x30u);
        }

        *__error() = v102;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v290 = *__error();
        v104 = [v299 workflow];
        v105 = [v104 name];
        v106 = [v307 signpost];
        v107 = [v106 name];
        v108 = v107;
        if (v107)
        {
          v109 = v107;
        }

        else
        {
          v109 = @"<entire workflow>";
        }

        v110 = [v316 name];
        v111 = [v99 name];
        v112 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports main thread, but %@ [%d] has no main thread", v105, v109, v110, v111, [v99 pid]);

        if (v112)
        {
          v113 = CFStringGetCStringPtr(v112, 0x8000100u);
          if (v113)
          {
            v114 = 0;
          }

          else
          {
            v113 = malloc_type_calloc(0x400uLL, 1uLL, 0x4EF72D78uLL);
            CFStringGetCString(v112, v113, 1024, 0x8000100u);
            v114 = v113;
          }

          if (qword_100127ED0)
          {
            v117 = qword_100127ED0;
          }

          else
          {
            v117 = __stderrp;
          }

          fprintf(v117, "%s\n", v113);
          if (v114)
          {
            free(v114);
          }

          CFRelease(v112);
        }

        else
        {
          v115 = sub_10003E080();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
          {
            v286 = [v299 workflow];
            v225 = [v286 name];
            v226 = [v307 signpost];
            v227 = [v226 name];
            v228 = v227;
            if (v227)
            {
              v229 = v227;
            }

            else
            {
              v229 = @"<entire workflow>";
            }

            v230 = [v316 name];
            v231 = [v99 name];
            v232 = [v99 pid];
            *v362 = 138413314;
            *&v362[4] = v225;
            *&v362[12] = 2112;
            *&v362[14] = v229;
            *&v362[22] = 2112;
            v363 = v230;
            *v364 = 2112;
            *&v364[2] = v231;
            *&v364[10] = 1024;
            *&v364[12] = v232;
            _os_log_fault_impl(&_mh_execute_header, v115, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports main thread, but %@ [%d] has no main thread", v362, 0x30u);
          }

          if (qword_100127ED0)
          {
            v116 = qword_100127ED0;
          }

          else
          {
            v116 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v116);
        }

        *__error() = v290;
      }
    }
  }

  if ([v344 reportSpindumpForThisDispatchQueue])
  {
    sub_10004C0E0(v337, v338, v339, v340, v344, v341, a7, a8, v342, v343);
  }

  v118 = [v344 reportSpindumpForDispatchQueueWithLabel];
  v334 = v118;
  v119 = v118;
  if (v118)
  {
    v120 = v118;
    v121 = v337;
    v122 = v338;
    v328 = v339;
    v322 = v340;
    v326 = v344;
    v123 = v341;
    v124 = v342;
    v125 = v343;
    v330 = v120;
    if ([v120 hasPrefix:@"^"] && objc_msgSend(v120, "hasSuffix:", @"$"))
    {
      v126 = [NSRegularExpression alloc];
      v358 = 0;
      v127 = [v126 initWithPattern:v120 options:0 error:&v358];
      v128 = v358;
      if (!v127)
      {
        if (byte_100127EC8 == 1)
        {
          v147 = v128;
          v148 = *__error();
          v149 = sub_10003E080();
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            v318 = [v328 workflow];
            v304 = [v318 name];
            v312 = [v322 signpost];
            v240 = [v312 name];
            v241 = v240;
            v242 = @"<entire workflow>";
            if (v240)
            {
              v242 = v240;
            }

            v295 = v242;
            v243 = [v326 name];
            *v362 = 138413314;
            *&v362[4] = v304;
            *&v362[12] = 2112;
            *&v362[14] = v295;
            *&v362[22] = 2112;
            v363 = v243;
            *v364 = 2112;
            *&v364[2] = v330;
            *&v364[10] = 2112;
            *&v364[12] = v147;
            _os_log_error_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports dispatch queue %@, but regex failed to compile: %@", v362, 0x34u);
          }

          *__error() = v148;
          v128 = v147;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_190;
        }

        v317 = v128;
        v301 = *__error();
        v309 = [v328 workflow];
        v150 = [v309 name];
        v151 = [v322 signpost];
        v152 = [v151 name];
        v153 = v152;
        if (v152)
        {
          v154 = v152;
        }

        else
        {
          v154 = @"<entire workflow>";
        }

        v155 = [v326 name];
        v156 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports dispatch queue %@, but regex failed to compile: %@", v150, v154, v155, v330, v317);

        if (v156)
        {
          v157 = CFStringGetCStringPtr(v156, 0x8000100u);
          if (v157)
          {
            v158 = v156;
            v159 = 0;
          }

          else
          {
            v157 = malloc_type_calloc(0x400uLL, 1uLL, 0x67946F98uLL);
            CFStringGetCString(v156, v157, 1024, 0x8000100u);
            v158 = v156;
            v159 = v157;
          }

          if (qword_100127ED0)
          {
            v177 = qword_100127ED0;
          }

          else
          {
            v177 = __stderrp;
          }

          fprintf(v177, "%s\n", v157);
          if (v159)
          {
            free(v159);
          }

          CFRelease(v158);
        }

        else
        {
          v165 = sub_10003E080();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
          {
            v313 = [v328 workflow];
            v296 = [v313 name];
            v258 = [v322 signpost];
            v259 = [v258 name];
            v260 = v259;
            if (v259)
            {
              v261 = v259;
            }

            else
            {
              v261 = @"<entire workflow>";
            }

            v262 = [v326 name];
            *v362 = 138413314;
            *&v362[4] = v296;
            *&v362[12] = 2112;
            *&v362[14] = v261;
            *&v362[22] = 2112;
            v363 = v262;
            *v364 = 2112;
            *&v364[2] = v330;
            *&v364[10] = 2112;
            *&v364[12] = v317;
            _os_log_fault_impl(&_mh_execute_header, v165, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports dispatch queue %@, but regex failed to compile: %@", v362, 0x34u);
          }

          if (qword_100127ED0)
          {
            v166 = qword_100127ED0;
          }

          else
          {
            v166 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v166);
        }

        *__error() = v301;
LABEL_189:
        v128 = v317;
LABEL_190:

        v119 = v334;
        goto LABEL_191;
      }
    }

    else
    {
      v127 = 0;
    }

    v352 = 0;
    v353 = &v352;
    v354 = 0x3032000000;
    v355 = sub_100045D80;
    v356 = sub_100045D90;
    v357 = 0;
    v129 = [v125 dispatchQueues];
    v345 = _NSConcreteStackBlock;
    v346 = 3221225472;
    v347 = sub_10004E2F8;
    v348 = &unk_100114F80;
    v317 = v127;
    v349 = v317;
    v130 = v330;
    v350 = v130;
    v351 = &v352;
    [v129 enumerateKeysAndObjectsUsingBlock:&v345];

    v131 = v353[5];
    if (v131)
    {
      memset(buf, 0, 64);
      v132 = v131;
      v133 = [v132 countByEnumeratingWithState:buf objects:v362 count:16];
      if (v133)
      {
        v134 = **&buf[16];
        do
        {
          for (i = 0; i != v133; i = i + 1)
          {
            if (**&buf[16] != v134)
            {
              objc_enumerationMutation(v132);
            }

            sub_10004E210(v121, v122, v123, v124, v125, *(*&buf[8] + 8 * i));
          }

          v133 = [v132 countByEnumeratingWithState:buf objects:v362 count:16];
        }

        while (v133);
      }
    }

    else
    {
      if (byte_100127EC8 == 1)
      {
        v136 = *__error();
        v137 = sub_10003E080();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
        {
          v292 = v130;
          v310 = [v328 workflow];
          v283 = [v310 name];
          v302 = [v322 signpost];
          v178 = [v302 name];
          v179 = v178;
          if (v178)
          {
            v180 = v178;
          }

          else
          {
            v180 = @"<entire workflow>";
          }

          v279 = [v326 name];
          v181 = [v125 name];
          v182 = [v125 pid];
          *v362 = 138413570;
          *&v362[4] = v283;
          *&v362[12] = 2112;
          *&v362[14] = v180;
          *&v362[22] = 2112;
          v363 = v279;
          *v364 = 2112;
          v130 = v292;
          *&v364[2] = v292;
          *&v364[10] = 2112;
          *&v364[12] = v181;
          *&v364[20] = 1024;
          *&v364[22] = v182;
          _os_log_error_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports dispatch queue %@, but %@ [%d] has no such dispatch queue", v362, 0x3Au);
        }

        *__error() = v136;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v291 = v130;
        v282 = *__error();
        v308 = [v328 workflow];
        v300 = [v308 name];
        v138 = [v322 signpost];
        v139 = [v138 name];
        v140 = v139;
        if (v139)
        {
          v141 = v139;
        }

        else
        {
          v141 = @"<entire workflow>";
        }

        v142 = [v326 name];
        v143 = [v125 name];
        v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports dispatch queue %@, but %@ [%d] has no such dispatch queue", v300, v141, v142, v291, v143, [v125 pid]);

        if (v144)
        {
          v145 = CFStringGetCStringPtr(v144, 0x8000100u);
          if (v145)
          {
            v146 = 0;
          }

          else
          {
            v145 = malloc_type_calloc(0x400uLL, 1uLL, 0x7FB6C843uLL);
            CFStringGetCString(v144, v145, 1024, 0x8000100u);
            v146 = v145;
          }

          if (qword_100127ED0)
          {
            v162 = qword_100127ED0;
          }

          else
          {
            v162 = __stderrp;
          }

          fprintf(v162, "%s\n", v145);
          if (v146)
          {
            free(v146);
          }

          CFRelease(v144);
        }

        else
        {
          v160 = sub_10003E080();
          if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
          {
            v311 = [v328 workflow];
            v280 = [v311 name];
            v303 = [v322 signpost];
            v213 = [v303 name];
            v214 = v213;
            if (v213)
            {
              v215 = v213;
            }

            else
            {
              v215 = @"<entire workflow>";
            }

            v216 = [v326 name];
            v217 = [v125 name];
            v218 = [v125 pid];
            *v362 = 138413570;
            *&v362[4] = v280;
            *&v362[12] = 2112;
            *&v362[14] = v215;
            *&v362[22] = 2112;
            v363 = v216;
            *v364 = 2112;
            *&v364[2] = v291;
            *&v364[10] = 2112;
            *&v364[12] = v217;
            *&v364[20] = 1024;
            *&v364[22] = v218;
            _os_log_fault_impl(&_mh_execute_header, v160, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports dispatch queue %@, but %@ [%d] has no such dispatch queue", v362, 0x3Au);
          }

          if (qword_100127ED0)
          {
            v161 = qword_100127ED0;
          }

          else
          {
            v161 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v161);
        }

        *__error() = v282;
      }
    }

    _Block_object_dispose(&v352, 8);
    goto LABEL_189;
  }

LABEL_191:
}

void sub_10004C0E0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v268 = a1;
  v267 = a2;
  v272 = a3;
  v17 = a4;
  v271 = a5;
  v269 = a6;
  v18 = a9;
  v19 = a10;
  v20 = [v19 threads];
  v257 = a7;
  v21 = [NSNumber numberWithUnsignedLongLong:a7];
  v22 = [v20 objectForKeyedSubscript:v21];
  v23 = [v18 startTime];
  v24 = [v22 firstThreadStateOnOrAfterTime:v23 sampleIndex:0x7FFFFFFFFFFFFFFFLL];

  v270 = v19;
  v25 = [v19 threads];
  v26 = [NSNumber numberWithUnsignedLongLong:a8];
  v27 = [v25 objectForKeyedSubscript:v26];
  v28 = [v18 endTime];
  v29 = [v27 lastThreadStateOnOrBeforeTime:v28 sampleIndex:0x7FFFFFFFFFFFFFFFLL];

  v273 = v24;
  v30 = [v24 dispatchQueue];
  v31 = v29;
  v32 = [v29 dispatchQueue];
  v33 = v32;
  if (!(v30 | v32))
  {
    v42 = v270;
    v43 = v272;
    if (byte_100127EC8 == 1)
    {
      v44 = *__error();
      v45 = sub_10003E080();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v232 = [v272 workflow];
        v157 = [v232 name];
        v222 = v157;
        v229 = [v17 signpost];
        v158 = [v229 name];
        v242 = v17;
        alloca = v158;
        if (v158)
        {
          v159 = v158;
        }

        else
        {
          v159 = @"<entire workflow>";
        }

        v160 = [v271 name];
        v223 = [v18 startTime];
        [v223 debugDescription];
        v266 = v33;
        v161 = v251 = v30;
        v162 = [v18 endTime];
        [v162 debugDescription];
        v163 = v237 = v31;
        *buf = 138413826;
        v275 = v157;
        v276 = 2112;
        v277 = v159;
        v42 = v270;
        v278 = 2112;
        v279 = v160;
        v280 = 2048;
        v281 = v257;
        v282 = 2112;
        v283 = v161;
        v284 = 2048;
        v285 = a8;
        v286 = 2112;
        v287 = v163;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports this dispatch queue, but neither start %llu@%@ nor end %llu@%@ are on a dispatch queue", buf, 0x48u);

        v31 = v237;
        v43 = v272;

        v30 = v251;
        v33 = v266;

        v17 = v242;
      }

      *__error() = v44;
    }

    v46 = 0;
    if (byte_100127EC9 == 1)
    {
      v230 = a8;
      v47 = v269;
      v36 = v17;
      v48 = v273;
      if (dword_100127558 > 3)
      {
        goto LABEL_126;
      }

      v265 = v33;
      v246 = v30;
      v234 = v31;
      v227 = *__error();
      v49 = [v43 workflow];
      v50 = [v49 name];
      v51 = v36;
      v52 = v50;
      v238 = v51;
      v53 = [v51 signpost];
      v54 = [v53 name];
      v55 = v54;
      if (v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = @"<entire workflow>";
      }

      v57 = [v271 name];
      v58 = [v18 startTime];
      v59 = [v58 debugDescription];
      v255 = v18;
      v60 = [v18 endTime];
      v61 = [v60 debugDescription];
      v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, but neither start %llu@%@ nor end %llu@%@ are on a dispatch queue", v52, v56, v57, v257, v59, v230, v61);

      if (v62)
      {
        CStringPtr = CFStringGetCStringPtr(v62, 0x8000100u);
        if (CStringPtr)
        {
          v64 = CStringPtr;
          v65 = 0;
        }

        else
        {
          v64 = malloc_type_calloc(0x400uLL, 1uLL, 0xAF3CA365uLL);
          CFStringGetCString(v62, v64, 1024, 0x8000100u);
          v65 = v64;
        }

        v43 = v272;
        v31 = v234;
        v36 = v238;
        v30 = v246;
        v18 = v255;
        v48 = v273;
        v33 = v265;
        if (qword_100127ED0)
        {
          v127 = qword_100127ED0;
        }

        else
        {
          v127 = __stderrp;
        }

        fprintf(v127, "%s\n", v64);
        if (v65)
        {
          free(v65);
        }

        CFRelease(v62);
        v47 = v269;
      }

      else
      {
        v109 = sub_10003E080();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
        {
          allocb = [v272 workflow];
          v168 = [(__CFAllocator *)allocb name];
          v169 = [v238 signpost];
          v170 = [v169 name];
          v171 = v170;
          if (v170)
          {
            v172 = v170;
          }

          else
          {
            v172 = @"<entire workflow>";
          }

          v173 = [v271 name];
          v174 = [v255 startTime];
          v175 = [v174 debugDescription];
          v176 = [v255 endTime];
          v177 = [v176 debugDescription];
          *buf = 138413826;
          v275 = v168;
          v276 = 2112;
          v277 = v172;
          v278 = 2112;
          v279 = v173;
          v280 = 2048;
          v281 = v257;
          v282 = 2112;
          v283 = v175;
          v284 = 2048;
          v285 = v230;
          v286 = 2112;
          v287 = v177;
          _os_log_fault_impl(&_mh_execute_header, v109, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, but neither start %llu@%@ nor end %llu@%@ are on a dispatch queue", buf, 0x48u);
        }

        if (qword_100127ED0)
        {
          v110 = qword_100127ED0;
        }

        else
        {
          v110 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v110);
        v43 = v272;
        v31 = v234;
        v36 = v238;
        v47 = v269;
        v30 = v246;
        v18 = v255;
        v48 = v273;
        v33 = v265;
      }

      v46 = 0;
      *__error() = v227;
      goto LABEL_125;
    }

    v47 = v269;
LABEL_48:
    v36 = v17;
    v48 = v273;
    goto LABEL_126;
  }

  if (v30 == v32)
  {
    v46 = v32;
    v47 = v269;
    v42 = v270;
    v43 = v272;
    goto LABEL_48;
  }

  v264 = v32;
  v34 = [v273 startTimestamp];
  v35 = [v18 startTime];
  v36 = v17;
  v37 = v30;
  if ([v34 le:v35])
  {
    v38 = [v273 endTimestamp];
    [v18 startTime];
    v40 = v39 = v18;
    v41 = [v38 ge:v40];

    v18 = v39;
  }

  else
  {
    v41 = 0;
  }

  v66 = [v31 startTimestamp];
  v67 = [v18 endTime];
  v256 = v18;
  if ([v66 le:v67])
  {
    v68 = [v31 endTimestamp];
    v69 = v18;
    v70 = v68;
    v71 = [v69 endTime];
    v72 = [v70 ge:v71];

    if ((v41 & v72) == 1)
    {
      v18 = v256;
      v42 = v270;
      v30 = v37;
      v33 = v264;
      v48 = v273;
      if (byte_100127EC8 == 1)
      {
        v73 = *__error();
        v74 = sub_10003E080();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v262 = [v272 workflow];
          v187 = [v262 name];
          v244 = [v36 signpost];
          v188 = [v244 name];
          v189 = v188;
          if (v188)
          {
            v190 = v188;
          }

          else
          {
            v190 = @"<entire workflow>";
          }

          [v271 name];
          v191 = v253 = v30;
          v192 = [v253 debugDescription];
          v193 = [v264 debugDescription];
          *buf = 138413314;
          v275 = v187;
          v276 = 2112;
          v277 = v190;
          v18 = v256;
          v278 = 2112;
          v279 = v191;
          v280 = 2112;
          v281 = v192;
          v282 = 2112;
          v283 = v193;
          _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, so not reporting", buf, 0x34u);

          v48 = v273;
          v33 = v264;

          v30 = v253;
          v42 = v270;
        }

        *__error() = v73;
      }

      v46 = 0;
      v43 = v272;
      if (byte_100127EC9 == 1)
      {
        v47 = v269;
        if (dword_100127558 > 3)
        {
          goto LABEL_126;
        }

        v235 = v31;
        v258 = *__error();
        v75 = [v272 workflow];
        v76 = [v75 name];
        v239 = v36;
        [v36 signpost];
        v78 = v77 = v30;
        v79 = [v78 name];
        v80 = v79;
        if (v79)
        {
          v81 = v79;
        }

        else
        {
          v81 = @"<entire workflow>";
        }

        v82 = [v271 name];
        v247 = v77;
        v83 = [v77 debugDescription];
        v84 = [v33 debugDescription];
        v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, so not reporting", v76, v81, v82, v83, v84);

        if (v85)
        {
          v86 = CFStringGetCStringPtr(v85, 0x8000100u);
          if (!v86)
          {
            v87 = 1183534;
LABEL_117:
            v107 = malloc_type_calloc(0x400uLL, 1uLL, v87);
            CFStringGetCString(v85, v107, 1024, 0x8000100u);
            v108 = v107;
            goto LABEL_118;
          }

          goto LABEL_46;
        }

        v146 = sub_10003E080();
        if (!os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_101;
        }

        v147 = [v272 workflow];
        v148 = [v147 name];
        v149 = [v239 signpost];
        v204 = [v149 name];
        v151 = v204;
        if (v204)
        {
          v205 = v204;
        }

        else
        {
          v205 = @"<entire workflow>";
        }

        v153 = [v271 name];
        v154 = [v247 debugDescription];
        v155 = [v264 debugDescription];
        *buf = 138413314;
        v275 = v148;
        v276 = 2112;
        v277 = v205;
        v278 = 2112;
        v279 = v153;
        v280 = 2112;
        v281 = v154;
        v282 = 2112;
        v283 = v155;
        v156 = "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, so not reporting";
LABEL_163:
        _os_log_fault_impl(&_mh_execute_header, v146, OS_LOG_TYPE_FAULT, v156, buf, 0x34u);

        goto LABEL_101;
      }

LABEL_115:
      v47 = v269;
      goto LABEL_126;
    }

    v18 = v256;
    v42 = v270;
    v43 = v272;
    if (v41)
    {
      goto LABEL_55;
    }

    if (v72)
    {
      v30 = v37;
      v33 = v264;
      v48 = v273;
      if (byte_100127EC8 == 1)
      {
        v128 = *__error();
        v129 = sub_10003E080();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          v263 = [v272 workflow];
          v206 = [v263 name];
          v245 = [v36 signpost];
          v207 = [v245 name];
          v208 = v207;
          if (v207)
          {
            v209 = v207;
          }

          else
          {
            v209 = @"<entire workflow>";
          }

          [v271 name];
          v210 = v254 = v30;
          v211 = [v254 debugDescription];
          v212 = [v264 debugDescription];
          *buf = 138413314;
          v275 = v206;
          v276 = 2112;
          v277 = v209;
          v18 = v256;
          v278 = 2112;
          v279 = v210;
          v280 = 2112;
          v281 = v211;
          v282 = 2112;
          v283 = v212;
          _os_log_debug_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEBUG, "WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and end is at the exact time, so using that", buf, 0x34u);

          v48 = v273;
          v33 = v264;

          v30 = v254;
          v42 = v270;
        }

        *__error() = v128;
        v43 = v272;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v260 = *__error();
        v130 = [v43 workflow];
        v131 = [v130 name];
        v241 = v36;
        [v36 signpost];
        v133 = v132 = v30;
        v134 = [v133 name];
        v135 = v134;
        if (v134)
        {
          v136 = v134;
        }

        else
        {
          v136 = @"<entire workflow>";
        }

        v137 = [v271 name];
        v250 = v132;
        v138 = [v132 debugDescription];
        v139 = [v33 debugDescription];
        v140 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and end is at the exact time, so using that", v131, v136, v137, v138, v139);

        if (v140)
        {
          v141 = CFStringGetCStringPtr(v140, 0x8000100u);
          if (v141)
          {
            v142 = v141;
            v143 = 0;
          }

          else
          {
            v142 = malloc_type_calloc(0x400uLL, 1uLL, 0xFA22BA8FuLL);
            CFStringGetCString(v140, v142, 1024, 0x8000100u);
            v143 = v142;
          }

          v43 = v272;
          v36 = v241;
          v30 = v250;
          v18 = v256;
          v48 = v273;
          v33 = v264;
          if (qword_100127ED0)
          {
            v194 = qword_100127ED0;
          }

          else
          {
            v194 = __stderrp;
          }

          fprintf(v194, "%s\n", v142);
          if (v143)
          {
            free(v143);
          }

          CFRelease(v140);
        }

        else
        {
          v178 = sub_10003E080();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_FAULT))
          {
            v213 = [v272 workflow];
            v214 = [v213 name];
            v215 = [v241 signpost];
            v216 = [v215 name];
            v217 = v216;
            if (v216)
            {
              v218 = v216;
            }

            else
            {
              v218 = @"<entire workflow>";
            }

            v219 = [v271 name];
            v220 = [v250 debugDescription];
            v221 = [v264 debugDescription];
            *buf = 138413314;
            v275 = v214;
            v276 = 2112;
            v277 = v218;
            v278 = 2112;
            v279 = v219;
            v280 = 2112;
            v281 = v220;
            v282 = 2112;
            v283 = v221;
            _os_log_fault_impl(&_mh_execute_header, v178, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and end is at the exact time, so using that", buf, 0x34u);
          }

          if (qword_100127ED0)
          {
            v179 = qword_100127ED0;
          }

          else
          {
            v179 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v179);
          v43 = v272;
          v36 = v241;
          v30 = v250;
          v18 = v256;
          v48 = v273;
          v33 = v264;
        }

        *__error() = v260;
        v42 = v270;
      }

      v166 = v33;
      goto LABEL_114;
    }
  }

  else
  {

    v42 = v270;
    v43 = v272;
    if (v41)
    {
LABEL_55:
      v30 = v37;
      v33 = v264;
      v48 = v273;
      if (byte_100127EC8 == 1)
      {
        v111 = *__error();
        v112 = sub_10003E080();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          v261 = [v272 workflow];
          v180 = [v261 name];
          v243 = v180;
          v252 = [v36 signpost];
          v181 = [v252 name];
          v233 = v181;
          if (v181)
          {
            v182 = v181;
          }

          else
          {
            v182 = @"<entire workflow>";
          }

          v183 = [v271 name];
          v184 = [v30 debugDescription];
          v185 = [v264 debugDescription];
          *buf = 138413314;
          v275 = v180;
          v276 = 2112;
          v277 = v182;
          v18 = v256;
          v278 = 2112;
          v279 = v183;
          v186 = v183;
          v280 = 2112;
          v281 = v184;
          v282 = 2112;
          v283 = v185;
          _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, "WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and start is at the exact time, so using that", buf, 0x34u);

          v48 = v273;
          v33 = v264;

          v42 = v270;
        }

        *__error() = v111;
        v43 = v272;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v259 = *__error();
        v113 = [v43 workflow];
        v114 = [v113 name];
        v240 = v36;
        [v36 signpost];
        v116 = v115 = v30;
        v117 = [v116 name];
        v118 = v117;
        if (v117)
        {
          v119 = v117;
        }

        else
        {
          v119 = @"<entire workflow>";
        }

        v120 = [v271 name];
        v249 = v115;
        v121 = [v115 debugDescription];
        v122 = [v33 debugDescription];
        v123 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and start is at the exact time, so using that", v114, v119, v120, v121, v122);

        if (v123)
        {
          v124 = CFStringGetCStringPtr(v123, 0x8000100u);
          if (v124)
          {
            v125 = v124;
            v126 = 0;
          }

          else
          {
            v125 = malloc_type_calloc(0x400uLL, 1uLL, 0xD206951AuLL);
            CFStringGetCString(v123, v125, 1024, 0x8000100u);
            v126 = v125;
          }

          v43 = v272;
          v36 = v240;
          v30 = v249;
          v18 = v256;
          v48 = v273;
          v33 = v264;
          if (qword_100127ED0)
          {
            v165 = qword_100127ED0;
          }

          else
          {
            v165 = __stderrp;
          }

          fprintf(v165, "%s\n", v125);
          if (v126)
          {
            free(v126);
          }

          CFRelease(v123);
        }

        else
        {
          v144 = sub_10003E080();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
          {
            v195 = [v272 workflow];
            v196 = [v195 name];
            v197 = [v240 signpost];
            v198 = [v197 name];
            v199 = v198;
            if (v198)
            {
              v200 = v198;
            }

            else
            {
              v200 = @"<entire workflow>";
            }

            v201 = [v271 name];
            v202 = [v249 debugDescription];
            v203 = [v264 debugDescription];
            *buf = 138413314;
            v275 = v196;
            v276 = 2112;
            v277 = v200;
            v278 = 2112;
            v279 = v201;
            v280 = 2112;
            v281 = v202;
            v282 = 2112;
            v283 = v203;
            _os_log_fault_impl(&_mh_execute_header, v144, OS_LOG_TYPE_FAULT, "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, signpost starts on %@ and ends on %@, and start is at the exact time, so using that", buf, 0x34u);
          }

          if (qword_100127ED0)
          {
            v145 = qword_100127ED0;
          }

          else
          {
            v145 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v145);
          v43 = v272;
          v36 = v240;
          v30 = v249;
          v18 = v256;
          v48 = v273;
          v33 = v264;
        }

        *__error() = v259;
        v42 = v270;
      }

      v166 = v30;
LABEL_114:
      v46 = v166;
      goto LABEL_115;
    }
  }

  v30 = v37;
  v33 = v264;
  v48 = v273;
  if (byte_100127EC8 == 1)
  {
    v88 = *__error();
    v89 = sub_10003E080();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v236 = [v43 workflow];
      v90 = [v236 name];
      alloc = v90;
      v231 = [v36 signpost];
      v91 = [v231 name];
      v228 = v91;
      v92 = v43;
      if (v91)
      {
        v93 = v91;
      }

      else
      {
        v93 = @"<entire workflow>";
      }

      [v271 name];
      v94 = v248 = v30;
      v95 = [v248 debugDescription];
      v96 = [v264 debugDescription];
      *buf = 138413314;
      v275 = v90;
      v276 = 2112;
      v277 = v93;
      v43 = v92;
      v18 = v256;
      v278 = 2112;
      v279 = v94;
      v280 = 2112;
      v281 = v95;
      v282 = 2112;
      v283 = v96;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, neither at the exact right time, so not reporting", buf, 0x34u);

      v48 = v273;
      v33 = v264;

      v30 = v248;
      v42 = v270;
    }

    *__error() = v88;
  }

  v46 = 0;
  if (byte_100127EC9 != 1)
  {
    goto LABEL_115;
  }

  v47 = v269;
  if (dword_100127558 > 2)
  {
    goto LABEL_126;
  }

  v235 = v31;
  v258 = *__error();
  v97 = [v43 workflow];
  v98 = [v97 name];
  v239 = v36;
  [v36 signpost];
  v100 = v99 = v30;
  v101 = [v100 name];
  v102 = v101;
  if (v101)
  {
    v103 = v101;
  }

  else
  {
    v103 = @"<entire workflow>";
  }

  v104 = [v271 name];
  v247 = v99;
  v105 = [v99 debugDescription];
  v106 = [v33 debugDescription];
  v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, neither at the exact right time, so not reporting", v98, v103, v104, v105, v106);

  if (v85)
  {
    v86 = CFStringGetCStringPtr(v85, 0x8000100u);
    if (!v86)
    {
      v87 = 1235423414;
      goto LABEL_117;
    }

LABEL_46:
    v107 = v86;
    v108 = 0;
LABEL_118:
    v43 = v272;
    v31 = v235;
    v36 = v239;
    v30 = v247;
    v18 = v256;
    v48 = v273;
    v33 = v264;
    if (qword_100127ED0)
    {
      v167 = qword_100127ED0;
    }

    else
    {
      v167 = __stderrp;
    }

    fprintf(v167, "%s\n", v107);
    if (v108)
    {
      free(v108);
    }

    CFRelease(v85);
    goto LABEL_124;
  }

  v146 = sub_10003E080();
  if (os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
  {
    v147 = [v272 workflow];
    v148 = [v147 name];
    v149 = [v239 signpost];
    v150 = [v149 name];
    v151 = v150;
    if (v150)
    {
      v152 = v150;
    }

    else
    {
      v152 = @"<entire workflow>";
    }

    v153 = [v271 name];
    v154 = [v247 debugDescription];
    v155 = [v264 debugDescription];
    *buf = 138413314;
    v275 = v148;
    v276 = 2112;
    v277 = v152;
    v278 = 2112;
    v279 = v153;
    v280 = 2112;
    v281 = v154;
    v282 = 2112;
    v283 = v155;
    v156 = "Unable to format: WR: %@: %@: diagnostic %@ reports this dispatch queue, but signpost starts on %@ and ends on %@, neither at the exact right time, so not reporting";
    goto LABEL_163;
  }

LABEL_101:

  if (qword_100127ED0)
  {
    v164 = qword_100127ED0;
  }

  else
  {
    v164 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v164);
  v43 = v272;
  v31 = v235;
  v36 = v239;
  v30 = v247;
  v18 = v256;
  v48 = v273;
  v33 = v264;
LABEL_124:
  v46 = 0;
  *__error() = v258;
  v47 = v269;
LABEL_125:
  v42 = v270;
LABEL_126:

  if (v46)
  {
    sub_10004E210(v268, v267, v47, v18, v42, v46);
  }
}

void sub_10004DB40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100045D80;
  v50 = sub_100045D90;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100045D80;
  v44 = sub_100045D90;
  v45 = 0;
  v7 = [*(a1 + 32) startTime];
  v8 = [*(a1 + 32) endTime];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10004DF74;
  v29 = &unk_100114F30;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v36 = *(a1 + 88);
  v37 = &v46;
  v38 = &v40;
  v39 = v52;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v30 = v14;
  v31 = v13;
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  v15 = v6;
  v34 = v15;
  v35 = *(a1 + 80);
  [v15 enumerateThreadStatesBetweenStartTime:v7 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:v8 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:0 block:&v26];

  v16 = v47[5];
  if (v16 && v41[5])
  {
    v17 = [v16 startTimestamp];
    v18 = [*(a1 + 32) startTime];
    if ([v17 gt:v18])
    {
      [v47[5] startTimestamp];
    }

    else
    {
      [*(a1 + 32) startTime];
    }
    v19 = ;

    v20 = [v47[5] endTimestamp];
    v21 = [*(a1 + 32) endTime];
    if ([v20 lt:v21])
    {
      [v47[5] endTimestamp];
    }

    else
    {
      [*(a1 + 32) endTime];
    }
    v22 = ;

    v23 = [*(a1 + 32) startTime];
    if (v19 == v23 && ([*(a1 + 32) endTime], v11 = objc_claimAutoreleasedReturnValue(), v22 == v11))
    {
      v24 = *(a1 + 32);
    }

    else
    {
      v24 = [SATimeRange timeRangeStart:v19 end:v22];
      if (v19 != v23)
      {
LABEL_15:

        v25 = [[SPWRReport alloc] initWithReportReason:*(a1 + 56) reportedSignpostTracker:*(a1 + 64) task:*(a1 + 72) timeRange:v24 thread:v15 dispatchQueue:0];
        [*(a1 + 80) addObject:v25];

        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

LABEL_16:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(v52, 8);
}

void sub_10004DF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10004DF74(uint64_t a1, void *a2)
{
  v23 = a2;
  v5 = [v23 name];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_30;
    }

    if ([v7 numberOfMatchesInString:v5 options:4 range:{0, objc_msgSend(v5, "length")}])
    {
LABEL_6:
      *(*(*(a1 + 96) + 8) + 24) = 1;
      v8 = *(*(a1 + 104) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (!v10)
      {
        objc_storeStrong(v9, a2);
      }

      v11 = *(*(a1 + 112) + 8);
      v12 = v23;
      v13 = *(v11 + 40);
      *(v11 + 40) = v12;
      goto LABEL_24;
    }

    if (!*(a1 + 32))
    {
LABEL_30:
      if ([v6 isEqualToString:*(a1 + 40)])
      {
        goto LABEL_6;
      }
    }
  }

  *(*(*(a1 + 120) + 8) + 24) = 1;
  v14 = *(*(*(a1 + 104) + 8) + 40);
  if (v14 && *(*(*(a1 + 112) + 8) + 40))
  {
    v15 = [v14 startTimestamp];
    v16 = [*(a1 + 48) startTime];
    if ([v15 gt:v16])
    {
      [*(*(*(a1 + 104) + 8) + 40) startTimestamp];
    }

    else
    {
      [*(a1 + 48) startTime];
    }
    v13 = ;

    v17 = [*(*(*(a1 + 104) + 8) + 40) endTimestamp];
    v18 = [*(a1 + 48) endTime];
    if ([v17 lt:v18])
    {
      [*(*(*(a1 + 104) + 8) + 40) endTimestamp];
    }

    else
    {
      [*(a1 + 48) endTime];
    }
    v19 = ;

    v20 = [*(a1 + 48) startTime];
    if (v13 == v20 && ([*(a1 + 48) endTime], v2 = objc_claimAutoreleasedReturnValue(), v19 == v2))
    {
      v21 = *(a1 + 48);
    }

    else
    {
      v21 = [SATimeRange timeRangeStart:v13 end:v19];
      if (v13 != v20)
      {
LABEL_23:

        v22 = [[SPWRReport alloc] initWithReportReason:*(a1 + 56) reportedSignpostTracker:*(a1 + 64) task:*(a1 + 72) timeRange:v21 thread:*(a1 + 80) dispatchQueue:0];
        [*(a1 + 88) addObject:v22];

LABEL_24:
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
}

void sub_10004E210(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = [[SPWRReport alloc] initWithReportReason:v15 reportedSignpostTracker:v14 task:v12 timeRange:v13 thread:0 dispatchQueue:v11];

  [v16 addObject:v17];
}

void sub_10004E2F8(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 dispatchQueueLabel];
  v5 = v4;
  if (v4)
  {
    v6 = a1[4];
    if (v6)
    {
      if ([v6 numberOfMatchesInString:v4 options:4 range:{0, objc_msgSend(v4, "length")}])
      {
LABEL_6:
        v7 = *(*(a1[6] + 8) + 40);
        if (v7)
        {
          [v7 addObject:v11];
        }

        else
        {
          v8 = [[NSMutableArray alloc] initWithObjects:{v11, 0}];
          v9 = *(a1[6] + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;
        }

        goto LABEL_9;
      }

      if (a1[4])
      {
        goto LABEL_9;
      }
    }

    if (![v5 isEqualToString:a1[5]])
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_9:
}

void sub_10004E3E4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_10004E45C(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v14;
    [v4 doubleValue];
    v6 = v5 < 0.0;
    if (v5 == 0.0)
    {
      v7 = +[NSDecimalNumber zero];
    }

    else
    {
      v8 = v5;
      v9 = -v5;
      if (!v6)
      {
        v9 = v8;
      }

      v10 = vcvtpd_s64_f64(log10(v9));
      v11 = llround(v8 * __exp10((3 - v10)));
      if (v11 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = -v11;
      }

      v7 = [NSDecimalNumber decimalNumberWithMantissa:v12 exponent:(v10 - 3) isNegative:v11 >> 63];
    }

    v13 = v7;
    if (v7 != v4)
    {
      v3[2](v3, v7);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      sub_1000484AC(v14);
    }
  }
}

void sub_10004E5FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 removeObject:v4];
  [*(a1 + 32) addObject:v5];
}

uint64_t sub_10004E684(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_10004E6AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_10004E6D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10004E6F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_10004E708(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x1Cu);
}

void sub_10004E728(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_10004E748(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x16u);
}

uint64_t sub_10004E764(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

void sub_10004E7A4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10004E7CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_10004E7EC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

id sub_10004E80C()
{

  return [v0 pid];
}

void sub_10004E824(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8, double a9, double a10, void *a11)
{
  v18 = HIDWORD(a1);
  v19 = a11;
  memset(buffer, 0, sizeof(buffer));
  proc_name(a1, buffer, 0x80u);
  if ((a3 & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v20 = *__error();
      v21 = sub_10003E080();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136449282;
        *&buf[4] = sub_10003E020(a3);
        *&buf[12] = 1024;
        *&buf[14] = a3;
        *&buf[18] = 2082;
        *&buf[20] = buffer;
        *&buf[28] = 1024;
        *&buf[30] = a1;
        *&buf[34] = 1024;
        *&buf[36] = v18;
        *&buf[40] = 2048;
        *&buf[42] = a4;
        *&buf[50] = 2048;
        *&buf[52] = a9;
        *&buf[60] = 2048;
        *&buf[62] = a10;
        *&buf[70] = 2048;
        *&buf[72] = a5;
        *&buf[80] = 2080;
        *&buf[82] = a6;
        *&buf[90] = 2080;
        *&buf[92] = a7;
        v324 = 2080;
        v325 = a8;
        v326 = 1024;
        v327 = v19 != 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%{public}s [%d]: generate spindump: requested by %{public}s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", buf, 0x74u);
      }

      *__error() = v20;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_39;
    }

    v23 = *__error();
    v24 = sub_10003E020(a3);
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", v24, a3, buffer, a1, v18, a4, *&a9, *&a10, a5, a6, a7, a8, v19 != 0);
    if (!v25)
    {
      v26 = sub_10003E080();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = sub_10003E020(a3);
        *buf = 136318210;
        *&buf[4] = v27;
        *&buf[12] = 1024;
        *&buf[14] = a3;
        *&buf[18] = 2080;
        *&buf[20] = buffer;
        *&buf[28] = 1024;
        *&buf[30] = a1;
        *&buf[34] = 1024;
        *&buf[36] = v18;
        *&buf[40] = 2048;
        *&buf[42] = a4;
        *&buf[50] = 2048;
        *&buf[52] = a9;
        *&buf[60] = 2048;
        *&buf[62] = a10;
        *&buf[70] = 2048;
        *&buf[72] = a5;
        *&buf[80] = 2080;
        *&buf[82] = a6;
        *&buf[90] = 2080;
        *&buf[92] = a7;
        v324 = 2080;
        v325 = a8;
        v326 = 1024;
        v327 = v19 != 0;
        v28 = "Unable to format: %s [%d]: generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d";
        v29 = v26;
        v30 = 116;
LABEL_257:
        _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, v28, buf, v30);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (byte_100127EC8)
  {
    v31 = *__error();
    v32 = sub_10003E080();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136448770;
      *&buf[4] = buffer;
      *&buf[12] = 1024;
      *&buf[14] = a1;
      *&buf[18] = 1024;
      *&buf[20] = v18;
      *&buf[24] = 2048;
      *&buf[26] = a4;
      *&buf[34] = 2048;
      *&buf[36] = a9;
      *&buf[44] = 2048;
      *&buf[46] = a10;
      *&buf[54] = 2048;
      *&buf[56] = a5;
      *&buf[64] = 2080;
      *&buf[66] = a6;
      *&buf[74] = 2080;
      *&buf[76] = a7;
      *&buf[84] = 2080;
      *&buf[86] = a8;
      *&buf[94] = 1024;
      *&buf[96] = v19 != 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "generate spindump: requested by %{public}s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", buf, 0x64u);
    }

    *__error() = v31;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v23 = *__error();
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d", buffer, a1, v18, a4, *&a9, *&a10, a5, a6, a7, a8, v19 != 0);
    if (!v25)
    {
      v26 = sub_10003E080();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136317698;
        *&buf[4] = buffer;
        *&buf[12] = 1024;
        *&buf[14] = a1;
        *&buf[18] = 1024;
        *&buf[20] = v18;
        *&buf[24] = 2048;
        *&buf[26] = a4;
        *&buf[34] = 2048;
        *&buf[36] = a9;
        *&buf[44] = 2048;
        *&buf[46] = a10;
        *&buf[54] = 2048;
        *&buf[56] = a5;
        *&buf[64] = 2080;
        *&buf[66] = a6;
        *&buf[74] = 2080;
        *&buf[76] = a7;
        *&buf[84] = 2080;
        *&buf[86] = a8;
        *&buf[94] = 1024;
        *&buf[96] = v19 != 0;
        v28 = "Unable to format: generate spindump: requested by %s [%d] uid %d, thread:%#llx duration:%.3f interval:%.6f flags:%#llx reason:%s signature:%s filename:%s callback:%d";
        v29 = v26;
        v30 = 100;
        goto LABEL_257;
      }

LABEL_34:

      if (qword_100127ED0)
      {
        v39 = qword_100127ED0;
      }

      else
      {
        v39 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v39);
LABEL_38:
      *__error() = v23;
      goto LABEL_39;
    }

LABEL_24:
    v34 = v25;
    CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
    if (CStringPtr)
    {
      v36 = CStringPtr;
      v37 = 0;
    }

    else
    {
      v36 = malloc_type_calloc(0x400uLL, 1uLL, 0x536CCE5uLL);
      CFStringGetCString(v34, v36, 1024, 0x8000100u);
      v37 = v36;
    }

    if (qword_100127ED0)
    {
      v38 = qword_100127ED0;
    }

    else
    {
      v38 = __stderrp;
    }

    fprintf(v38, "%s\n", v36);
    if (v37)
    {
      free(v37);
    }

    CFRelease(v34);
    goto LABEL_38;
  }

LABEL_39:
  if (a9 == 0.0)
  {
    a9 = 10.0;
  }

  *v321 = 0u;
  v322 = 0u;
  if (a10 == 0.0)
  {
    v40 = 0.01;
  }

  else
  {
    v40 = a10;
  }

  memset(&v318, 0, sizeof(v318));
  v317 = time(0);
  localtime_r(&v317, &v318);
  strftime(v321, 0x20uLL, "%Y-%m-%d-%T", &v318);
  v41 = malloc_type_calloc(1uLL, 0x400uLL, 0x74332153uLL);
  v42 = v41;
  if (!a8 || !*a8)
  {
    a8 = buffer;
  }

  if (snprintf(v41, 0x400uLL, "/var/mobile/Library/Logs/CrashReporter/%s.%s.spindump.txt", a8, v321) < 0x400)
  {
    v43 = malloc_type_calloc(1uLL, 0x400uLL, 0x15087752uLL);
    if (dirname_r(v42, v43))
    {
      v44 = malloc_type_calloc(1uLL, 0x400uLL, 0x55EF5E1AuLL);
      if (basename_r(v42, v44))
      {
        v45 = realpath_DARWIN_EXTSN(v43, 0);
        if (v45)
        {
          v46 = v45;
          v301 = v19;
          v47 = realpath_DARWIN_EXTSN("/var/mobile/Library/Logs/CrashReporter", 0);
          if (v47)
          {
            v52 = v47;
            v53 = *v47;
            if (v53 == 47)
            {
              v54 = -v47[1];
            }

            else
            {
              v54 = 47 - v53;
            }

            if (v54)
            {
              v303 = v42;
              if ((a3 & 0x80000000) != 0)
              {
                if (byte_100127EC8)
                {
                  v300 = a5;
                  v75 = v44;
                  v76 = *__error();
                  v77 = sub_10003E080();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315906;
                    *&buf[4] = v43;
                    *&buf[12] = 2080;
                    *&buf[14] = v75;
                    *&buf[22] = 2080;
                    *&buf[24] = v46;
                    *&buf[32] = 2080;
                    *&buf[34] = v52;
                    _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x2Au);
                  }

                  *__error() = v76;
                  v44 = v75;
                  a5 = v300;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                {
                  v78 = *__error();
                  v299 = v44;
                  v79 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"dir %s, fullfilename %s, realDir %s, expectedRealDir %s", v43, v44, v46, v52);
                  if (!v79)
                  {
                    v154 = sub_10003E080();
                    if (os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136315906;
                      *&buf[4] = v43;
                      *&buf[12] = 2080;
                      *&buf[14] = v299;
                      *&buf[22] = 2080;
                      *&buf[24] = v46;
                      *&buf[32] = 2080;
                      *&buf[34] = v52;
                      _os_log_fault_impl(&_mh_execute_header, v154, OS_LOG_TYPE_FAULT, "Unable to format: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x2Au);
                    }

                    if (qword_100127ED0)
                    {
                      v155 = qword_100127ED0;
                    }

                    else
                    {
                      v155 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v155);
                    goto LABEL_119;
                  }

                  v74 = v79;
                  v297 = v78;
                  goto LABEL_89;
                }
              }

              else
              {
                if (byte_100127EC8)
                {
                  v298 = a5;
                  v69 = v44;
                  v70 = *__error();
                  v71 = sub_10003E080();
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                  {
                    v171 = sub_10003E020(a3);
                    *buf = 136447490;
                    *&buf[4] = v171;
                    *&buf[12] = 1024;
                    *&buf[14] = a3;
                    *&buf[18] = 2080;
                    *&buf[20] = v43;
                    *&buf[28] = 2080;
                    *&buf[30] = v69;
                    *&buf[38] = 2080;
                    *&buf[40] = v46;
                    *&buf[48] = 2080;
                    *&buf[50] = v52;
                    _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "%{public}s [%d]: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x3Au);
                  }

                  *__error() = v70;
                  v44 = v69;
                  a5 = v298;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                {
                  v297 = *__error();
                  v72 = sub_10003E020(a3);
                  v299 = v44;
                  v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", v72, a3, v43, v44, v46, v52);
                  if (!v73)
                  {
                    v92 = sub_10003E080();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
                    {
                      v178 = sub_10003E020(a3);
                      *buf = 136316418;
                      *&buf[4] = v178;
                      *&buf[12] = 1024;
                      *&buf[14] = a3;
                      *&buf[18] = 2080;
                      *&buf[20] = v43;
                      *&buf[28] = 2080;
                      *&buf[30] = v299;
                      *&buf[38] = 2080;
                      *&buf[40] = v46;
                      *&buf[48] = 2080;
                      *&buf[50] = v52;
                      _os_log_fault_impl(&_mh_execute_header, v92, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: dir %s, fullfilename %s, realDir %s, expectedRealDir %s", buf, 0x3Au);
                    }

                    if (qword_100127ED0)
                    {
                      v93 = qword_100127ED0;
                    }

                    else
                    {
                      v93 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
                    goto LABEL_118;
                  }

                  v74 = v73;
LABEL_89:
                  v80 = CFStringGetCStringPtr(v74, 0x8000100u);
                  if (v80)
                  {
                    v81 = v80;
                    v82 = 0;
                  }

                  else
                  {
                    v81 = malloc_type_calloc(0x400uLL, 1uLL, 0xA8E24A99uLL);
                    CFStringGetCString(v74, v81, 1024, 0x8000100u);
                    v82 = v81;
                  }

                  if (qword_100127ED0)
                  {
                    v94 = qword_100127ED0;
                  }

                  else
                  {
                    v94 = __stderrp;
                  }

                  fprintf(v94, "%s\n", v81);
                  if (v82)
                  {
                    free(v82);
                  }

                  CFRelease(v74);
                  v42 = v303;
LABEL_118:
                  v78 = v297;
LABEL_119:
                  *__error() = v78;
                  v44 = v299;
                }
              }

              v95 = strcmp(v52, v46);
              free(v43);
              free(v52);
              if (!v95)
              {
                v96 = snprintf(v42, 0x400uLL, "%s/%s", v46, v44);
                free(v44);
                free(v46);
                if (v96 < 0x400)
                {
                  v316 = 0;
                  if (a6)
                  {
                    asprintf(&v316, "Requested by %s [%d] - %s");
                  }

                  else
                  {
                    asprintf(&v316, "Requested by %s [%d]");
                  }

                  if ((a5 & 0x80) == 0)
                  {
                    SAMachAbsTimeSecondsGetCurrent();
                    v98 = v97;
                    if ((a5 & 0x20) != 0)
                    {
                      v99 = 2;
                    }

                    else
                    {
                      v99 = 3;
                    }

                    if ((a5 & 0x40) != 0)
                    {
                      v100 = 384;
                    }

                    else
                    {
                      v100 = 385;
                    }

                    if (a7)
                    {
                      v101 = strdup(a7);
                    }

                    else
                    {
                      v101 = 0;
                    }

                    v120 = a9 + v98;
                    if (v301)
                    {
                      v121 = qos_class_self();
                    }

                    else
                    {
                      v121 = 9;
                    }

                    v135 = dispatch_get_global_queue(v121, 0);
                    v307[0] = _NSConcreteStackBlock;
                    v307[1] = 3221225472;
                    v307[2] = sub_1000516E8;
                    v307[3] = &unk_100115020;
                    v309 = a3;
                    v308[1] = v316;
                    v308[2] = v101;
                    v308[3] = a5;
                    v308[4] = v303;
                    v19 = v301;
                    v136 = v301;
                    v308[0] = v136;
                    v310 = a1;
                    v311 = a2;
                    v137 = sub_10008E8AC(a3, (v40 * 1000000.0), 0, v99, 0, v100, v135, v307, v120);

                    if (v137)
                    {
LABEL_274:

                      v117 = v308;
LABEL_275:

                      goto LABEL_276;
                    }

                    if ((a3 & 0x80000000) != 0)
                    {
                      v140 = v303;
                      if (byte_100127EC8)
                      {
                        v156 = *__error();
                        v157 = sub_10003E080();
                        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000A75EC();
                        }

                        *__error() = v156;
                      }

                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_268;
                      }

                      v141 = *__error();
                      v158 = *__error();
                      v159 = __error();
                      v160 = strerror(*v159);
                      v161 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: unable to sample process: %d (%s)", v158, v160);
                      if (!v161)
                      {
                        v174 = sub_10003E080();
                        if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000A767C();
                        }

                        if (qword_100127ED0)
                        {
                          v175 = qword_100127ED0;
                        }

                        else
                        {
                          v175 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v175);
                        goto LABEL_267;
                      }

                      v162 = v161;
                      v163 = CFStringGetCStringPtr(v161, 0x8000100u);
                      if (v163)
                      {
                        v164 = v163;
                        v165 = 0;
                      }

                      else
                      {
                        v164 = malloc_type_calloc(0x400uLL, 1uLL, 0xF1AA2B40uLL);
                        CFStringGetCString(v162, v164, 1024, 0x8000100u);
                        v165 = v164;
                      }

                      if (qword_100127ED0)
                      {
                        v176 = qword_100127ED0;
                      }

                      else
                      {
                        v176 = __stderrp;
                      }

                      fprintf(v176, "%s\n", v164);
                      if (v165)
                      {
                        free(v165);
                      }

                      v173 = v162;
                    }

                    else
                    {
                      if (byte_100127EC8)
                      {
                        v138 = *__error();
                        v139 = sub_10003E080();
                        if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000A770C();
                        }

                        *__error() = v138;
                      }

                      v140 = v303;
                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_268;
                      }

                      v141 = *__error();
                      v142 = sub_10003E020(a3);
                      v143 = *__error();
                      v144 = __error();
                      v145 = strerror(*v144);
                      v146 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: unable to sample process: %d (%s)", v142, a3, v143, v145);
                      if (!v146)
                      {
                        v169 = sub_10003E080();
                        if (os_log_type_enabled(v169, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000A77AC();
                        }

                        if (qword_100127ED0)
                        {
                          v170 = qword_100127ED0;
                        }

                        else
                        {
                          v170 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v170);
                        v19 = v301;
                        goto LABEL_266;
                      }

                      v147 = v146;
                      v148 = CFStringGetCStringPtr(v146, 0x8000100u);
                      if (v148)
                      {
                        v149 = v148;
                        v150 = 0;
                      }

                      else
                      {
                        v149 = malloc_type_calloc(0x400uLL, 1uLL, 0xF1AA2B40uLL);
                        CFStringGetCString(v147, v149, 1024, 0x8000100u);
                        v150 = v149;
                      }

                      v19 = v301;
                      if (qword_100127ED0)
                      {
                        v172 = qword_100127ED0;
                      }

                      else
                      {
                        v172 = __stderrp;
                      }

                      fprintf(v172, "%s\n", v149);
                      if (v150)
                      {
                        free(v150);
                      }

                      v173 = v147;
                    }

                    CFRelease(v173);
LABEL_266:
                    v140 = v303;
LABEL_267:
                    *__error() = v141;
LABEL_268:
                    if (v19)
                    {
                      v177 = __error();
                      (*(v136 + 2))(v136, *v177, 0);
                    }

                    free(v140);
                    if (v316)
                    {
                      free(v316);
                    }

                    if (v101)
                    {
                      free(v101);
                    }

                    goto LABEL_274;
                  }

                  v102 = v316;
                  v312[0] = _NSConcreteStackBlock;
                  v312[1] = 3221225472;
                  v313 = sub_100051670;
                  v314 = &unk_100114FF8;
                  v315[1] = v303;
                  v315[2] = v316;
                  v315[0] = v301;
                  v305 = v312;
                  v103 = 2;
                  v104 = malloc_type_calloc(2uLL, 8uLL, 0x10040436913F5uLL);
                  v105 = v104;
                  v320 = 0;
                  *v104 = "/usr/sbin/spindump";
                  v104[1] = "-noIPC";
                  if ((a3 & 0x80000000) != 0)
                  {
                    v106 = 0;
                    if (!a4)
                    {
LABEL_137:
                      v108 = v103 + 2;
                      v109 = malloc_type_realloc(v105, 8 * (v103 + 2), 0x10040436913F5uLL);
                      v110 = v109;
                      v111 = &v109[8 * v103];
                      if (round(a9) <= 0.0)
                      {
                        v112 = 1.0;
                      }

                      else
                      {
                        v112 = a9;
                      }

                      asprintf(&v109[8 * v103], "%.0f", v112);
                      v113 = v40 * 1000000.0;
                      if (round(v40 * 1000000.0) <= 0.0)
                      {
                        v113 = 1.0;
                      }

                      asprintf(v111 + 1, "%.0fu", v113);
                      LOBYTE(v320) = (3 << v103) | v106;
                      if ((a5 & 1) == 0)
                      {
                        v114 = v103 + 3;
                        v110 = malloc_type_realloc(v110, 8 * v114, 0x10040436913F5uLL);
                        *&v110[8 * v108] = "-timeline";
                        v108 = v114;
                      }

                      v19 = v301;
                      if ((a5 & 2) != 0)
                      {
                        v110 = malloc_type_realloc(v110, 8 * (v108 + 1), 0x10040436913F5uLL);
                        *&v110[8 * v108++] = "-noText";
                        if ((a5 & 4) == 0)
                        {
LABEL_146:
                          if ((a5 & 8) == 0)
                          {
                            goto LABEL_147;
                          }

                          goto LABEL_157;
                        }
                      }

                      else if ((a5 & 4) == 0)
                      {
                        goto LABEL_146;
                      }

                      v110 = malloc_type_realloc(v110, 8 * (v108 + 1), 0x10040436913F5uLL);
                      *&v110[8 * v108++] = "-noBinary";
                      if ((a5 & 8) == 0)
                      {
LABEL_147:
                        if ((a5 & 0x20) == 0)
                        {
                          goto LABEL_148;
                        }

                        goto LABEL_158;
                      }

LABEL_157:
                      v110 = malloc_type_realloc(v110, 8 * (v108 + 1), 0x10040436913F5uLL);
                      *&v110[8 * v108++] = "-noSymbolicate";
                      if ((a5 & 0x20) == 0)
                      {
LABEL_148:
                        if ((a5 & 0x40) == 0)
                        {
                          goto LABEL_149;
                        }

                        goto LABEL_159;
                      }

LABEL_158:
                      v110 = malloc_type_realloc(v110, 8 * (v108 + 1), 0x10040436913F5uLL);
                      *&v110[8 * v108++] = "-onlyTarget";
                      if ((a5 & 0x40) == 0)
                      {
LABEL_149:
                        if (!v102)
                        {
LABEL_151:
                          if (a7)
                          {
                            v110 = malloc_type_realloc(v110, 8 * (v108 + 2), 0x10040436913F5uLL);
                            v116 = &v110[8 * v108];
                            *v116 = "-signature";
                            *(v116 + 1) = a7;
                            v108 += 2;
                          }

                          v117 = v315;
                          if (v303)
                          {
                            v118 = v108 + 2;
                            v110 = malloc_type_realloc(v110, 8 * v118, 0x10040436913F5uLL);
                            v119 = &v110[8 * v108];
                            *v119 = "-o";
                            *(v119 + 1) = v303;
                            v108 += 2;
                          }

                          else
                          {
                            v118 = v108;
                          }

                          v122 = malloc_type_realloc(v110, 8 * (v108 + 1), 0x10040436913F5uLL);
                          v122[v118] = 0;
                          v123 = _NSGetEnviron();
                          v124 = 1;
                          do
                          {
                            v125 = v124++ - 1;
                          }

                          while (*(*v123 + v125));
                          v126 = malloc_type_malloc(8 * v124, 0x10040436913F5uLL);
                          memmove(v126, *v123, 8 * v125);
                          *(v126 + v125) = "XPC_NULL_BOOTSTRAP=1";
                          *(v126 + v124 - 1) = 0;
                          v319 = 0;
                          v127 = SASpawnPlatformBinaryWithSigningIdentifier();
                          free(v126);
                          if ((v108 & 0x80000000) == 0)
                          {
                            v128 = 0;
                            do
                            {
                              if ((v321[(v128 >> 3) - 8] >> (v128 & 7)))
                              {
                                free(v122[v128]);
                              }

                              ++v128;
                            }

                            while (v108 + 1 != v128);
                          }

                          free(v122);
                          if (v127 < 1)
                          {
                            v151 = __error();
                            v132 = v305;
                            (v313)(v305, *v151, 0);
                          }

                          else
                          {
                            v129 = qos_class_self();
                            v130 = dispatch_get_global_queue(v129, 0);
                            v131 = dispatch_source_create(&_dispatch_source_type_proc, v127, 0x80000000uLL, v130);

                            *buf = _NSConcreteStackBlock;
                            *&buf[8] = 3221225472;
                            *&buf[16] = sub_10005B5B4;
                            *&buf[24] = &unk_1001150E8;
                            *&buf[48] = v127;
                            *&buf[52] = v319;
                            v132 = v305;
                            v133 = v305;
                            *&buf[32] = v131;
                            *&buf[40] = v133;
                            v134 = v131;
                            dispatch_source_set_event_handler(v134, buf);
                            dispatch_activate(v134);
                          }

                          goto LABEL_275;
                        }

LABEL_150:
                        v110 = malloc_type_realloc(v110, 8 * (v108 + 2), 0x10040436913F5uLL);
                        v115 = &v110[8 * v108];
                        *v115 = "-reason";
                        *(v115 + 1) = v102;
                        v108 += 2;
                        goto LABEL_151;
                      }

LABEL_159:
                      v110 = malloc_type_realloc(v110, 8 * (v108 + 1), 0x10040436913F5uLL);
                      *&v110[8 * v108++] = "-sampleWithoutTarget";
                      if (!v102)
                      {
                        goto LABEL_151;
                      }

                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    v105 = malloc_type_realloc(v104, 0x18uLL, 0x10040436913F5uLL);
                    asprintf(v105 + 2, "%d", a3);
                    v103 = 3;
                    v106 = 4;
                    if (!a4)
                    {
                      goto LABEL_137;
                    }
                  }

                  v105 = malloc_type_realloc(v105, 8 * v103 + 16, 0x10040436913F5uLL);
                  v107 = &v105[v103];
                  *v107 = "-targetThreadID";
                  asprintf(v107 + 1, "%d", a3);
                  v106 |= 2 << v103;
                  v103 += 2;
                  goto LABEL_137;
                }

                v236 = *__error();
                v237 = sub_10003E080();
                v238 = os_log_type_enabled(v237, OS_LOG_TYPE_FAULT);
                if ((a3 & 0x80000000) != 0)
                {
                  if (v238)
                  {
                    sub_1000A720C();
                  }

                  *__error() = v236;
                  v239 = v42;
                  if (byte_100127EC9 != 1 || dword_100127558 > 4)
                  {
                    goto LABEL_496;
                  }

                  v240 = *__error();
                  v242 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: filepath %s too large", v42);
                  if (!v242)
                  {
                    v243 = sub_10003E080();
                    if (os_log_type_enabled(v243, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000A727C();
                    }

                    goto LABEL_491;
                  }
                }

                else
                {
                  if (v238)
                  {
                    sub_1000A72EC();
                  }

                  *__error() = v236;
                  v239 = v42;
                  if (byte_100127EC9 != 1 || dword_100127558 > 4)
                  {
                    goto LABEL_496;
                  }

                  v240 = *__error();
                  v241 = sub_10003E020(a3);
                  v242 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: filepath %s too large", v241, a3, v42);
                  if (!v242)
                  {
                    v243 = sub_10003E080();
                    if (os_log_type_enabled(v243, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000A7374();
                    }

LABEL_491:

                    if (qword_100127ED0)
                    {
                      v293 = qword_100127ED0;
                    }

                    else
                    {
                      v293 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v293);
LABEL_495:
                    *__error() = v240;
                    v239 = v42;
LABEL_496:
                    v294 = v239;
                    goto LABEL_507;
                  }
                }

                v257 = v242;
                v258 = CFStringGetCStringPtr(v242, 0x8000100u);
                if (v258)
                {
                  v259 = v258;
                  v260 = 0;
                }

                else
                {
                  v259 = malloc_type_calloc(0x400uLL, 1uLL, 0x421F0A7BuLL);
                  CFStringGetCString(v257, v259, 1024, 0x8000100u);
                  v260 = v259;
                }

                if (qword_100127ED0)
                {
                  v288 = qword_100127ED0;
                }

                else
                {
                  v288 = __stderrp;
                }

                fprintf(v288, "%s\n", v259);
                if (v260)
                {
                  free(v260);
                }

                CFRelease(v257);
                goto LABEL_495;
              }

              v224 = v44;
              v225 = *__error();
              v226 = sub_10003E080();
              v227 = os_log_type_enabled(v226, OS_LOG_TYPE_FAULT);
              if ((a3 & 0x80000000) != 0)
              {
                if (v227)
                {
                  sub_1000A73FC();
                }

                *__error() = v225;
                v228 = v42;
                if (byte_100127EC9 != 1 || dword_100127558 > 4)
                {
                  goto LABEL_506;
                }

                v229 = *__error();
                v252 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: filepath %s not in /var/mobile/Library/Logs/CrashReporter", v42);
                if (v252)
                {
                  v253 = v252;
                  v254 = CFStringGetCStringPtr(v252, 0x8000100u);
                  if (v254)
                  {
                    v255 = v254;
                    v256 = 0;
                  }

                  else
                  {
                    v255 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9805842uLL);
                    CFStringGetCString(v253, v255, 1024, 0x8000100u);
                    v256 = v255;
                  }

                  if (qword_100127ED0)
                  {
                    v295 = qword_100127ED0;
                  }

                  else
                  {
                    v295 = __stderrp;
                  }

                  fprintf(v295, "%s\n", v255);
                  if (v256)
                  {
                    free(v256);
                  }

                  v291 = v253;
                  goto LABEL_504;
                }

                v287 = sub_10003E080();
                if (os_log_type_enabled(v287, OS_LOG_TYPE_FAULT))
                {
                  sub_1000A746C();
                }
              }

              else
              {
                if (v227)
                {
                  sub_1000A74DC();
                }

                *__error() = v225;
                v228 = v42;
                if (byte_100127EC9 != 1 || dword_100127558 > 4)
                {
                  goto LABEL_506;
                }

                v229 = *__error();
                v230 = sub_10003E020(a3);
                v231 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: filepath %s not in /var/mobile/Library/Logs/CrashReporter", v230, a3, v42);
                if (v231)
                {
                  v232 = v231;
                  v233 = CFStringGetCStringPtr(v231, 0x8000100u);
                  if (v233)
                  {
                    v234 = v233;
                    v235 = 0;
                  }

                  else
                  {
                    v234 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9805842uLL);
                    CFStringGetCString(v232, v234, 1024, 0x8000100u);
                    v235 = v234;
                  }

                  if (qword_100127ED0)
                  {
                    v290 = qword_100127ED0;
                  }

                  else
                  {
                    v290 = __stderrp;
                  }

                  fprintf(v290, "%s\n", v234);
                  if (v235)
                  {
                    free(v235);
                  }

                  v291 = v232;
LABEL_504:
                  CFRelease(v291);
LABEL_505:
                  *__error() = v229;
                  v228 = v42;
LABEL_506:
                  free(v46);
                  free(v224);
                  v294 = v228;
LABEL_507:
                  free(v294);
                  v19 = v301;
                  if (!v301)
                  {
                    goto LABEL_276;
                  }

                  goto LABEL_236;
                }

                v287 = sub_10003E080();
                if (os_log_type_enabled(v287, OS_LOG_TYPE_FAULT))
                {
                  sub_1000A7564();
                }
              }

              if (qword_100127ED0)
              {
                v292 = qword_100127ED0;
              }

              else
              {
                v292 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v292);
              goto LABEL_505;
            }

            if ((a3 & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v218 = *__error();
                v219 = sub_10003E080();
                if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A784C(v219);
                }

                *__error() = v218;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v220 = *__error();
                v221 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)", "0 != strcmp(/, expectedRealDir)");
                if (v221)
                {
                  v274 = v221;
                  v275 = CFStringGetCStringPtr(v221, 0x8000100u);
                  if (v275)
                  {
                    v276 = v275;
                    v277 = 0;
                  }

                  else
                  {
                    v276 = malloc_type_calloc(0x400uLL, 1uLL, 0x67D5FEF9uLL);
                    CFStringGetCString(v274, v276, 1024, 0x8000100u);
                    v277 = v276;
                  }

                  if (qword_100127ED0)
                  {
                    v286 = qword_100127ED0;
                  }

                  else
                  {
                    v286 = __stderrp;
                  }

                  fprintf(v286, "%s\n", v276);
                  if (v277)
                  {
                    free(v277);
                  }

                  CFRelease(v274);
                }

                else
                {
                  v222 = sub_10003E080();
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A78D0();
                  }

                  if (qword_100127ED0)
                  {
                    v223 = qword_100127ED0;
                  }

                  else
                  {
                    v223 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v223);
                }

                *__error() = v220;
              }

              v296 = "0 != strcmp(/, expectedRealDir)";
              v282 = "%s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)";
            }

            else
            {
              if (byte_100127EC8)
              {
                v205 = *__error();
                v206 = sub_10003E080();
                if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A7950();
                }

                *__error() = v205;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v207 = *__error();
                v208 = sub_10003E020(a3);
                v209 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)", v208, a3, "0 != strcmp(/, expectedRealDir)");
                if (v209)
                {
                  v270 = v209;
                  v271 = CFStringGetCStringPtr(v209, 0x8000100u);
                  if (v271)
                  {
                    v272 = v271;
                    v273 = 0;
                  }

                  else
                  {
                    v272 = malloc_type_calloc(0x400uLL, 1uLL, 0x67D5FEF9uLL);
                    CFStringGetCString(v270, v272, 1024, 0x8000100u);
                    v273 = v272;
                  }

                  if (qword_100127ED0)
                  {
                    v285 = qword_100127ED0;
                  }

                  else
                  {
                    v285 = __stderrp;
                  }

                  fprintf(v285, "%s\n", v272);
                  if (v273)
                  {
                    free(v273);
                  }

                  CFRelease(v270);
                }

                else
                {
                  v210 = sub_10003E080();
                  if (os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A79E0();
                  }

                  if (qword_100127ED0)
                  {
                    v211 = qword_100127ED0;
                  }

                  else
                  {
                    v211 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v211);
                }

                *__error() = v207;
              }

              LOBYTE(v296) = sub_10003E020(a3);
              v282 = "%s [%d]: %s: expectedRealDir of / (from /var/mobile/Library/Logs/CrashReporter)";
            }

            v284 = 1506;
          }

          else
          {
            if ((a3 & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v212 = *__error();
                v213 = sub_10003E080();
                if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A7A70(v213);
                }

                *__error() = v212;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v214 = *__error();
                v215 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)", "expectedRealDir");
                if (v215)
                {
                  v266 = v215;
                  v267 = CFStringGetCStringPtr(v215, 0x8000100u);
                  if (v267)
                  {
                    v268 = v267;
                    v269 = 0;
                  }

                  else
                  {
                    v268 = malloc_type_calloc(0x400uLL, 1uLL, 0xFF5D6DAEuLL);
                    CFStringGetCString(v266, v268, 1024, 0x8000100u);
                    v269 = v268;
                  }

                  if (qword_100127ED0)
                  {
                    v283 = qword_100127ED0;
                  }

                  else
                  {
                    v283 = __stderrp;
                  }

                  fprintf(v283, "%s\n", v268);
                  if (v269)
                  {
                    free(v269);
                  }

                  CFRelease(v266);
                }

                else
                {
                  v216 = sub_10003E080();
                  if (os_log_type_enabled(v216, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A7AF4();
                  }

                  if (qword_100127ED0)
                  {
                    v217 = qword_100127ED0;
                  }

                  else
                  {
                    v217 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v217);
                }

                *__error() = v214;
              }

              v296 = "expectedRealDir";
              v282 = "%s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)";
            }

            else
            {
              if (byte_100127EC8)
              {
                v198 = *__error();
                v199 = sub_10003E080();
                if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A7B74();
                }

                *__error() = v198;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v200 = *__error();
                v201 = sub_10003E020(a3);
                v202 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)", v201, a3, "expectedRealDir");
                if (v202)
                {
                  v262 = v202;
                  v263 = CFStringGetCStringPtr(v202, 0x8000100u);
                  if (v263)
                  {
                    v264 = v263;
                    v265 = 0;
                  }

                  else
                  {
                    v264 = malloc_type_calloc(0x400uLL, 1uLL, 0xFF5D6DAEuLL);
                    CFStringGetCString(v262, v264, 1024, 0x8000100u);
                    v265 = v264;
                  }

                  if (qword_100127ED0)
                  {
                    v281 = qword_100127ED0;
                  }

                  else
                  {
                    v281 = __stderrp;
                  }

                  fprintf(v281, "%s\n", v264);
                  if (v265)
                  {
                    free(v265);
                  }

                  CFRelease(v262);
                }

                else
                {
                  v203 = sub_10003E080();
                  if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000A7C04();
                  }

                  if (qword_100127ED0)
                  {
                    v204 = qword_100127ED0;
                  }

                  else
                  {
                    v204 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v204);
                }

                *__error() = v200;
              }

              LOBYTE(v296) = sub_10003E020(a3);
              v282 = "%s [%d]: %s: NULL expectedRealDir (from /var/mobile/Library/Logs/CrashReporter)";
            }

            v284 = 1505;
          }

          sub_10003DF54("DoGenerateSpindump", "monitor.m", v284, v282, v48, v49, v50, v51, v296);
          abort();
        }

        v187 = *__error();
        v188 = sub_10003E080();
        v189 = os_log_type_enabled(v188, OS_LOG_TYPE_FAULT);
        if ((a3 & 0x80000000) != 0)
        {
          if (v189)
          {
            sub_1000A7C94();
          }

          *__error() = v187;
          if (byte_100127EC9 != 1 || dword_100127558 > 4)
          {
            goto LABEL_234;
          }

          v190 = v44;
          v191 = *__error();
          v193 = v42;
          v194 = v43;
          v195 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"NULL realDir (dir %s from %s)", v43, v42);
          if (!v195)
          {
            v196 = sub_10003E080();
            if (os_log_type_enabled(v196, OS_LOG_TYPE_FAULT))
            {
              sub_1000A7D08();
            }

            goto LABEL_423;
          }
        }

        else
        {
          if (v189)
          {
            v289 = sub_10003E020(a3);
            *buf = 136446978;
            *&buf[4] = v289;
            *&buf[12] = 1024;
            *&buf[14] = a3;
            *&buf[18] = 2080;
            *&buf[20] = v43;
            *&buf[28] = 2080;
            *&buf[30] = v42;
            _os_log_fault_impl(&_mh_execute_header, v188, OS_LOG_TYPE_FAULT, "%{public}s [%d]: NULL realDir (dir %s from %s)", buf, 0x26u);
          }

          *__error() = v187;
          if (byte_100127EC9 != 1 || dword_100127558 > 4)
          {
            goto LABEL_234;
          }

          v190 = v44;
          v191 = *__error();
          v192 = sub_10003E020(a3);
          v193 = v42;
          v194 = v43;
          v195 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: NULL realDir (dir %s from %s)", v192, a3, v43, v42);
          if (!v195)
          {
            v196 = sub_10003E080();
            if (os_log_type_enabled(v196, OS_LOG_TYPE_FAULT))
            {
              v197 = sub_10003E020(a3);
              *buf = 136315906;
              *&buf[4] = v197;
              *&buf[12] = 1024;
              *&buf[14] = a3;
              *&buf[18] = 2080;
              *&buf[20] = v43;
              *&buf[28] = 2080;
              *&buf[30] = v42;
              _os_log_fault_impl(&_mh_execute_header, v196, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: NULL realDir (dir %s from %s)", buf, 0x26u);
            }

LABEL_423:

            if (qword_100127ED0)
            {
              v280 = qword_100127ED0;
            }

            else
            {
              v280 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v280);
LABEL_427:
            *__error() = v191;
            v42 = v193;
            v44 = v190;
            v43 = v194;
            goto LABEL_234;
          }
        }

        v248 = v195;
        v249 = CFStringGetCStringPtr(v195, 0x8000100u);
        if (v249)
        {
          v250 = v249;
          v251 = 0;
        }

        else
        {
          v250 = malloc_type_calloc(0x400uLL, 1uLL, 0x948891B8uLL);
          CFStringGetCString(v248, v250, 1024, 0x8000100u);
          v251 = v250;
        }

        if (qword_100127ED0)
        {
          v278 = qword_100127ED0;
        }

        else
        {
          v278 = __stderrp;
        }

        fprintf(v278, "%s\n", v250);
        if (v251)
        {
          free(v251);
        }

        CFRelease(v248);
        goto LABEL_427;
      }

      v62 = *__error();
      v63 = sub_10003E080();
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_FAULT);
      if ((a3 & 0x80000000) != 0)
      {
        if (v64)
        {
          sub_1000A7D7C();
        }

        *__error() = v62;
        if (byte_100127EC9 != 1 || dword_100127558 > 4)
        {
          goto LABEL_234;
        }

        v65 = *__error();
        v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get basename of %s", v42);
        if (!v67)
        {
          v68 = sub_10003E080();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7DEC();
          }

          goto LABEL_229;
        }
      }

      else
      {
        if (v64)
        {
          sub_1000A7E5C();
        }

        *__error() = v62;
        if (byte_100127EC9 != 1 || dword_100127558 > 4)
        {
          goto LABEL_234;
        }

        v65 = *__error();
        v66 = sub_10003E020(a3);
        v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get basename of %s", v66, a3, v42);
        if (!v67)
        {
          v68 = sub_10003E080();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            sub_1000A7EE4();
          }

LABEL_229:

          if (qword_100127ED0)
          {
            v168 = qword_100127ED0;
          }

          else
          {
            v168 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v168);
LABEL_233:
          *__error() = v65;
LABEL_234:
          free(v42);
          free(v43);
          v167 = v44;
          goto LABEL_235;
        }
      }

      v87 = v67;
      v88 = v44;
      v89 = CFStringGetCStringPtr(v67, 0x8000100u);
      if (v89)
      {
        v90 = v89;
        v91 = 0;
      }

      else
      {
        v90 = malloc_type_calloc(0x400uLL, 1uLL, 0xC255EEE2uLL);
        CFStringGetCString(v87, v90, 1024, 0x8000100u);
        v91 = v90;
      }

      if (qword_100127ED0)
      {
        v153 = qword_100127ED0;
      }

      else
      {
        v153 = __stderrp;
      }

      fprintf(v153, "%s\n", v90);
      if (v91)
      {
        free(v91);
      }

      CFRelease(v87);
      v44 = v88;
      goto LABEL_233;
    }

    v55 = *__error();
    v56 = sub_10003E080();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_FAULT);
    if ((a3 & 0x80000000) != 0)
    {
      if (v57)
      {
        sub_1000A7F6C();
      }

      *__error() = v55;
      if (byte_100127EC9 != 1 || dword_100127558 > 4)
      {
        goto LABEL_226;
      }

      v58 = *__error();
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to get dirname of %s", v42);
      if (!v60)
      {
        v61 = sub_10003E080();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_1000A7FDC();
        }

        goto LABEL_221;
      }
    }

    else
    {
      if (v57)
      {
        sub_1000A804C();
      }

      *__error() = v55;
      if (byte_100127EC9 != 1 || dword_100127558 > 4)
      {
        goto LABEL_226;
      }

      v58 = *__error();
      v59 = sub_10003E020(a3);
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get dirname of %s", v59, a3, v42);
      if (!v60)
      {
        v61 = sub_10003E080();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_1000A80D4();
        }

LABEL_221:

        if (qword_100127ED0)
        {
          v166 = qword_100127ED0;
        }

        else
        {
          v166 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v166);
LABEL_225:
        *__error() = v58;
LABEL_226:
        free(v42);
        v167 = v43;
        goto LABEL_235;
      }
    }

    v83 = v60;
    v84 = CFStringGetCStringPtr(v60, 0x8000100u);
    if (v84)
    {
      v85 = v84;
      v86 = 0;
    }

    else
    {
      v85 = malloc_type_calloc(0x400uLL, 1uLL, 0xEBC6512AuLL);
      CFStringGetCString(v83, v85, 1024, 0x8000100u);
      v86 = v85;
    }

    if (qword_100127ED0)
    {
      v152 = qword_100127ED0;
    }

    else
    {
      v152 = __stderrp;
    }

    fprintf(v152, "%s\n", v85);
    if (v86)
    {
      free(v86);
    }

    CFRelease(v83);
    goto LABEL_225;
  }

  v179 = *__error();
  v180 = sub_10003E080();
  v181 = os_log_type_enabled(v180, OS_LOG_TYPE_FAULT);
  if ((a3 & 0x80000000) != 0)
  {
    if (v181)
    {
      sub_1000A720C();
    }

    *__error() = v179;
    if (byte_100127EC9 != 1 || dword_100127558 > 4)
    {
      goto LABEL_420;
    }

    v182 = *__error();
    v184 = v42;
    v185 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"generate spindump: filepath %s too large", v42);
    if (!v185)
    {
      v186 = sub_10003E080();
      if (os_log_type_enabled(v186, OS_LOG_TYPE_FAULT))
      {
        sub_1000A727C();
      }

      goto LABEL_415;
    }

LABEL_368:
    v244 = v185;
    v245 = CFStringGetCStringPtr(v185, 0x8000100u);
    if (v245)
    {
      v246 = v245;
      v247 = 0;
    }

    else
    {
      v246 = malloc_type_calloc(0x400uLL, 1uLL, 0xD1F381CFuLL);
      CFStringGetCString(v244, v246, 1024, 0x8000100u);
      v247 = v246;
    }

    if (qword_100127ED0)
    {
      v261 = qword_100127ED0;
    }

    else
    {
      v261 = __stderrp;
    }

    fprintf(v261, "%s\n", v246);
    if (v247)
    {
      free(v247);
    }

    CFRelease(v244);
    goto LABEL_419;
  }

  if (v181)
  {
    sub_1000A72EC();
  }

  *__error() = v179;
  if (byte_100127EC9 != 1 || dword_100127558 > 4)
  {
    goto LABEL_420;
  }

  v182 = *__error();
  v183 = sub_10003E020(a3);
  v184 = v42;
  v185 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: generate spindump: filepath %s too large", v183, a3, v42);
  if (v185)
  {
    goto LABEL_368;
  }

  v186 = sub_10003E080();
  if (os_log_type_enabled(v186, OS_LOG_TYPE_FAULT))
  {
    sub_1000A7374();
  }

LABEL_415:

  if (qword_100127ED0)
  {
    v279 = qword_100127ED0;
  }

  else
  {
    v279 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v279);
LABEL_419:
  v42 = v184;
  *__error() = v182;
LABEL_420:
  v167 = v42;
LABEL_235:
  free(v167);
  if (v19)
  {
LABEL_236:
    (*(v19 + 2))(v19, 22, 0);
  }

LABEL_276:
}