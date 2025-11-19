@interface SPTextualReportParser
+ (BOOL)isSpindumpFile:(const char *)a3;
- (BOOL)parseSpindumpFile:(const char *)a3 andReportToStream:(__sFILE *)a4;
@end

@implementation SPTextualReportParser

+ (BOOL)isSpindumpFile:(const char *)a3
{
  v4 = fopen(a3, "r");
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(0x4000uLL, 0x186E36D9uLL);
    while (fgets(v6, 0x4000, v5))
    {
      if (!strncmp("Report Version:", v6, 0xFuLL))
      {
        v7 = strtol(v6 + 15, 0, 0) != 0;
        goto LABEL_16;
      }
    }

    v7 = 0;
LABEL_16:
    free(v6);
    fclose(v5);
  }

  else
  {
    if (byte_100127EC8 == 1)
    {
      v8 = *__error();
      v9 = sub_10003E080();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5DEC();
      }

      *__error() = v8;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v11 = *__error();
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s: %d (%s)", a3, v12, v14);
      if (v15)
      {
        v16 = v15;
        CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
        if (CStringPtr)
        {
          v18 = CStringPtr;
          v19 = 0;
        }

        else
        {
          v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xE5C3074DuLL);
          CFStringGetCString(v16, v18, 1024, 0x8000100u);
          v19 = v18;
        }

        if (qword_100127ED0)
        {
          v22 = qword_100127ED0;
        }

        else
        {
          v22 = __stderrp;
        }

        fprintf(v22, "%s\n", v18);
        if (v19)
        {
          free(v19);
        }

        CFRelease(v16);
      }

      else
      {
        v20 = sub_10003E080();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1000C5E8C();
        }

        if (qword_100127ED0)
        {
          v21 = qword_100127ED0;
        }

        else
        {
          v21 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v21);
      }

      v7 = 0;
      *__error() = v11;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (BOOL)parseSpindumpFile:(const char *)a3 andReportToStream:(__sFILE *)a4
{
  context = objc_autoreleasePoolPush();
  v975 = 0;
  v976 = &v975;
  v977 = 0x2020000000;
  v978 = 0;
  v971 = 0;
  v972 = &v971;
  v973 = 0x2020000000;
  v974 = 0;
  v970[0] = _NSConcreteStackBlock;
  v970[1] = 3221225472;
  v970[2] = sub_1000A0AF0;
  v970[3] = &unk_100115410;
  v970[4] = &v971;
  v970[5] = &v975;
  v949 = objc_retainBlock(v970);
  v5 = fopen(a3, "r");
  if (!v5)
  {
    if (byte_100127EC8 == 1)
    {
      v26 = *__error();
      v27 = sub_10003E080();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v85 = *__error();
        v86 = __error();
        v87 = strerror(*v86);
        *buf = 136315650;
        *&buf[4] = a3;
        *&buf[12] = 1024;
        *&buf[14] = v85;
        *&buf[18] = 2080;
        *&buf[20] = v87;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unable to open %s: %d (%s)", buf, 0x1Cu);
      }

      *__error() = v26;
    }

    v13 = 0;
    ptr = 0;
    if (byte_100127EC9 == 1)
    {
      v14 = 0;
      v941 = 0;
      v942 = 0;
      v946 = 0;
      v947 = 0;
      obj = 0;
      v944 = 0;
      v945 = 0;
      if (dword_100127558 > 3)
      {
        goto LABEL_127;
      }

      v15 = *__error();
      v28 = *__error();
      v29 = __error();
      v30 = strerror(*v29);
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to open %s: %d (%s)", a3, v28, v30);
      v20 = v31;
      if (v31)
      {
        CStringPtr = CFStringGetCStringPtr(v31, 0x8000100u);
        if (CStringPtr)
        {
          v33 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x82A0C77CuLL);
          CFStringGetCString(v20, CStringPtr, 1024, 0x8000100u);
          v33 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v57 = qword_100127ED0;
        }

        else
        {
          v57 = __stderrp;
        }

        fprintf(v57, "%s\n", CStringPtr);
        if (v33)
        {
          free(v33);
        }

        goto LABEL_125;
      }

      v46 = sub_10003E080();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        v93 = *__error();
        v94 = __error();
        v95 = strerror(*v94);
        *buf = 136315650;
        *&buf[4] = a3;
        *&buf[12] = 1024;
        *&buf[14] = v93;
        *&buf[18] = 2080;
        *&buf[20] = v95;
        _os_log_fault_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unable to open %s: %d (%s)", buf, 0x1Cu);
      }

      if (qword_100127ED0)
      {
        v47 = qword_100127ED0;
      }

      else
      {
        v47 = __stderrp;
      }

LABEL_108:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v47);
LABEL_126:
      obj = 0;
      ptr = 0;
      v14 = 0;
      v941 = 0;
      v942 = 0;
      v946 = 0;
      v947 = 0;
      v944 = 0;
      v945 = 0;
      v13 = 0;
      *__error() = v15;
      goto LABEL_127;
    }

LABEL_57:
    v14 = 0;
    v941 = 0;
    v942 = 0;
    v946 = 0;
    v947 = 0;
    obj = 0;
    v944 = 0;
    v945 = 0;
    goto LABEL_127;
  }

  (v949[2])();
  v6 = v976[3];
  do
  {
    if (!fgets(v6, *(v972 + 6), v5))
    {
      goto LABEL_19;
    }

    v6 = v976[3];
  }

  while (strncmp("Report Version:", v6, 0xFuLL));
  v7 = strtol((v6 + 15), 0, 0);
  if (!v7)
  {
LABEL_19:
    if (byte_100127EC8 == 1)
    {
      v23 = *__error();
      v24 = sub_10003E080();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6580();
      }

      *__error() = v23;
    }

    v25 = byte_100127EC9 == 1 && dword_100127558 <= 3;
    if (v25)
    {
      v34 = *__error();
      v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No report version. Not a spindump file?");
      v36 = v35;
      if (v35)
      {
        v37 = CFStringGetCStringPtr(v35, 0x8000100u);
        if (v37)
        {
          v38 = 0;
        }

        else
        {
          v37 = malloc_type_calloc(0x400uLL, 1uLL, 0x14346A06uLL);
          CFStringGetCString(v36, v37, 1024, 0x8000100u);
          v38 = v37;
        }

        if (qword_100127ED0)
        {
          v48 = qword_100127ED0;
        }

        else
        {
          v48 = __stderrp;
        }

        fprintf(v48, "%s\n", v37);
        if (v38)
        {
          free(v38);
        }

        goto LABEL_69;
      }

      v39 = sub_10003E080();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000C65B4();
      }

      if (qword_100127ED0)
      {
        v40 = qword_100127ED0;
      }

      else
      {
        v40 = __stderrp;
      }

LABEL_46:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
LABEL_70:
      v49 = __error();
      obj = 0;
      ptr = 0;
      v14 = 0;
      v941 = 0;
      v942 = 0;
      v946 = 0;
      v947 = 0;
      v944 = 0;
      v945 = 0;
LABEL_71:
      v13 = 0;
      *v49 = v34;
      goto LABEL_127;
    }

    obj = 0;
    ptr = 0;
    v14 = 0;
    v941 = 0;
    v942 = 0;
    v946 = 0;
    v947 = 0;
    v944 = 0;
    v945 = 0;
LABEL_28:
    v13 = 0;
    goto LABEL_127;
  }

  v8 = v7;
  if (fgets(v976[3], *(v972 + 6), v5) && !strncmp("Report Variant:   condensed", v976[3], 0x1BuLL))
  {
    if (byte_100127EC8 == 1)
    {
      v50 = *__error();
      v51 = sub_10003E080();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C5F2C();
      }

      *__error() = v50;
    }

    v935 = 1;
    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v52 = *__error();
      v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Detected condensed report variant");
      v54 = v53;
      if (v53)
      {
        v55 = CFStringGetCStringPtr(v53, 0x8000100u);
        if (v55)
        {
          v56 = 0;
        }

        else
        {
          v55 = malloc_type_calloc(0x400uLL, 1uLL, 0x692606CFuLL);
          CFStringGetCString(v54, v55, 1024, 0x8000100u);
          v56 = v55;
        }

        if (qword_100127ED0)
        {
          v91 = qword_100127ED0;
        }

        else
        {
          v91 = __stderrp;
        }

        fprintf(v91, "%s\n", v55);
        if (v56)
        {
          free(v56);
        }

        CFRelease(v54);
      }

      else
      {
        v88 = sub_10003E080();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
        {
          sub_1000C5F6C();
        }

        if (qword_100127ED0)
        {
          v89 = qword_100127ED0;
        }

        else
        {
          v89 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v89);
      }

      *__error() = v52;
      v935 = 1;
    }
  }

  else
  {
    v935 = 0;
  }

  if (fseek(v5, 0, 0))
  {
    if (byte_100127EC8 == 1)
    {
      v9 = *__error();
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        v12 = __error();
        strerror(*v12);
        sub_1000C5FA0();
      }

      *__error() = v9;
    }

    v13 = 0;
    ptr = 0;
    if (byte_100127EC9 == 1)
    {
      v14 = 0;
      v941 = 0;
      v942 = 0;
      v946 = 0;
      v947 = 0;
      obj = 0;
      v944 = 0;
      v945 = 0;
      if (dword_100127558 > 3)
      {
        goto LABEL_127;
      }

      v15 = *__error();
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text requires a seekable file: %d (%s)", v16, v18);
      v20 = v19;
      if (v19)
      {
        v21 = CFStringGetCStringPtr(v19, 0x8000100u);
        if (v21)
        {
          v22 = 0;
        }

        else
        {
          v21 = malloc_type_calloc(0x400uLL, 1uLL, 0x717B2CBAuLL);
          CFStringGetCString(v20, v21, 1024, 0x8000100u);
          v22 = v21;
        }

        if (qword_100127ED0)
        {
          v82 = qword_100127ED0;
        }

        else
        {
          v82 = __stderrp;
        }

        fprintf(v82, "%s\n", v21);
        if (v22)
        {
          free(v22);
        }

LABEL_125:
        CFRelease(v20);
        goto LABEL_126;
      }

      v70 = sub_10003E080();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        v71 = *__error();
        v72 = __error();
        strerror(*v72);
        sub_1000C5FE4();
      }

      if (qword_100127ED0)
      {
        v47 = qword_100127ED0;
      }

      else
      {
        v47 = __stderrp;
      }

      goto LABEL_108;
    }

    goto LABEL_57;
  }

  if (v8 <= 19)
  {
    if (byte_100127EC8 == 1)
    {
      v41 = *__error();
      v42 = sub_10003E080();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6518();
      }

      *__error() = v41;
    }

    v13 = 0;
    ptr = 0;
    if (byte_100127EC9 != 1)
    {
      goto LABEL_57;
    }

    v14 = 0;
    v941 = 0;
    v942 = 0;
    v946 = 0;
    v947 = 0;
    obj = 0;
    v944 = 0;
    v945 = 0;
    if (dword_100127558 > 3)
    {
      goto LABEL_127;
    }

    v34 = *__error();
    v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to parse text of the report: spindump report version 20+ required");
    v36 = v43;
    if (v43)
    {
      v44 = CFStringGetCStringPtr(v43, 0x8000100u);
      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v44 = malloc_type_calloc(0x400uLL, 1uLL, 0xD1CE92A8uLL);
        CFStringGetCString(v36, v44, 1024, 0x8000100u);
        v45 = v44;
      }

      if (qword_100127ED0)
      {
        v92 = qword_100127ED0;
      }

      else
      {
        v92 = __stderrp;
      }

      fprintf(v92, "%s\n", v44);
      if (v45)
      {
        free(v45);
      }

LABEL_69:
      CFRelease(v36);
      goto LABEL_70;
    }

    v90 = sub_10003E080();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
    {
      sub_1000C654C();
    }

    if (qword_100127ED0)
    {
      v40 = qword_100127ED0;
    }

    else
    {
      v40 = __stderrp;
    }

    goto LABEL_46;
  }

  if (v935)
  {
    v58 = @"^(?<indentCount>\\d+)(?<kernelDot>\\*)?\\s+(?<count>\\d+)\\s+(?:(?<binaryIndex>\\d+)\\s+\\+\\s+(?<offsetIntoBinary>\\d+)|\\?\\?\\?)$";
  }

  else
  {
    v58 = @"^(?<indentWhitespace> +(?<kernelDot>\\*)?)(?<countAndWhitespace>(?<count>\\d+)\\s+)(?:\\?\\?\\?(?:\\s+\\+\\s+(?<offsetIntoUnknownSymbol>\\d+))?|(?<symbolName>.*?)\\s+\\+\\s+(?<offsetIntoSymbol>\\d+))(?:\\s+\\((?:(?<sourceFilepath>.+?)(?::(?<sourceLineNumber>\\d+)(?:[:\\.,](?<sourceColumnNumber>\\d+))?)?\\s+in\\s+)?(?:<(?<binaryUuid>[\\dabcdef\\-]{32,36})>|(?<binaryName>.+?))\\s+\\+\\s+(?<offsetIntoBinary>\\d+)\\))?(?:\\s+\\[(?<address>(?:0x)?[\\dabcdef]+)\\])?(?:\\s+\\((?<stateInfo>.+?)\\))?(?:\\s+(?<startIndex>\\d+)(?:\\s*-\\s*(?<endIndex>\\d+))?)?$";
  }

  v59 = [NSRegularExpression alloc];
  v996[0] = 0;
  v946 = [v59 initWithPattern:v58 options:1 error:v996];
  v60 = v996[0];
  v61 = v60;
  if (!v946)
  {
    if (byte_100127EC8 == 1)
    {
      v628 = *__error();
      v629 = sub_10003E080();
      if (os_log_type_enabled(v629, OS_LOG_TYPE_ERROR))
      {
        v630 = [(__CFString *)v58 UTF8String];
        v631 = [v61 debugDescription];
        v632 = v631;
        v633 = [v631 UTF8String];
        *buf = 136315650;
        *&buf[4] = "regex";
        *&buf[12] = 2080;
        *&buf[14] = v630;
        *&buf[22] = 2080;
        *&buf[24] = v633;
        _os_log_error_impl(&_mh_execute_header, v629, OS_LOG_TYPE_ERROR, "%s: Unable to compile regex %s: %s", buf, 0x20u);
      }

      *__error() = v628;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v634 = *__error();
      v635 = [(__CFString *)v58 UTF8String];
      v636 = [v61 debugDescription];
      v637 = v636;
      v638 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s: %s", "regex", v635, [v636 UTF8String]);

      if (v638)
      {
        v840 = CFStringGetCStringPtr(v638, 0x8000100u);
        if (v840)
        {
          v841 = 0;
        }

        else
        {
          v840 = malloc_type_calloc(0x400uLL, 1uLL, 0x134220A1uLL);
          CFStringGetCString(v638, v840, 1024, 0x8000100u);
          v841 = v840;
        }

        if (qword_100127ED0)
        {
          v846 = qword_100127ED0;
        }

        else
        {
          v846 = __stderrp;
        }

        fprintf(v846, "%s\n", v840);
        if (v841)
        {
          free(v841);
        }

        CFRelease(v638);
      }

      else
      {
        v639 = sub_10003E080();
        if (os_log_type_enabled(v639, OS_LOG_TYPE_FAULT))
        {
          v640 = [(__CFString *)v58 UTF8String];
          v641 = [v61 debugDescription];
          v642 = v641;
          v643 = [v641 UTF8String];
          *buf = 136315650;
          *&buf[4] = "regex";
          *&buf[12] = 2080;
          *&buf[14] = v640;
          *&buf[22] = 2080;
          *&buf[24] = v643;
          _os_log_fault_impl(&_mh_execute_header, v639, OS_LOG_TYPE_FAULT, "Unable to format: %s: Unable to compile regex %s: %s", buf, 0x20u);
        }

        if (qword_100127ED0)
        {
          v644 = qword_100127ED0;
        }

        else
        {
          v644 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v644);
      }

      *__error() = v634;
    }

    [(__CFString *)v58 UTF8String];
    v645 = [v61 debugDescription];
    v646 = v645;
    [v645 UTF8String];
    sub_10003DF54("CallTreeFrameLineRegex", "SPTextualReportParser.m", 1816, "%s: Unable to compile regex %s: %s", v647, v648, v649, v650, "regex");

    goto LABEL_1248;
  }

  if (v935)
  {
    v62 = @"^(?<indentCount>\\d+)(?<kernelDot>\\*)?\\s+(?<count>\\d+)\\s+(?:state\\s+(?<stateInfo>(?:0x)?[\\dabcdef]+)|<(?<angleBracketContents>.*)>|(?<otherInfo>[^<\\s\\d].*))$";
  }

  else
  {
    v62 = @"^(?<indentWhitespace> +(?<kernelDot>\\*)?)(?<countAndWhitespace>(?<count>\\d+)\\s+)?<(?<angleBracketContents>.*)>(?:\\s+\\((?<stateInfo>.+?)\\))?(?:\\s+(?<startIndex>\\d+)(?:\\s*-\\s*(?<endIndex>\\d+))?)?$";
  }

  v63 = [NSRegularExpression alloc];
  v979 = 0;
  v945 = [v63 initWithPattern:v62 options:1 error:&v979];
  v64 = v979;
  if (!v945)
  {
    if (byte_100127EC8 == 1)
    {
      v651 = *__error();
      v652 = sub_10003E080();
      if (os_log_type_enabled(v652, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6480([(__CFString *)v62 UTF8String], buf);
      }

      *__error() = v651;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v653 = *__error();
      v654 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s", "regex", [(__CFString *)v62 UTF8String]);
      v655 = v654;
      if (v654)
      {
        v772 = CFStringGetCStringPtr(v654, 0x8000100u);
        if (v772)
        {
          v773 = 0;
        }

        else
        {
          v772 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9202467uLL);
          CFStringGetCString(v655, v772, 1024, 0x8000100u);
          v773 = v772;
        }

        if (qword_100127ED0)
        {
          v784 = qword_100127ED0;
        }

        else
        {
          v784 = __stderrp;
        }

        fprintf(v784, "%s\n", v772);
        if (v773)
        {
          free(v773);
        }

        CFRelease(v655);
      }

      else
      {
        v656 = sub_10003E080();
        if (os_log_type_enabled(v656, OS_LOG_TYPE_FAULT))
        {
          sub_1000C64CC([(__CFString *)v62 UTF8String], v996);
        }

        if (qword_100127ED0)
        {
          v657 = qword_100127ED0;
        }

        else
        {
          v657 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v657);
      }

      *__error() = v653;
    }

    [(__CFString *)v62 UTF8String];
    sub_10003DF54("CallTreeNonFrameLineRegex", "SPTextualReportParser.m", 1879, "%s: Unable to compile regex %s", v785, v786, v787, v788, "regex");
    goto LABEL_1248;
  }

  if (v935)
  {
    v65 = @"^(?<binaryIndex>\\d+)\\t(?<kernelDot>\\*)?(?<bundleIdentifier>\\S+)?\\t(?<version>.+?)?\\t<(?<binaryUuid>[\\dabcdef\\-]{32,36})>\\t(?<segmentName>\\S+?)?\\t(?<binaryPath>.+?)?$";
  }

  else
  {
    v65 = @"^\\s*(?<kernelDot>\\*)?(?:(?<startAddress>(?:0x)?[\\dabcdef]+)|\\?\\?\\?)\\s*\\-\\s*(?:(?<endAddress>(?:0x)?[\\dabcdef]+)|\\?\\?\\?)\\s*(?:\\?\\?\\?|(?<bundleIdentifier>\\S+\\.\\S+\\.\\S+)|(?<name>.+?\\b))\\s+(?<version>(?:\\d[\\S]*?)?(?:\\s*\\(\\S+?\\)))?\\s*<(?<binaryUuid>[\\dabcdef\\-]{32,36})>(?<segmentName>\\S+?)?(?:\\s+(?<binaryPath>.+?)?)?$";
  }

  v66 = [NSRegularExpression alloc];
  v979 = 0;
  v944 = [v66 initWithPattern:v65 options:1 error:&v979];
  v67 = v979;
  if (!v944)
  {
    if (byte_100127EC8 == 1)
    {
      v658 = *__error();
      v659 = sub_10003E080();
      if (os_log_type_enabled(v659, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6480([(__CFString *)v65 UTF8String], buf);
      }

      *__error() = v658;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v660 = *__error();
      v661 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s", "regex", [(__CFString *)v65 UTF8String]);
      v662 = v661;
      if (v661)
      {
        v774 = CFStringGetCStringPtr(v661, 0x8000100u);
        if (v774)
        {
          v775 = 0;
        }

        else
        {
          v774 = malloc_type_calloc(0x400uLL, 1uLL, 0xBB67A353uLL);
          CFStringGetCString(v662, v774, 1024, 0x8000100u);
          v775 = v774;
        }

        if (qword_100127ED0)
        {
          v789 = qword_100127ED0;
        }

        else
        {
          v789 = __stderrp;
        }

        fprintf(v789, "%s\n", v774);
        if (v775)
        {
          free(v775);
        }

        CFRelease(v662);
      }

      else
      {
        v663 = sub_10003E080();
        if (os_log_type_enabled(v663, OS_LOG_TYPE_FAULT))
        {
          sub_1000C64CC([(__CFString *)v65 UTF8String], v996);
        }

        if (qword_100127ED0)
        {
          v664 = qword_100127ED0;
        }

        else
        {
          v664 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v664);
      }

      *__error() = v660;
    }

    [(__CFString *)v65 UTF8String];
    sub_10003DF54("LoadInfoLineRegex", "SPTextualReportParser.m", 1958, "%s: Unable to compile regex %s", v790, v791, v792, v793, "regex");
    goto LABEL_1248;
  }

  v68 = [NSRegularExpression alloc];
  v979 = 0;
  v941 = [v68 initWithPattern:@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 options:36})>?|(?<binaryIndex>\\d+))$" error:{1, &v979}];
  v69 = v979;
  if (!v941)
  {
    if (byte_100127EC8 == 1)
    {
      v665 = *__error();
      v666 = sub_10003E080();
      if (os_log_type_enabled(v666, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6480([@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"], buf);
      }

      *__error() = v665;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v667 = *__error();
      v668 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to compile regex %s", "regex", [@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"]);
      v669 = v668;
      if (v668)
      {
        v776 = CFStringGetCStringPtr(v668, 0x8000100u);
        if (v776)
        {
          v777 = 0;
        }

        else
        {
          v776 = malloc_type_calloc(0x400uLL, 1uLL, 0xD97EBE6BuLL);
          CFStringGetCString(v669, v776, 1024, 0x8000100u);
          v777 = v776;
        }

        if (qword_100127ED0)
        {
          v794 = qword_100127ED0;
        }

        else
        {
          v794 = __stderrp;
        }

        fprintf(v794, "%s\n", v776);
        if (v777)
        {
          free(v777);
        }

        CFRelease(v669);
      }

      else
      {
        v670 = sub_10003E080();
        if (os_log_type_enabled(v670, OS_LOG_TYPE_FAULT))
        {
          sub_1000C64CC([@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"], v996);
        }

        if (qword_100127ED0)
        {
          v671 = qword_100127ED0;
        }

        else
        {
          v671 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v671);
      }

      *__error() = v667;
    }

    [@"^UUID:(?<whitespace>\\s*)(?:<?(?<binaryUuid>[\\dabcdef\\-]{32 36})>?|(?<binaryIndex>\\d+))$"];
    sub_10003DF54("UUIDLineRegex", "SPTextualReportParser.m", 1984, "%s: Unable to compile regex %s", v795, v796, v797, v798, "regex");
    goto LABEL_1248;
  }

  v969 = 0;
  v968 = 0;
  v967 = 0;
  if (v935)
  {
    v967 = 2;
    v968 = 2;
    v969 = 1;
  }

  else
  {
    v73 = v946;
    v967 = -1;
    v968 = -1;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000A56B0;
    *&buf[24] = &unk_100116068;
    *&buf[32] = v73;
    *&buf[40] = &v969;
    *&buf[48] = &v967;
    v985 = &v968;
    v74 = v73;
    sub_1000A314C(v5, 0, buf);

    if (v967 <= 0)
    {
      if (byte_100127EC8 == 1)
      {
        v75 = *__error();
        v76 = sub_10003E080();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "Parsing spindump text: Unable to detect initial indentation, using 2", buf, 2u);
        }

        *__error() = v75;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v77 = *__error();
        v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to detect initial indentation, using 2");
        v79 = v78;
        if (v78)
        {
          v80 = CFStringGetCStringPtr(v78, 0x8000100u);
          if (v80)
          {
            v81 = 0;
          }

          else
          {
            v80 = malloc_type_calloc(0x400uLL, 1uLL, 0x68A294DCuLL);
            CFStringGetCString(v79, v80, 1024, 0x8000100u);
            v81 = v80;
          }

          if (qword_100127ED0)
          {
            v98 = qword_100127ED0;
          }

          else
          {
            v98 = __stderrp;
          }

          fprintf(v98, "%s\n", v80);
          if (v81)
          {
            free(v81);
          }

          CFRelease(v79);
        }

        else
        {
          v96 = sub_10003E080();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
          {
            sub_1000C6028();
          }

          if (qword_100127ED0)
          {
            v97 = qword_100127ED0;
          }

          else
          {
            v97 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v97);
        }

        *__error() = v77;
      }

      v967 = 2;
    }

    if (v968 <= 0)
    {
      if (byte_100127EC8 == 1)
      {
        v99 = *__error();
        v100 = sub_10003E080();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Parsing spindump text: Unable to detect incremental indentation, using 2", buf, 2u);
        }

        *__error() = v99;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v101 = *__error();
        v102 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to detect incremental indentation, using 2");
        v103 = v102;
        if (v102)
        {
          v104 = CFStringGetCStringPtr(v102, 0x8000100u);
          if (v104)
          {
            v105 = 0;
          }

          else
          {
            v104 = malloc_type_calloc(0x400uLL, 1uLL, 0x7F412522uLL);
            CFStringGetCString(v103, v104, 1024, 0x8000100u);
            v105 = v104;
          }

          if (qword_100127ED0)
          {
            v108 = qword_100127ED0;
          }

          else
          {
            v108 = __stderrp;
          }

          fprintf(v108, "%s\n", v104);
          if (v105)
          {
            free(v105);
          }

          CFRelease(v103);
        }

        else
        {
          v106 = sub_10003E080();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
          {
            sub_1000C605C();
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

        *__error() = v101;
      }

      v968 = 2;
    }
  }

  if (self->_isHeavy)
  {
    if (v969)
    {
      p_startIndex = &self->_startIndex;
      if (self->_startIndex || self->_endIndex)
      {
        if (byte_100127EC8 == 1)
        {
          v109 = *__error();
          v110 = sub_10003E080();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            sub_1000C60F8();
          }

          *__error() = v109;
        }

        v13 = 0;
        ptr = 0;
        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v34 = *__error();
          v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Original report is not in timeline mode, so unable to filter to start/end indexes");
          v112 = v111;
          if (v111)
          {
            v113 = CFStringGetCStringPtr(v111, 0x8000100u);
            if (v113)
            {
              v114 = 0;
            }

            else
            {
              v113 = malloc_type_calloc(0x400uLL, 1uLL, 0x88A3DD5DuLL);
              CFStringGetCString(v112, v113, 1024, 0x8000100u);
              v114 = v113;
            }

            if (qword_100127ED0)
            {
              v571 = qword_100127ED0;
            }

            else
            {
              v571 = __stderrp;
            }

            fprintf(v571, "%s\n", v113);
            if (v114)
            {
              free(v114);
            }

LABEL_931:
            CFRelease(v112);
            goto LABEL_932;
          }

          v141 = sub_10003E080();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
          {
            sub_1000C612C();
          }

          if (qword_100127ED0)
          {
            v140 = qword_100127ED0;
          }

          else
          {
            v140 = __stderrp;
          }

          goto LABEL_910;
        }

        goto LABEL_898;
      }

      goto LABEL_224;
    }
  }

  else if (v969)
  {
    if (byte_100127EC8 == 1)
    {
      v115 = *__error();
      v116 = sub_10003E080();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6090();
      }

      *__error() = v115;
    }

    v13 = 0;
    ptr = 0;
    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v34 = *__error();
      v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Original report is not in timeline mode, so unable to output timeline mode");
      v112 = v117;
      if (v117)
      {
        v118 = CFStringGetCStringPtr(v117, 0x8000100u);
        if (v118)
        {
          v119 = 0;
        }

        else
        {
          v118 = malloc_type_calloc(0x400uLL, 1uLL, 0xCB89CD56uLL);
          CFStringGetCString(v112, v118, 1024, 0x8000100u);
          v119 = v118;
        }

        if (qword_100127ED0)
        {
          v570 = qword_100127ED0;
        }

        else
        {
          v570 = __stderrp;
        }

        fprintf(v570, "%s\n", v118);
        if (v119)
        {
          free(v119);
        }

        goto LABEL_931;
      }

      v139 = sub_10003E080();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
      {
        sub_1000C60C4();
      }

      if (qword_100127ED0)
      {
        v140 = qword_100127ED0;
      }

      else
      {
        v140 = __stderrp;
      }

      goto LABEL_910;
    }

LABEL_898:
    v14 = 0;
    v942 = 0;
    v947 = 0;
    obj = 0;
    goto LABEL_127;
  }

  p_startIndex = &self->_startIndex;
  if (self->_startIndex)
  {
LABEL_225:
    if (byte_100127EC8 == 1)
    {
      v120 = *__error();
      v121 = sub_10003E080();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: Stacks will be filtered to the sample index range specified, but process and thread summary information and timestamps will still reflect full time range", buf, 2u);
      }

      *__error() = v120;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v122 = *__error();
      v123 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Stacks will be filtered to the sample index range specified, but process and thread summary information and timestamps will still reflect full time range");
      v124 = v123;
      if (v123)
      {
        v125 = CFStringGetCStringPtr(v123, 0x8000100u);
        if (v125)
        {
          v126 = 0;
        }

        else
        {
          v125 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CF7E278uLL);
          CFStringGetCString(v124, v125, 1024, 0x8000100u);
          v126 = v125;
        }

        if (qword_100127ED0)
        {
          v129 = qword_100127ED0;
        }

        else
        {
          v129 = __stderrp;
        }

        fprintf(v129, "%s\n", v125);
        if (v126)
        {
          free(v126);
        }

        CFRelease(v124);
      }

      else
      {
        v127 = sub_10003E080();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
        {
          sub_1000C6160();
        }

        if (qword_100127ED0)
        {
          v128 = qword_100127ED0;
        }

        else
        {
          v128 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v128);
      }

      *__error() = v122;
    }

    goto LABEL_248;
  }

LABEL_224:
  if (self->_endIndex)
  {
    goto LABEL_225;
  }

LABEL_248:
  if (self->_symbolicate)
  {
    if (byte_100127EC8 == 1)
    {
      v130 = *__error();
      v131 = sub_10003E080();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: Symbolicating...", buf, 2u);
      }

      *__error() = v130;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v132 = *__error();
      v133 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Symbolicating...");
      v134 = v133;
      if (v133)
      {
        v135 = CFStringGetCStringPtr(v133, 0x8000100u);
        if (v135)
        {
          v136 = 0;
        }

        else
        {
          v135 = malloc_type_calloc(0x400uLL, 1uLL, 0x9C1A4E7DuLL);
          CFStringGetCString(v134, v135, 1024, 0x8000100u);
          v136 = v135;
        }

        if (qword_100127ED0)
        {
          v142 = qword_100127ED0;
        }

        else
        {
          v142 = __stderrp;
        }

        fprintf(v142, "%s\n", v135);
        if (v136)
        {
          free(v136);
        }

        CFRelease(v134);
      }

      else
      {
        v137 = sub_10003E080();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
        {
          sub_1000C6194();
        }

        if (qword_100127ED0)
        {
          v138 = qword_100127ED0;
        }

        else
        {
          v138 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v138);
      }

      *__error() = v132;
    }

    sub_1000A0B94(v5, v946, v944, v935, self->_useDsymForUUIDForEverything, self->_findDsymsForIDs);
  }

  v947 = sub_1000A0E84(v5, 0, v944, v935);
  v143 = a4;
  if (!v947)
  {
    if (byte_100127EC8 == 1)
    {
      v564 = *__error();
      v565 = sub_10003E080();
      if (os_log_type_enabled(v565, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6418();
      }

      *__error() = v564;
    }

    v13 = 0;
    ptr = 0;
    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v34 = *__error();
      v566 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to find any Binary Images");
      v112 = v566;
      if (v566)
      {
        v567 = CFStringGetCStringPtr(v566, 0x8000100u);
        if (v567)
        {
          v568 = 0;
        }

        else
        {
          v567 = malloc_type_calloc(0x400uLL, 1uLL, 0x31B6311CuLL);
          CFStringGetCString(v112, v567, 1024, 0x8000100u);
          v568 = v567;
        }

        if (qword_100127ED0)
        {
          v572 = qword_100127ED0;
        }

        else
        {
          v572 = __stderrp;
        }

        fprintf(v572, "%s\n", v567);
        if (v568)
        {
          free(v568);
        }

        goto LABEL_931;
      }

      v569 = sub_10003E080();
      if (os_log_type_enabled(v569, OS_LOG_TYPE_FAULT))
      {
        sub_1000C644C();
      }

      if (qword_100127ED0)
      {
        v140 = qword_100127ED0;
      }

      else
      {
        v140 = __stderrp;
      }

LABEL_910:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v140);
LABEL_932:
      v49 = __error();
      obj = 0;
      ptr = 0;
      v14 = 0;
      v942 = 0;
      v947 = 0;
      goto LABEL_71;
    }

    goto LABEL_898;
  }

  if (fgets(v976[3], *(v972 + 6), v5))
  {
    obj = 0;
    ptr = 0;
    v942 = 0;
    v14 = 0;
    v881 = 0;
    LODWORD(v905) = 0;
    v875 = 0;
    v895 = 0;
    v882 = 0;
    v927 = 0xFFFFFFFFLL;
    v144 = -1;
    while (1)
    {
      v929 = v144;
      v930 = v14;
      v914 = objc_autoreleasePoolPush();
      v145 = v976[3];
      v146 = strnlen(v145, *(v972 + 6));
      if (v145[v146 - 1] != 10)
      {
        (v949[2])();
        v143 = a4;
        v154 = 5;
        goto LABEL_786;
      }

      v145[v146 - 1] = 0;
      [NSString stringWithUTF8String:v976[3]];
      v147 = a4;
      v149 = v144;
      v150 = v148 = v14;
      v151 = [v946 firstMatchInString:v150 options:0 range:{0, objc_msgSend(v150, "length")}];
      v905 = (v905 + 1);
      v898 = v151;
      v899 = v150;
      if (v151)
      {
        v966 = 0;
        v931 = sub_1000A0FE4(v150, v151, v935, v967, v968);
        v900 = [v151 rangeWithName:@"kernelDot"];
        v979 = -1;
        v152 = sub_1000A10B4(v150, v905, v151, v947, v935, &v979);
        v153 = v152;
        if (v929 != -1)
        {
          if (v979 == v929 && v930 == v152)
          {
            LOBYTE(v966) = 1;
          }

          else
          {

            v148 = 0;
            v149 = -1;
          }
        }

        v163 = [v151 rangeWithName:@"symbolName"];
        if (v163 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v164 = 0;
        }

        else
        {
          v164 = [v150 substringWithRange:{v163, v162}];
        }

        v166 = [v151 rangeWithName:@"offsetIntoSymbol"];
        v929 = v149;
        v930 = v148;
        if (v166 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v167 = -1;
        }

        else
        {
          v168 = [v150 substringWithRange:{v166, v165}];
          v169 = sub_1000A2DC0(v168);

          v167 = v169;
        }

        v922 = v167;
        v170 = v967;
        v171 = v968;
        v172 = v979;
        v173 = v946;
        v174 = v947;
        v175 = v945;
        v176 = v153;
        v177 = v164;
        HIBYTE(v966) = 0;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000A543C;
        *&buf[24] = &unk_100116040;
        *&buf[32] = v173;
        *&buf[40] = v175;
        v994 = v935;
        v991 = v170;
        v992 = v171;
        v993 = v931;
        v995 = v900 != 0x7FFFFFFFFFFFFFFFLL;
        v988 = &v966;
        v989 = v172;
        *&buf[48] = v176;
        v985 = v174;
        v987 = &v966 + 1;
        v986 = v177;
        v990 = v922;
        v888 = v177;
        v947 = v174;
        v178 = v176;
        v179 = v175;
        v180 = v173;
        sub_1000A314C(v5, v905, buf);

        if (v966 == 1)
        {
          v181 = v178;

          v182 = v966;
          v885 = v979;
          v929 = v979;
          v930 = v181;
        }

        else
        {
          v182 = 0;
          v885 = v979;
        }

        v183 = HIBYTE(v966);
        v184 = v899;
        v185 = v898;
        v186 = v178;
        v923 = objc_autoreleasePoolPush();
        v188 = [v185 rangeWithName:@"count"];
        if (v188 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (byte_100127EC8 == 1)
          {
            v618 = *__error();
            v619 = sub_10003E080();
            if (os_log_type_enabled(v619, OS_LOG_TYPE_ERROR))
            {
              v620 = v184;
              [v184 UTF8String];
              sub_1000C6250();
            }

            *__error() = v618;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v621 = *__error();
            v622 = v184;
            v623 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count (%d: %s)", "range.location != NSNotFound", v905, [v184 UTF8String]);
            v624 = v623;
            if (v623)
            {
              v780 = CFStringGetCStringPtr(v623, 0x8000100u);
              if (v780)
              {
                v781 = 0;
              }

              else
              {
                v780 = malloc_type_calloc(0x400uLL, 1uLL, 0xE8AB3756uLL);
                CFStringGetCString(v624, v780, 1024, 0x8000100u);
                v781 = v780;
              }

              if (qword_100127ED0)
              {
                v802 = qword_100127ED0;
              }

              else
              {
                v802 = __stderrp;
              }

              fprintf(v802, "%s\n", v780);
              if (v781)
              {
                free(v781);
              }

              CFRelease(v624);
            }

            else
            {
              v625 = sub_10003E080();
              if (os_log_type_enabled(v625, OS_LOG_TYPE_FAULT))
              {
                v626 = v184;
                [v184 UTF8String];
                sub_1000C6294();
              }

              if (qword_100127ED0)
              {
                v627 = qword_100127ED0;
              }

              else
              {
                v627 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v627);
            }

            *__error() = v621;
          }

          v803 = v184;
          [v184 UTF8String];
          sub_10003DF54("ParseFrameLine", "SPTextualReportParser.m", 1511, "%s: frame match with no count (%d: %s)", v804, v805, v806, v807, "range.location != NSNotFound");
          goto LABEL_1248;
        }

        v189 = [v184 substringWithRange:{v188, v187}];
        v910 = sub_1000A2DC0(v189);

        if (v935)
        {
          v879 = 0;
          v190 = -1;
          goto LABEL_310;
        }

        v191 = [v185 rangeWithName:@"countAndWhitespace"];
        v879 = v192;
        if (v191 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (byte_100127EC8 == 1)
          {
            v672 = *__error();
            v673 = sub_10003E080();
            if (os_log_type_enabled(v673, OS_LOG_TYPE_ERROR))
            {
              v674 = v184;
              [v184 UTF8String];
              sub_1000C61C8();
            }

            *__error() = v672;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v675 = *__error();
            v676 = v184;
            v677 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count and whitespace (%d: %s)", "range.location != NSNotFound", v905, [v184 UTF8String]);
            v678 = v677;
            if (v677)
            {
              v782 = CFStringGetCStringPtr(v677, 0x8000100u);
              if (v782)
              {
                v783 = 0;
              }

              else
              {
                v782 = malloc_type_calloc(0x400uLL, 1uLL, 0xDAB5F7ABuLL);
                CFStringGetCString(v678, v782, 1024, 0x8000100u);
                v783 = v782;
              }

              if (qword_100127ED0)
              {
                v808 = qword_100127ED0;
              }

              else
              {
                v808 = __stderrp;
              }

              fprintf(v808, "%s\n", v782);
              if (v783)
              {
                free(v783);
              }

              CFRelease(v678);
            }

            else
            {
              v679 = sub_10003E080();
              if (os_log_type_enabled(v679, OS_LOG_TYPE_FAULT))
              {
                v680 = v184;
                [v184 UTF8String];
                sub_1000C620C();
              }

              if (qword_100127ED0)
              {
                v681 = qword_100127ED0;
              }

              else
              {
                v681 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v681);
            }

            *__error() = v675;
          }

          v809 = v184;
          [v184 UTF8String];
          sub_10003DF54("ParseFrameLine", "SPTextualReportParser.m", 1515, "%s: frame match with no count and whitespace (%d: %s)", v810, v811, v812, v813, "range.location != NSNotFound");
          goto LABEL_1248;
        }

        v194 = [v185 rangeWithName:@"address"];
        if (v194 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v892 = 0;
          if (v186 && v885 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v190 = &v885[v186[7]];
LABEL_310:
            v892 = v190;
          }
        }

        else
        {
          v198 = [v184 substringWithRange:{v194, v193}];
          v892 = sub_1000A2DC0(v198);
        }

        v906 = v184;
        v199 = v185;
        selfa = v186;
        v915 = objc_autoreleasePoolPush();
        v201 = [v199 rangeWithName:@"fakeFrameInfo"];
        if (v201 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v203 = [v199 rangeWithName:@"symbolName"];
          if (v203 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_324;
          }

          v204 = [v906 substringWithRange:{v203, v202}];
          if ([v204 isEqualToString:@"???"])
          {

LABEL_324:
            v204 = 0;
          }

          v206 = [v199 rangeWithName:@"sourceFilepath"];
          if (v206 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v207 = 0;
          }

          else
          {
            v207 = [v906 substringWithRange:{v206, v205}];
          }

          v211 = [v199 rangeWithName:@"binaryName"];
          if (v211 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v213 = [v199 rangeWithName:@"binaryUuid"];
            if (v213 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v214 = 0;
            }

            else
            {
              v225 = [v906 substringWithRange:{v213, v212}];
              v214 = [NSString stringWithFormat:@"<%@>", v225];
            }
          }

          else
          {
            v214 = [v906 substringWithRange:{v211, v210}];
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000A5020;
          *&buf[24] = &unk_100115FF0;
          *&buf[32] = v199;
          *&buf[40] = v906;
          v208 = v204;
          *&buf[48] = v208;
          v877 = v207;
          v985 = v877;
          v883 = v214;
          v986 = v883;
          v227 = objc_retainBlock(buf);
          if ((v182 & 1) != 0 || v885 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v228 = [NSArray alloc];
            v229 = (*(v227 + 2))(v227);
            v230 = [v228 initWithObjects:{v229, 0}];
            goto LABEL_358;
          }

          if (selfa && (v241 = objc_getProperty(selfa, v226, 40, 1)) != 0)
          {
            v229 = v241;
            if (objc_getProperty(selfa, v242, 48, 1))
            {
              v244 = [v229 segmentWithName:{objc_getProperty(selfa, v243, 48, 1)}];
              v245 = v244;
              if (v244)
              {
                v246 = [v244 instructionAtOffsetIntoSegment:&v885[-v183]];

                goto LABEL_567;
              }

              v392 = [NSArray alloc];
              v246 = (*(v227 + 2))(v227);
              v386 = [v392 initWithObjects:{v246, 0}];
LABEL_612:
              v209 = v386;
            }

            else
            {
              v246 = [v229 instructionAtOffsetIntoBinary:&v885[-v183]];
LABEL_567:
              if (!v246)
              {
                v385 = [NSArray alloc];
                v246 = sub_1000A51AC(0, -1, 0, 0, 0, 0, -1);
                v386 = [v385 initWithObjects:{v246, 0}];
                goto LABEL_612;
              }

              if ([v246 numSymbols] > 1 || !v877 && ((v423 = objc_msgSend(v246, "hasSourceInfo"), !v208) ? (v424 = 1) : (v424 = v423), (v424 & 1) != 0))
              {
                v371 = [v229 name];

                if (v371)
                {
                  v372 = [v229 name];
                }

                else
                {
                  v413 = [v229 uuid];
                  v414 = [v413 UUIDString];
                  v372 = [NSString stringWithFormat:@"<%@>", v414];
                }

                v415 = objc_alloc_init(NSMutableArray);
                v996[0] = _NSConcreteStackBlock;
                v996[1] = 3221225472;
                v996[2] = sub_1000A533C;
                v996[3] = &unk_100116018;
                v1001 = v183;
                v997 = v246;
                v998 = v372;
                v1000 = v885;
                v416 = v415;
                v999 = v416;
                v417 = v372;
                [v246 enumerateSymbols:v996];
                v418 = [v416 count];
                v419 = v999;
                if (v418)
                {
                  v209 = v416;
                }

                else
                {

                  v420 = [NSArray alloc];
                  v421 = sub_1000A51AC(0, -1, 0, 0, 0, v417, v885);

                  v209 = [v420 initWithObjects:{v421, 0}];
                  v417 = v421;
                }
              }

              else
              {
                v425 = [NSArray alloc];
                v417 = (*(v227 + 2))(v227);
                v209 = [v425 initWithObjects:{v417, 0}];
              }
            }
          }

          else
          {
            v349 = [NSArray alloc];
            if (v883)
            {
              (*(v227 + 2))(v227);
            }

            else
            {
              sub_1000A51AC(0, -1, 0, 0, 0, 0, -1);
            }
            v229 = ;
            v230 = [v349 initWithObjects:{v229, 0}];
LABEL_358:
            v209 = v230;
          }
        }

        else
        {
          v208 = [v906 substringWithRange:{v201, v200}];
          v209 = [[NSArray alloc] initWithObjects:{v208, 0}];
        }

        objc_autoreleasePoolPop(v915);
        if (v935)
        {
          v231 = 0;
          v232 = 0;
          v233 = 0;
        }

        else
        {
          v235 = [v199 rangeWithName:@"stateInfo"];
          if (v235 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v233 = 0;
          }

          else
          {
            v233 = [v906 substringWithRange:{v235, v234}];
          }

          v237 = [v199 rangeWithName:@"startIndex"];
          if (v237 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v231 = 0;
            v232 = 0;
          }

          else
          {
            v238 = [v906 substringWithRange:{v237, v236}];
            v231 = sub_1000A2DC0(v238);

            v240 = [v199 rangeWithName:@"endIndex"];
            if (v240 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v232 = v231;
            }

            else
            {
              v247 = [v906 substringWithRange:{v240, v239}];
              v232 = sub_1000A2DC0(v247);
            }
          }
        }

        objc_autoreleasePoolPop(v923);
        v248 = v209;
        v249 = v233;

        v250 = v209;
        v916 = v233;
        v924 = v250;
        v251 = [v250 firstObject];
        LODWORD(v250) = [v251 length] == 0;

        if (v250)
        {
          if (byte_100127EC8 == 1)
          {
            v573 = *__error();
            v574 = sub_10003E080();
            if (os_log_type_enabled(v574, OS_LOG_TYPE_ERROR))
            {
              v575 = [v924 debugDescription];
              v576 = v575;
              v577 = [v575 UTF8String];
              v578 = v906;
              v579 = [v906 UTF8String];
              *buf = 136315906;
              *&buf[4] = "frameBodies.firstObject.length > 0";
              *&buf[12] = 2080;
              *&buf[14] = v577;
              *&buf[22] = 1024;
              *&buf[24] = v905;
              *&buf[28] = 2080;
              *&buf[30] = v579;
              _os_log_error_impl(&_mh_execute_header, v574, OS_LOG_TYPE_ERROR, "%s: No frame bodies in %s (%d: %s)", buf, 0x26u);
            }

            *__error() = v573;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v580 = *__error();
            v581 = [v924 debugDescription];
            v582 = v581;
            v583 = [v581 UTF8String];
            v584 = v906;
            v585 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No frame bodies in %s (%d: %s)", "frameBodies.firstObject.length > 0", v583, v905, [v906 UTF8String]);

            if (v585)
            {
              v836 = CFStringGetCStringPtr(v585, 0x8000100u);
              if (v836)
              {
                v837 = 0;
              }

              else
              {
                v836 = malloc_type_calloc(0x400uLL, 1uLL, 0x18C32872uLL);
                CFStringGetCString(v585, v836, 1024, 0x8000100u);
                v837 = v836;
              }

              if (qword_100127ED0)
              {
                v842 = qword_100127ED0;
              }

              else
              {
                v842 = __stderrp;
              }

              fprintf(v842, "%s\n", v836);
              if (v837)
              {
                free(v837);
              }

              CFRelease(v585);
            }

            else
            {
              v586 = sub_10003E080();
              if (os_log_type_enabled(v586, OS_LOG_TYPE_FAULT))
              {
                v587 = [v924 debugDescription];
                v588 = v587;
                v589 = [v587 UTF8String];
                v590 = v906;
                v591 = [v906 UTF8String];
                *buf = 136315906;
                *&buf[4] = "frameBodies.firstObject.length > 0";
                *&buf[12] = 2080;
                *&buf[14] = v589;
                *&buf[22] = 1024;
                *&buf[24] = v905;
                *&buf[28] = 2080;
                *&buf[30] = v591;
                _os_log_fault_impl(&_mh_execute_header, v586, OS_LOG_TYPE_FAULT, "Unable to format: %s: No frame bodies in %s (%d: %s)", buf, 0x26u);
              }

              if (qword_100127ED0)
              {
                v592 = qword_100127ED0;
              }

              else
              {
                v592 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v592);
            }

            *__error() = v580;
          }

          v593 = [v924 debugDescription];
          v594 = v593;
          [v593 UTF8String];
          v595 = v906;
          [v906 UTF8String];
          sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 469, "%s: No frame bodies in %s (%d: %s)", v596, v597, v598, v599, "frameBodies.firstObject.length > 0");

          goto LABEL_1248;
        }

        v252 = v895;
        v253 = v931;
        v254 = v232;
        v255 = v231;
        if (v969)
        {
LABEL_377:
          if (!v255)
          {
            goto LABEL_384;
          }
        }

        else if (!v231 || !v232)
        {
          if (byte_100127EC8 == 1)
          {
            v277 = *__error();
            v278 = sub_10003E080();
            if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109378;
              *&buf[4] = v905;
              *&buf[8] = 2112;
              *&buf[10] = v906;
              _os_log_error_impl(&_mh_execute_header, v278, OS_LOG_TYPE_ERROR, "Parsing spindump text: No start/end index for frame line in timeline report (%d: %@)", buf, 0x12u);
            }

            v253 = v931;
            v254 = v232;
            v255 = v231;
            *__error() = v277;
            v252 = v895;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v279 = *__error();
            v280 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No start/end index for frame line in timeline report (%d: %@)", v905, v906);
            v281 = v280;
            if (v280)
            {
              v282 = CFStringGetCStringPtr(v280, 0x8000100u);
              if (v282)
              {
                v283 = 0;
              }

              else
              {
                v282 = malloc_type_calloc(0x400uLL, 1uLL, 0x16CF65A4uLL);
                CFStringGetCString(v281, v282, 1024, 0x8000100u);
                v283 = v282;
              }

              if (qword_100127ED0)
              {
                v373 = qword_100127ED0;
              }

              else
              {
                v373 = __stderrp;
              }

              fprintf(v373, "%s\n", v282);
              if (v283)
              {
                free(v283);
              }

              CFRelease(v281);
            }

            else
            {
              v350 = sub_10003E080();
              if (os_log_type_enabled(v350, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109378;
                *&buf[4] = v905;
                *&buf[8] = 2112;
                *&buf[10] = v906;
                _os_log_fault_impl(&_mh_execute_header, v350, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No start/end index for frame line in timeline report (%d: %@)", buf, 0x12u);
              }

              if (qword_100127ED0)
              {
                v351 = qword_100127ED0;
              }

              else
              {
                v351 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v351);
              v253 = v931;
              v254 = v232;
              v255 = v231;
            }

            *__error() = v279;
            v252 = v895;
          }

          goto LABEL_377;
        }

        v256 = *p_startIndex;
        if (*p_startIndex && v255 < v256)
        {
          v910 = v255 + v910 - v256;
          v255 = *p_startIndex;
        }

LABEL_384:
        if (v254)
        {
          endIndex = self->_endIndex;
          if (endIndex)
          {
            if (v254 > endIndex)
            {
              v910 = v910 - v254 + endIndex;
              v254 = self->_endIndex;
            }
          }
        }

        v882 = v910 < 1;
        if (v910 > 0)
        {
          if (v253 > v927 && v253 != v927 + 1)
          {
            if (byte_100127EC8 == 1)
            {
              v258 = *__error();
              v259 = sub_10003E080();
              if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109378;
                *&buf[4] = v905;
                *&buf[8] = 2112;
                *&buf[10] = v906;
                _os_log_error_impl(&_mh_execute_header, v259, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
              }

              *__error() = v258;
            }

            v260 = 0;
            v154 = 2;
            if (byte_100127EC9 == 1 && dword_100127558 <= 3)
            {
              v261 = *__error();
              v262 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected indent for line (%d: %@)", v905, v906);
              v263 = v262;
              if (v262)
              {
                v264 = CFStringGetCStringPtr(v262, 0x8000100u);
                if (v264)
                {
                  v265 = 0;
                }

                else
                {
                  v264 = malloc_type_calloc(0x400uLL, 1uLL, 0x52C96D2BuLL);
                  CFStringGetCString(v263, v264, 1024, 0x8000100u);
                  v265 = v264;
                }

                if (qword_100127ED0)
                {
                  v363 = qword_100127ED0;
                }

                else
                {
                  v363 = __stderrp;
                }

                fprintf(v363, "%s\n", v264);
                if (v265)
                {
                  free(v265);
                }

                CFRelease(v263);
              }

              else
              {
                v341 = sub_10003E080();
                if (os_log_type_enabled(v341, OS_LOG_TYPE_FAULT))
                {
                  *buf = 67109378;
                  *&buf[4] = v905;
                  *&buf[8] = 2112;
                  *&buf[10] = v906;
                  _os_log_fault_impl(&_mh_execute_header, v341, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
                }

                if (qword_100127ED0)
                {
                  v342 = qword_100127ED0;
                }

                else
                {
                  v342 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v342);
              }

              v260 = 0;
              *__error() = v261;
              v154 = 2;
            }

            goto LABEL_553;
          }

          if (self->_isHeavy == v969)
          {
            if (v910 >= self->_omitFramesBelowSampleCount)
            {
              if (v252 <= 0)
              {
                v252 = v879;
                if (v879 <= 0)
                {
                  v252 = vcvtpd_s64_f64(log10(v910)) + 2;
                }
              }

              v895 = v252;
              v269 = v881;
              v270 = v881 << 32;
              v271 = &ptr[8 * v881 - 8];
              v886 = v255;
              while (1)
              {
                v272 = v269;
                v273 = v270;
                if (v269 < 1)
                {
                  break;
                }

                --v269;
                v274 = *v271;
                v271 -= 2;
                v270 -= 0x100000000;
                if (v274 < v253)
                {
                  v275 = v254;
                  v276 = v271[3];
                  goto LABEL_538;
                }
              }

              v275 = v254;
              v276 = 0;
LABEL_538:
              v352 = 0;
              v353 = v276 + v253;
              while (v352 < [v924 count])
              {
                v354 = [v924 objectAtIndexedSubscript:v352];
                v355 = v968;
                v356 = v967;
                v357 = v354;
                v358 = [v354 UTF8String];
                v359 = v916;
                sub_1000A2E60(a4, v356 + v355 * (v353 + v352), v900 != 0x7FFFFFFFFFFFFFFFLL, v910, v895, v358, v892, [v916 UTF8String], v886, v275);

                ++v352;
                v253 = v931;
              }

              if ([v924 count] <= 1)
              {
                v154 = 0;
                v260 = 1;
                v881 = v272;
              }

              else
              {
                ptr = malloc_type_realloc(ptr, 8 * (v272 + 1), 0x100004000313F17uLL);
                v360 = &ptr[v273 >> 29];
                *v360 = v253;
                v361 = [v924 count];
                if (v272 < 1)
                {
                  v362 = 0;
                }

                else
                {
                  v362 = *&ptr[8 * (v272 & 0x7FFFFFFF) - 4];
                }

                v154 = 0;
                v360[1] = v361 - 1 + v362;
                v260 = 1;
                v881 = v272 + 1;
              }

              goto LABEL_597;
            }
          }

          else
          {
            if (v253)
            {
              if (!v942)
              {
                if (byte_100127EC8 == 1)
                {
                  v717 = *__error();
                  v718 = sub_10003E080();
                  if (os_log_type_enabled(v718, OS_LOG_TYPE_ERROR))
                  {
                    v719 = v906;
                    v720 = [v906 UTF8String];
                    *buf = 136315906;
                    *&buf[4] = "previousNode";
                    *&buf[12] = 1024;
                    *&buf[14] = v931;
                    *&buf[18] = 1024;
                    *&buf[20] = v905;
                    *&buf[24] = 2080;
                    *&buf[26] = v720;
                    _os_log_error_impl(&_mh_execute_header, v718, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
                  }

                  *__error() = v717;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v721 = *__error();
                  v722 = v906;
                  v723 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent of %d (%d: %s)", "previousNode", v931, v905, [v906 UTF8String]);
                  v724 = v723;
                  if (v723)
                  {
                    v860 = CFStringGetCStringPtr(v723, 0x8000100u);
                    if (v860)
                    {
                      v861 = 0;
                    }

                    else
                    {
                      v860 = malloc_type_calloc(0x400uLL, 1uLL, 0xCAA63125uLL);
                      CFStringGetCString(v724, v860, 1024, 0x8000100u);
                      v861 = v860;
                    }

                    if (qword_100127ED0)
                    {
                      v864 = qword_100127ED0;
                    }

                    else
                    {
                      v864 = __stderrp;
                    }

                    fprintf(v864, "%s\n", v860);
                    if (v861)
                    {
                      free(v861);
                    }

                    CFRelease(v724);
                  }

                  else
                  {
                    v725 = sub_10003E080();
                    if (os_log_type_enabled(v725, OS_LOG_TYPE_FAULT))
                    {
                      v726 = v906;
                      v727 = [v906 UTF8String];
                      *buf = 136315906;
                      *&buf[4] = "previousNode";
                      *&buf[12] = 1024;
                      *&buf[14] = v931;
                      *&buf[18] = 1024;
                      *&buf[20] = v905;
                      *&buf[24] = 2080;
                      *&buf[26] = v727;
                      _os_log_fault_impl(&_mh_execute_header, v725, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
                    }

                    if (qword_100127ED0)
                    {
                      v728 = qword_100127ED0;
                    }

                    else
                    {
                      v728 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v728);
                  }

                  *__error() = v721;
                }

                v729 = v906;
                [v906 UTF8String];
                sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 561, "%s: no previousNode for indent of %d (%d: %s)", v730, v731, v732, v733, "previousNode");
                goto LABEL_1248;
              }

              WeakRetained = v942;
              if (v927 >= v253)
              {
                while (1)
                {
                  v285 = WeakRetained;
                  WeakRetained = objc_loadWeakRetained(WeakRetained + 7);

                  if (!WeakRetained)
                  {
                    break;
                  }

                  v25 = v927 <= v931;
                  v927 = (v927 - 1);
                  if (v25)
                  {
                    goto LABEL_433;
                  }
                }

                if (byte_100127EC8 == 1)
                {
                  v600 = *__error();
                  v601 = sub_10003E080();
                  if (os_log_type_enabled(v601, OS_LOG_TYPE_ERROR))
                  {
                    v602 = v906;
                    v603 = [v906 UTF8String];
                    *buf = 136316162;
                    *&buf[4] = "previousNode";
                    *&buf[12] = 1024;
                    *&buf[14] = v931;
                    *&buf[18] = 1024;
                    *&buf[20] = v927;
                    *&buf[24] = 1024;
                    *&buf[26] = v905;
                    *&buf[30] = 2080;
                    *&buf[32] = v603;
                    _os_log_error_impl(&_mh_execute_header, v601, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
                  }

                  *__error() = v600;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v605 = *__error();
                  v606 = v906;
                  v607 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", "previousNode", v931, v927, v905, [v906 UTF8String]);
                  v608 = v607;
                  if (v607)
                  {
                    v838 = CFStringGetCStringPtr(v607, 0x8000100u);
                    if (v838)
                    {
                      v839 = 0;
                    }

                    else
                    {
                      v838 = malloc_type_calloc(0x400uLL, 1uLL, 0x4AAF81ECuLL);
                      CFStringGetCString(v608, v838, 1024, 0x8000100u);
                      v839 = v838;
                    }

                    if (qword_100127ED0)
                    {
                      v845 = qword_100127ED0;
                    }

                    else
                    {
                      v845 = __stderrp;
                    }

                    fprintf(v845, "%s\n", v838);
                    if (v839)
                    {
                      free(v839);
                    }

                    CFRelease(v608);
                  }

                  else
                  {
                    v609 = sub_10003E080();
                    if (os_log_type_enabled(v609, OS_LOG_TYPE_FAULT))
                    {
                      v610 = v906;
                      v611 = [v906 UTF8String];
                      *buf = 136316162;
                      *&buf[4] = "previousNode";
                      *&buf[12] = 1024;
                      *&buf[14] = v931;
                      *&buf[18] = 1024;
                      *&buf[20] = v927;
                      *&buf[24] = 1024;
                      *&buf[26] = v905;
                      *&buf[30] = 2080;
                      *&buf[32] = v611;
                      _os_log_fault_impl(&_mh_execute_header, v609, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
                    }

                    if (qword_100127ED0)
                    {
                      v612 = qword_100127ED0;
                    }

                    else
                    {
                      v612 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v612);
                  }

                  *__error() = v605;
                }

                v613 = v906;
                [v906 UTF8String];
                sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 566, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", v614, v615, v616, v617, "previousNode");
                goto LABEL_1248;
              }

LABEL_433:
              v942 = WeakRetained;
              v286 = sub_1000C5238();
            }

            else
            {
              if (obj)
              {
                v964 = 0u;
                v965 = 0u;
                v962 = 0u;
                v963 = 0u;
                obj = obj;
                v337 = [obj countByEnumeratingWithState:&v962 objects:v983 count:16];
                if (v337)
                {
                  v338 = *v963;
LABEL_507:
                  v339 = 0;
                  while (1)
                  {
                    if (*v963 != v338)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v340 = *(*(&v962 + 1) + 8 * v339);
                    if (sub_1000C5408())
                    {
                      break;
                    }

                    if (v337 == ++v339)
                    {
                      v337 = [obj countByEnumeratingWithState:&v962 objects:v983 count:16];
                      if (v337)
                      {
                        goto LABEL_507;
                      }

                      goto LABEL_513;
                    }
                  }

                  v286 = v340;

                  if (v286)
                  {
                    goto LABEL_594;
                  }
                }

                else
                {
LABEL_513:
                }
              }

              else
              {
                obj = objc_alloc_init(NSMutableArray);
              }

              v286 = sub_100098474(SPTreeNode, 0, v900 != 0x7FFFFFFFFFFFFFFFLL, v924, v892, v916, 0);
              [obj addObject:v286];
            }

            if (v286)
            {
LABEL_594:
              v286[3] += v910;
            }

            v387 = v942;
            v942 = v286;
          }

          v154 = 0;
          v260 = 1;
          goto LABEL_597;
        }

        v260 = 0;
        if (v255)
        {
          v266 = self->_endIndex;
          if (v266)
          {
            v267 = v255 <= v266;
          }

          else
          {
            v267 = 1;
          }

          v268 = !v267;
          v875 |= v268;
        }

        v154 = 5;
LABEL_553:
        v931 = v927;
LABEL_597:

        v921 = 0;
        v215 = 0;
        if (v260)
        {
          goto LABEL_676;
        }

        goto LABEL_785;
      }

      v155 = [v945 firstMatchInString:v150 options:0 range:{0, objc_msgSend(v150, "length")}];
      if (!v155)
      {
        v215 = [v944 firstMatchInString:v150 options:0 range:{0, objc_msgSend(v150, "length")}];
        if (v215)
        {
          v921 = 0;
LABEL_587:
          v154 = 5;
          goto LABEL_784;
        }

        v333 = [v941 firstMatchInString:v150 options:0 range:{0, objc_msgSend(v150, "length")}];
        v334 = v333;
        if (!v333)
        {
          if (self->_isHeavy == v969 || !obj)
          {
LABEL_743:
            if ([v150 length] && v927 != -1)
            {
              if (byte_100127EC8 == 1)
              {
                v496 = *__error();
                v497 = sub_10003E080();
                if (os_log_type_enabled(v497, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109378;
                  *&buf[4] = v905;
                  *&buf[8] = 2112;
                  *&buf[10] = v899;
                  _os_log_error_impl(&_mh_execute_header, v497, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected end of call tree (%d: %@)", buf, 0x12u);
                }

                v150 = v899;
                *__error() = v496;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v498 = *__error();
                v499 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected end of call tree (%d: %@)", v905, v150);
                v500 = v499;
                if (v499)
                {
                  v501 = CFStringGetCStringPtr(v499, 0x8000100u);
                  if (v501)
                  {
                    v502 = 0;
                  }

                  else
                  {
                    v501 = malloc_type_calloc(0x400uLL, 1uLL, 0x68FCD31CuLL);
                    CFStringGetCString(v500, v501, 1024, 0x8000100u);
                    v502 = v501;
                  }

                  if (qword_100127ED0)
                  {
                    v513 = qword_100127ED0;
                  }

                  else
                  {
                    v513 = __stderrp;
                  }

                  fprintf(v513, "%s\n", v501);
                  if (v502)
                  {
                    free(v502);
                  }

                  CFRelease(v500);
                }

                else
                {
                  v507 = sub_10003E080();
                  if (os_log_type_enabled(v507, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 67109378;
                    *&buf[4] = v905;
                    *&buf[8] = 2112;
                    *&buf[10] = v899;
                    _os_log_fault_impl(&_mh_execute_header, v507, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected end of call tree (%d: %@)", buf, 0x12u);
                  }

                  if (qword_100127ED0)
                  {
                    v508 = qword_100127ED0;
                  }

                  else
                  {
                    v508 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v508);
                }

                *__error() = v498;
              }
            }

            fprintf(a4, "%s\n", v976[3]);
            if ([v899 containsString:@"Binary Images:"])
            {
              v956 = 0u;
              v957 = 0u;
              v954 = 0u;
              v955 = 0u;
              v948 = v947;
              v514 = 0;
              v515 = 0;
              v516 = [v948 countByEnumeratingWithState:&v954 objects:v981 count:16];
              if (v516)
              {
                v517 = *v955;
                do
                {
                  v518 = 0;
                  do
                  {
                    if (*v955 != v517)
                    {
                      objc_enumerationMutation(v948);
                    }

                    v519 = *(*(&v954 + 1) + 8 * v518);
                    v520 = sub_1000C5624(v519);
                    v521 = [v520 length];
                    v522 = v521;
                    if (!v521)
                    {
                      v523 = sub_1000C5684(v519);
                      v524 = [v523 length];
                      if (v524)
                      {
                        v522 = v524;
                      }

                      else
                      {
                        v522 = 3;
                      }
                    }

                    v525 = sub_1000C56E4(v519);
                    if ([v525 length])
                    {
                      v522 += [v525 length] + 1;
                    }

                    if (v519)
                    {
                      Property = objc_getProperty(v519, v526, 48, 1);
                    }

                    else
                    {
                      Property = 0;
                    }

                    v528 = Property;
                    v529 = [v528 length];

                    if (v514 <= v522)
                    {
                      v514 = v522;
                    }

                    else
                    {
                      v514 = v514;
                    }

                    if (v515 <= v529)
                    {
                      v515 = v529;
                    }

                    v518 = v518 + 1;
                  }

                  while (v516 != v518);
                  v530 = [v948 countByEnumeratingWithState:&v954 objects:v981 count:16];
                  v516 = v530;
                }

                while (v530);
              }

              v952 = 0u;
              v953 = 0u;
              v950 = 0u;
              v951 = 0u;
              v947 = v948;
              v909 = [v947 countByEnumeratingWithState:&v950 objects:v980 count:16];
              if (v909)
              {
                v919 = 0;
                v531 = *v951;
                v876 = *v951;
                while (1)
                {
                  if (v531 != v876)
                  {
                    objc_enumerationMutation(v947);
                  }

                  v532 = *(*(&v950 + 1) + 8 * v919);
                  if (v532)
                  {
                    selfb = *(v532 + 56);
                    v878 = *(v532 + 64);
                    v533 = "";
                    if (*(v532 + 32))
                    {
                      v533 = "*";
                    }
                  }

                  else
                  {
                    selfb = 0;
                    v878 = 0;
                    v533 = "";
                  }

                  v889 = v533;
                  v943 = sub_1000C5624(v532);
                  v534 = v943;
                  v904 = [v943 UTF8String];
                  v934 = sub_1000C5684(v532);
                  v535 = v934;
                  v897 = [v934 UTF8String];
                  v928 = sub_1000C56E4(v532);
                  v536 = v928;
                  v894 = [v928 UTF8String];
                  if (v532)
                  {
                    v538 = objc_getProperty(v532, v537, 40, 1);
                  }

                  else
                  {
                    v538 = 0;
                  }

                  v539 = v538;
                  v540 = [v539 uuid];
                  v926 = [v540 UUIDString];
                  v541 = v926;
                  v887 = [v926 UTF8String];
                  if (v532)
                  {
                    v543 = objc_getProperty(v532, v542, 48, 1);
                  }

                  else
                  {
                    v543 = 0;
                  }

                  v913 = v543;
                  v544 = v913;
                  v546 = [v913 UTF8String];
                  if (v532)
                  {
                    v547 = objc_getProperty(v532, v545, 40, 1);
                  }

                  else
                  {
                    v547 = 0;
                  }

                  v548 = v547;
                  v549 = [v548 path];
                  v550 = v549;
                  v551 = [v549 UTF8String];
                  v880 = v540;
                  if (selfb)
                  {
                    snprintf(buf, 0x20uLL, "%s0x%llx", v889, selfb);
                    fprintf(a4, "%22s - ", buf);
                    if (v878)
                    {
                      fprintf(a4, "%#18llx  ");
                    }

                    else
                    {
                      fwrite("               ???  ", 0x14uLL, 1uLL, a4);
                    }
                  }

                  else
                  {
                    fprintf(a4, "%2s");
                  }

                  v552 = v539;
                  v553 = "???";
                  if (v897)
                  {
                    v553 = v897;
                  }

                  if (v904)
                  {
                    v553 = v904;
                  }

                  v558 = fprintf(a4, "%s", v553);
                  if (v894)
                  {
                    v558 = (fprintf(a4, " %s", v894) + v558);
                  }

                  if (v558 > v514)
                  {
                    break;
                  }

                  fprintf(a4, "%*s", v514 + 1 - v558, "");
                  fprintf(a4, "<%s>", v887);
                  if (v546)
                  {
                    v559 = fprintf(a4, "%s", v546);
                  }

                  else
                  {
                    v559 = 0;
                  }

                  if (v515 > v559)
                  {
                    fprintf(a4, "%*s", v515 - v559, "");
                  }

                  if (v551)
                  {
                    fprintf(a4, "  %s", v551);
                  }

                  fputc(10, a4);

                  v919 = v919 + 1;
                  if (v919 >= v909)
                  {
                    v909 = [v947 countByEnumeratingWithState:&v950 objects:v980 count:16];
                    if (!v909)
                    {
                      goto LABEL_876;
                    }

                    v919 = 0;
                  }

                  v531 = *v951;
                }

                if (byte_100127EC8 == 1)
                {
                  v700 = *__error();
                  v701 = sub_10003E080();
                  if (os_log_type_enabled(v701, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316418;
                    *&buf[4] = "numChars < nameAndVersionWidth + 1";
                    *&buf[12] = 1024;
                    *&buf[14] = v558;
                    *&buf[18] = 1024;
                    *&buf[20] = v514;
                    *&buf[24] = 2080;
                    *&buf[26] = v904;
                    *&buf[34] = 2080;
                    *&buf[36] = v897;
                    *&buf[44] = 2080;
                    *&buf[46] = v894;
                    _os_log_error_impl(&_mh_execute_header, v701, OS_LOG_TYPE_ERROR, "%s: Printed %d characters when max is %d: %s, %s, %s", buf, 0x36u);
                  }

                  *__error() = v700;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v702 = *__error();
                  v703 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Printed %d characters when max is %d: %s, %s, %s", "numChars < nameAndVersionWidth + 1", v558, v514, v904, v897, v894);
                  v704 = v703;
                  if (v703)
                  {
                    v778 = CFStringGetCStringPtr(v703, 0x8000100u);
                    if (v778)
                    {
                      v779 = 0;
                    }

                    else
                    {
                      v778 = malloc_type_calloc(0x400uLL, 1uLL, 0x339E6499uLL);
                      CFStringGetCString(v704, v778, 1024, 0x8000100u);
                      v779 = v778;
                    }

                    if (qword_100127ED0)
                    {
                      v799 = qword_100127ED0;
                    }

                    else
                    {
                      v799 = __stderrp;
                    }

                    fprintf(v799, "%s\n", v778);
                    if (v779)
                    {
                      free(v779);
                    }

                    CFRelease(v704);
                  }

                  else
                  {
                    v705 = sub_10003E080();
                    if (os_log_type_enabled(v705, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136316418;
                      *&buf[4] = "numChars < nameAndVersionWidth + 1";
                      *&buf[12] = 1024;
                      *&buf[14] = v558;
                      *&buf[18] = 1024;
                      *&buf[20] = v514;
                      *&buf[24] = 2080;
                      *&buf[26] = v904;
                      *&buf[34] = 2080;
                      *&buf[36] = v897;
                      *&buf[44] = 2080;
                      *&buf[46] = v894;
                      _os_log_fault_impl(&_mh_execute_header, v705, OS_LOG_TYPE_FAULT, "Unable to format: %s: Printed %d characters when max is %d: %s, %s, %s", buf, 0x36u);
                    }

                    if (qword_100127ED0)
                    {
                      v706 = qword_100127ED0;
                    }

                    else
                    {
                      v706 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v706);
                  }

                  *__error() = v702;
                }

                sub_10003DF54("PrintLoadInfoLine", "SPTextualReportParser.m", 2394, "%s: Printed %d characters when max is %d: %s, %s, %s", v554, v555, v556, v557, "numChars < nameAndVersionWidth + 1");
                goto LABEL_1248;
              }

LABEL_876:

              if ((v935 & 1) == 0)
              {
                sub_1000A0E84(v5, v905, v944, 0);
                v895 = 0;
                v875 = 0;
                v942 = 0;
                v931 = 0xFFFFFFFFLL;
                v920 = v947;
                v947 = v921 = 0;

                goto LABEL_676;
              }
            }

            v921 = 0;
            v895 = 0;
            v875 = 0;
            v942 = 0;
            v931 = 0xFFFFFFFFLL;
            goto LABEL_676;
          }

          if (![v150 length])
          {
            v428 = objc_alloc_init(NSMutableArray);
            [obj sortUsingComparator:&stru_100115F08];
            [v428 addObject:obj];
            v429 = [obj objectAtIndex:0];
            v430 = v429;
            if (v429)
            {
              v431 = *(v429 + 12);
            }

            else
            {
              v431 = 0.0;
            }

            v432 = 0;
            v918 = vcvtpd_s64_f64(log10(v431));
            v925 = v428;
            while (1)
            {
              v881 = v432;
              while (1)
              {

                if (![v925 count])
                {

                  obj = 0;
                  v150 = v899;
                  goto LABEL_743;
                }

                v430 = [v925 lastObject];
                if ([v430 count])
                {
                  break;
                }

                [v925 removeLastObject];
              }

              v933 = [v430 objectAtIndex:0];
              [v430 removeObjectAtIndex:0];
              v433 = [v925 count];
              v435 = v433;
              omitFramesBelowSampleCount = self->_omitFramesBelowSampleCount;
              v908 = v430;
              if (omitFramesBelowSampleCount >= 1)
              {
                v437 = v933;
                if (v933)
                {
                  v437 = *(v933 + 3);
                }

                if (v437 < omitFramesBelowSampleCount)
                {
                  goto LABEL_736;
                }
              }

              v438 = v432;
              v439 = v432 << 32;
              v440 = &ptr[8 * v432 - 8];
              v896 = v433 - 1;
              while (1)
              {
                v441 = v438;
                v442 = v439;
                if (v438 < 1)
                {
                  break;
                }

                --v438;
                v443 = *v440;
                v440 -= 2;
                v439 -= 0x100000000;
                if (v443 < v433 - 1)
                {
                  v893 = v442;
                  v903 = v441;
                  v444 = v440[3];
                  goto LABEL_693;
                }
              }

              v893 = v439;
              v903 = v438;
              v444 = 0;
LABEL_693:
              v445 = v933;
              if (v933)
              {
                v445 = objc_getProperty(v933, v434, 16, 1);
              }

              v446 = v445;
              v447 = v446 == 0;

              if (v447)
              {
                if (v933)
                {
                  v478 = objc_getProperty(v933, v448, 24, 1);
                  if (v478)
                  {

                    v481 = v967 + v968 * (v444 + v896);
                    goto LABEL_724;
                  }

                  v482 = objc_getProperty(v933, v479, 40, 1);
                }

                else
                {
                  v482 = 0;
                }

                v483 = v482;
                v484 = v483 == 0;

                if (!v484)
                {
                  v481 = v967 + v968 * (v444 + v896);
                  if (v933)
                  {
LABEL_724:
                    v485 = *(v933 + 8);
                    v486 = *(v933 + 3);
                    v487 = objc_getProperty(v933, v480, 24, 1);
                  }

                  else
                  {
                    v486 = 0;
                    v485 = 0;
                    v487 = 0;
                  }

                  v475 = v487;
                  v488 = v475;
                  v490 = [v475 UTF8String];
                  if (v933)
                  {
                    v491 = objc_getProperty(v933, v489, 40, 1);
                  }

                  else
                  {
                    v491 = 0;
                  }

                  v492 = v491;
                  v493 = v492;
                  sub_1000A2F80(a4, v481, v485 & 1, v486, v918 + 2, v490, [v492 UTF8String], 0, 0);

                  v881 = v903;
LABEL_730:

                  goto LABEL_731;
                }

                if (byte_100127EC8 == 1)
                {
                  v847 = *__error();
                  v848 = sub_10003E080();
                  if (os_log_type_enabled(v848, OS_LOG_TYPE_ERROR))
                  {
                    v849 = [v933 debugDescription];
                    v850 = v849;
                    sub_1000C6360([v849 UTF8String], buf, v848, v849);
                  }

                  *__error() = v847;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v851 = *__error();
                  v852 = [v933 debugDescription];
                  v853 = v852;
                  v854 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No angle bracket contents nor state info for non-frame (%s)", "heaviestNode.angleBracketContents || heaviestNode.stateInfo", [v852 UTF8String]);

                  if (v854)
                  {
                    v866 = CFStringGetCStringPtr(v854, 0x8000100u);
                    if (v866)
                    {
                      v867 = 0;
                    }

                    else
                    {
                      v866 = malloc_type_calloc(0x400uLL, 1uLL, 0xFE31698uLL);
                      CFStringGetCString(v854, v866, 1024, 0x8000100u);
                      v867 = v866;
                    }

                    if (qword_100127ED0)
                    {
                      v868 = qword_100127ED0;
                    }

                    else
                    {
                      v868 = __stderrp;
                    }

                    fprintf(v868, "%s\n", v866);
                    if (v867)
                    {
                      free(v867);
                    }

                    CFRelease(v854);
                  }

                  else
                  {
                    v855 = sub_10003E080();
                    if (os_log_type_enabled(v855, OS_LOG_TYPE_FAULT))
                    {
                      v856 = [v933 debugDescription];
                      v857 = v856;
                      sub_1000C63BC([v856 UTF8String], v996, v855, v856);
                    }

                    if (qword_100127ED0)
                    {
                      v858 = qword_100127ED0;
                    }

                    else
                    {
                      v858 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v858);
                  }

                  *__error() = v851;
                }

                v869 = [v933 debugDescription];
                v870 = v869;
                [v869 UTF8String];
                sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 820, "%s: No angle bracket contents nor state info for non-frame (%s)", v871, v872, v873, v874, "heaviestNode.angleBracketContents || heaviestNode.stateInfo");

LABEL_1248:
                abort();
              }

              v449 = 0;
              v912 = v444 + v435 - 1;
              while (1)
              {
                v450 = v933;
                if (v933)
                {
                  v450 = objc_getProperty(v933, v448, 16, 1);
                }

                v451 = v450;
                v452 = v449 < [v451 count];

                if (!v452)
                {
                  break;
                }

                if (v933)
                {
                  v454 = objc_getProperty(v933, v453, 16, 1);
                }

                else
                {
                  v454 = 0;
                }

                v455 = v454;
                v456 = [v455 objectAtIndexedSubscript:v449];

                if (v933)
                {
                  v457 = *(v933 + 8);
                  v458 = *(v933 + 3);
                }

                else
                {
                  v457 = 0;
                  v458 = 0;
                }

                v459 = v968;
                v460 = v967;
                v461 = v456;
                v463 = [v456 UTF8String];
                v464 = v933;
                if (v933)
                {
                  v465 = *(v933 + 4);
                  v464 = objc_getProperty(v933, v462, 40, 1);
                }

                else
                {
                  v465 = 0;
                }

                v466 = v464;
                v467 = v466;
                sub_1000A2E60(a4, v460 + v459 * (v912 + v449), v457 & 1, v458, v918 + 2, v463, v465, [v466 UTF8String], 0, 0);

                ++v449;
              }

              v468 = v933;
              if (v933)
              {
                v468 = objc_getProperty(v933, v453, 16, 1);
              }

              v469 = v468;
              v470 = [v469 count] > 1;

              if (v470)
              {
                ptr = malloc_type_realloc(ptr, 8 * (v903 + 1), 0x100004000313F17uLL);
                v473 = &ptr[v893 >> 29];
                *v473 = v896;
                if (v933)
                {
                  v474 = objc_getProperty(v933, v472, 16, 1);
                }

                else
                {
                  v474 = 0;
                }

                v475 = v474;
                v476 = [v475 count];
                if (v903 < 1)
                {
                  v477 = 0;
                }

                else
                {
                  v477 = *&ptr[8 * (v903 & 0x7FFFFFFF) - 4];
                }

                v473[1] = v476 - 1 + v477;
                v881 = v903 + 1;
                goto LABEL_730;
              }

              v881 = v903;
LABEL_731:
              if (v933)
              {
                v494 = objc_getProperty(v933, v471, 48, 1);
                v495 = v494;
                if (v494 && [v494 count])
                {
                  [v495 sortUsingComparator:&stru_100115F08];
                  [v925 addObject:v495];
                }
              }

              else
              {
                v495 = 0;
              }

LABEL_736:
              v432 = v881;
              v430 = v908;
            }
          }

          if (byte_100127EC8 == 1)
          {
            v364 = *__error();
            v365 = sub_10003E080();
            if (os_log_type_enabled(v365, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109378;
              *&buf[4] = v905;
              *&buf[8] = 2112;
              *&buf[10] = v150;
              _os_log_error_impl(&_mh_execute_header, v365, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected line in call tree, ignoring (%d: %@)", buf, 0x12u);
            }

            *__error() = v364;
          }

          v921 = 0;
          v154 = 5;
          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            v215 = 0;
            goto LABEL_784;
          }

          v366 = *__error();
          v367 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected line in call tree, ignoring (%d: %@)", v905, v150);
          v368 = v367;
          if (v367)
          {
            v369 = CFStringGetCStringPtr(v367, 0x8000100u);
            if (v369)
            {
              v370 = 0;
            }

            else
            {
              v369 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB90DDBAuLL);
              CFStringGetCString(v368, v369, 1024, 0x8000100u);
              v370 = v369;
            }

            if (qword_100127ED0)
            {
              v560 = qword_100127ED0;
            }

            else
            {
              v560 = __stderrp;
            }

            fprintf(v560, "%s\n", v369);
            if (v370)
            {
              free(v370);
            }

            CFRelease(v368);
          }

          else
          {
            v510 = sub_10003E080();
            if (os_log_type_enabled(v510, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109378;
              *&buf[4] = v905;
              *&buf[8] = 2112;
              *&buf[10] = v150;
              _os_log_fault_impl(&_mh_execute_header, v510, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected line in call tree, ignoring (%d: %@)", buf, 0x12u);
            }

            if (qword_100127ED0)
            {
              v511 = qword_100127ED0;
            }

            else
            {
              v511 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v511);
          }

          v561 = __error();
          v921 = 0;
          v215 = 0;
          *v561 = v366;
          goto LABEL_587;
        }

        v336 = [v333 rangeWithName:@"binaryIndex"];
        if (v336 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_503:
          fprintf(v147, "%s\n", v976[3]);
        }

        else
        {
          v374 = [v150 substringWithRange:{v336, v335}];
          v375 = sub_1000A2DC0(v374);

          v376 = v150;
          if (v375 >= [v947 count])
          {
            if (byte_100127EC8 == 1)
            {
              v404 = *__error();
              v405 = sub_10003E080();
              if (os_log_type_enabled(v405, OS_LOG_TYPE_ERROR))
              {
                v562 = [v947 count];
                *buf = 134218754;
                *&buf[4] = v375;
                *&buf[12] = 2048;
                *&buf[14] = v562;
                *&buf[22] = 1024;
                *&buf[24] = v905;
                *&buf[28] = 2112;
                *&buf[30] = v150;
                _os_log_error_impl(&_mh_execute_header, v405, OS_LOG_TYPE_ERROR, "Parsing spindump text: corrupt condensed file, UUID line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
              }

              v376 = v150;
              *__error() = v404;
            }

            v147 = a4;
            if (byte_100127EC9 == 1 && dword_100127558 <= 3)
            {
              v406 = *__error();
              v407 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: corrupt condensed file, UUID line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", v375, [v947 count], v905, v376);
              v408 = v407;
              if (v407)
              {
                v409 = CFStringGetCStringPtr(v407, 0x8000100u);
                if (v409)
                {
                  v410 = 0;
                }

                else
                {
                  v409 = malloc_type_calloc(0x400uLL, 1uLL, 0x8168DFCBuLL);
                  CFStringGetCString(v408, v409, 1024, 0x8000100u);
                  v410 = v409;
                }

                if (qword_100127ED0)
                {
                  v512 = qword_100127ED0;
                }

                else
                {
                  v512 = __stderrp;
                }

                fprintf(v512, "%s\n", v409);
                if (v410)
                {
                  free(v410);
                }

                CFRelease(v408);
              }

              else
              {
                v505 = sub_10003E080();
                if (os_log_type_enabled(v505, OS_LOG_TYPE_FAULT))
                {
                  v563 = [v947 count];
                  *buf = 134218754;
                  *&buf[4] = v375;
                  *&buf[12] = 2048;
                  *&buf[14] = v563;
                  *&buf[22] = 1024;
                  *&buf[24] = v905;
                  *&buf[28] = 2112;
                  *&buf[30] = v150;
                  _os_log_fault_impl(&_mh_execute_header, v505, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: corrupt condensed file, UUID line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
                }

                if (qword_100127ED0)
                {
                  v506 = qword_100127ED0;
                }

                else
                {
                  v506 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v506);
              }

              *__error() = v406;
              v147 = a4;
            }

            goto LABEL_503;
          }

          v377 = [v947 objectAtIndexedSubscript:v375];
          if ([v334 rangeWithName:@"whitespace"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v379 = 13;
          }

          else
          {
            v379 = v378;
          }

          if (v377)
          {
            v380 = objc_getProperty(v377, v378, 40, 1);
          }

          else
          {
            v380 = 0;
          }

          v381 = v380;
          v382 = [v381 uuid];
          v383 = [v382 UUIDString];
          v384 = v383;
          fprintf(a4, "UUID:%*s%s\n", v379, "", [v383 UTF8String]);
        }

        v921 = 0;
        v215 = 0;
        goto LABEL_587;
      }

      v156 = v967;
      v157 = v968;
      v932 = v150;
      v921 = v155;
      v158 = objc_autoreleasePoolPush();
      v160 = [v921 rangeWithName:@"angleBracketContents"];
      if (v160 == 0x7FFFFFFFFFFFFFFFLL && (v160 = [v921 rangeWithName:@"otherInfo"], v160 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v161 = 0;
      }

      else
      {
        v161 = [v932 substringWithRange:{v160, v159}];
      }

      v196 = [v921 rangeWithName:@"stateInfo"];
      if (v196 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v197 = 0;
      }

      else
      {
        v216 = [v932 substringWithRange:{v196, v195}];
        v217 = v216;
        if (v935)
        {
          v218 = sub_1000A2DC0(v216);
          v219 = objc_alloc_init(NSMutableString);
          v197 = v219;
          if ((v218 & 2) != 0)
          {
            v220 = @"Frontmost App";
          }

          else
          {
            v220 = @"Non-Frontmost App";
          }

          [v219 appendString:v220];
          if ((v218 & 0x20) != 0)
          {
            v221 = @", Suppressed";
          }

          else
          {
            v221 = @", Non-Suppressed";
          }

          [v197 appendString:v221];
          if ((v218 & 0x80) != 0)
          {
            v222 = @", Kernel mode";
          }

          else
          {
            v222 = @", User mode";
          }

          [v197 appendString:v222];
          if ((v218 & 0x10) != 0)
          {
            if ((v218 & 4) != 0)
            {
              v223 = @", User Idle";
            }

            else
            {
              v223 = @", User Active";
            }

            [v197 appendString:v223];
          }

          v224 = (v218 & 8) != 0 ? @", On Battery" : @", On AC";
          [v197 appendString:v224];
          [v197 appendFormat:@", Effective %s", sub_1000A57B8((v218 >> 8) & 7)];
          [v197 appendFormat:@", Requested %s", sub_1000A57B8((v218 >> 11) & 7)];
          [v197 appendFormat:@", Override %s", sub_1000A57B8((v218 >> 14) & 7)];
        }

        else
        {
          v197 = v216;
        }
      }

      v288 = [v921 rangeWithName:@"count"];
      if (v288 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v289 = 0xFFFFFFFFLL;
      }

      else
      {
        v290 = [v932 substringWithRange:{v288, v287}];
        sub_1000A2DC0(v290);

        if ((v935 & 1) == 0 && [v921 rangeWithName:@"countAndWhitespace"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (byte_100127EC8 == 1)
          {
            v734 = *__error();
            v735 = sub_10003E080();
            if (os_log_type_enabled(v735, OS_LOG_TYPE_ERROR))
            {
              v736 = v932;
              [v932 UTF8String];
              sub_1000C61C8();
            }

            *__error() = v734;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v737 = *__error();
            v738 = v932;
            v739 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count and whitespace (%d: %s)", "range.location != NSNotFound", v905, [v932 UTF8String]);
            v740 = v739;
            if (v739)
            {
              v814 = CFStringGetCStringPtr(v739, 0x8000100u);
              if (v814)
              {
                v815 = 0;
              }

              else
              {
                v814 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7B0184FuLL);
                CFStringGetCString(v740, v814, 1024, 0x8000100u);
                v815 = v814;
              }

              if (qword_100127ED0)
              {
                v824 = qword_100127ED0;
              }

              else
              {
                v824 = __stderrp;
              }

              fprintf(v824, "%s\n", v814);
              if (v815)
              {
                free(v815);
              }

              CFRelease(v740);
            }

            else
            {
              v741 = sub_10003E080();
              if (os_log_type_enabled(v741, OS_LOG_TYPE_FAULT))
              {
                v742 = v932;
                [v932 UTF8String];
                sub_1000C620C();
              }

              if (qword_100127ED0)
              {
                v743 = qword_100127ED0;
              }

              else
              {
                v743 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v743);
            }

            *__error() = v737;
          }

          v825 = v932;
          [v932 UTF8String];
          sub_10003DF54("ParseCallTreeNonFrameLine", "SPTextualReportParser.m", 2186, "%s: frame match with no count and whitespace (%d: %s)", v826, v827, v828, v829, "range.location != NSNotFound");
          goto LABEL_1248;
        }

        v289 = sub_1000A0FE4(v932, v921, v935, v156, v157);
      }

      v292 = [v921 rangeWithName:@"indentWhitespace"] == 0x7FFFFFFFFFFFFFFFLL ? 0xFFFFFFFFLL : v291;
      v907 = [v921 rangeWithName:@"kernelDot"];
      v294 = [v921 rangeWithName:@"count"];
      if (v294 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v296 = [v932 substringWithRange:{v294, v293}];
      v295 = sub_1000A2DC0(v296);

      if (v935)
      {
        goto LABEL_446;
      }

      v297 = [v921 rangeWithName:@"countAndWhitespace"];
      v901 = v298;
      if (v297 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (byte_100127EC8 == 1)
        {
          v744 = *__error();
          v745 = sub_10003E080();
          if (os_log_type_enabled(v745, OS_LOG_TYPE_ERROR))
          {
            v746 = v932;
            [v932 UTF8String];
            sub_1000C61C8();
          }

          *__error() = v744;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v747 = *__error();
          v748 = v932;
          v749 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: frame match with no count and whitespace (%d: %s)", "range.location != NSNotFound", v905, [v932 UTF8String]);
          v750 = v749;
          if (v749)
          {
            v816 = CFStringGetCStringPtr(v749, 0x8000100u);
            if (v816)
            {
              v817 = 0;
            }

            else
            {
              v816 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3B51BFCuLL);
              CFStringGetCString(v750, v816, 1024, 0x8000100u);
              v817 = v816;
            }

            if (qword_100127ED0)
            {
              v830 = qword_100127ED0;
            }

            else
            {
              v830 = __stderrp;
            }

            fprintf(v830, "%s\n", v816);
            if (v817)
            {
              free(v817);
            }

            CFRelease(v750);
          }

          else
          {
            v751 = sub_10003E080();
            if (os_log_type_enabled(v751, OS_LOG_TYPE_FAULT))
            {
              v752 = v932;
              [v932 UTF8String];
              sub_1000C620C();
            }

            if (qword_100127ED0)
            {
              v753 = qword_100127ED0;
            }

            else
            {
              v753 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v753);
          }

          *__error() = v747;
        }

        v831 = v932;
        [v932 UTF8String];
        sub_10003DF54("ParseCallTreeNonFrameLine", "SPTextualReportParser.m", 2219, "%s: frame match with no count and whitespace (%d: %s)", v832, v833, v834, v835, "range.location != NSNotFound");
        goto LABEL_1248;
      }

LABEL_448:
      v300 = [v921 rangeWithName:@"startIndex"];
      if (v300 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v301 = 0;
        v302 = 0;
      }

      else
      {
        v303 = [v932 substringWithRange:{v300, v299}];
        v301 = sub_1000A2DC0(v303);

        v305 = [v921 rangeWithName:@"endIndex"];
        if (v305 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v302 = v301;
        }

        else
        {
          v306 = [v932 substringWithRange:{v305, v304}];
          v302 = sub_1000A2DC0(v306);
        }
      }

      objc_autoreleasePoolPop(v158);
      v307 = v161;
      v308 = v197;

      v917 = v161;
      v911 = v197;
      v309 = v295;
      if (v295 > 0)
      {
        v310 = v881;
        v311 = v895;
        if (v301)
        {
          v312 = *p_startIndex;
          if (*p_startIndex)
          {
            if (v301 < v312)
            {
              v309 = v301 + v295 - v312;
              v301 = *p_startIndex;
            }
          }
        }

        if (v302)
        {
          v313 = self->_endIndex;
          if (v313)
          {
            if (v302 > v313)
            {
              v309 = v309 - v302 + v313;
              v302 = self->_endIndex;
            }
          }
        }

        if (v309 <= 0)
        {
          if (v301)
          {
            v330 = self->_endIndex;
            if (v330)
            {
              v331 = v301 <= v330;
            }

            else
            {
              v331 = 1;
            }

            v332 = !v331;
            v875 |= v332;
          }

LABEL_782:
          v154 = 5;
LABEL_783:

          v215 = 0;
LABEL_784:
          v931 = v927;
          goto LABEL_785;
        }

        goto LABEL_463;
      }

      v311 = v895;
      v310 = v881;
      if (v895 >= 1)
      {
        v315 = v292 - (v967 + v895);
        if (v292 > v967 + v895)
        {
          v316 = (v315 / v968);
          if ((v316 & 0x80000000) != 0)
          {
            if (byte_100127EC8 == 1)
            {
              v393 = *__error();
              v394 = sub_10003E080();
              if (os_log_type_enabled(v394, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109890;
                *&buf[4] = v316;
                *&buf[8] = 1024;
                *&buf[10] = v292;
                *&buf[14] = 1024;
                *&buf[16] = v905;
                *&buf[20] = 2112;
                *&buf[22] = v932;
                _os_log_debug_impl(&_mh_execute_header, v394, OS_LOG_TYPE_DEBUG, "Parsing spindump text: Bad indent level %d for %d whitespace (%d: %@)", buf, 0x1Eu);
              }

              v309 = v295;
              *__error() = v393;
              v310 = v881;
              v311 = v895;
            }

            v289 = 0;
            if (byte_100127EC9 == 1 && dword_100127558 <= 0)
            {
              v395 = *__error();
              v396 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Bad indent level %d for %d whitespace (%d: %@)", v316, v292, v905, v932);
              v397 = v396;
              if (v396)
              {
                v398 = CFStringGetCStringPtr(v396, 0x8000100u);
                if (v398)
                {
                  v399 = 0;
                }

                else
                {
                  v398 = malloc_type_calloc(0x400uLL, 1uLL, 0xE13E54BAuLL);
                  CFStringGetCString(v397, v398, 1024, 0x8000100u);
                  v399 = v398;
                }

                if (qword_100127ED0)
                {
                  v509 = qword_100127ED0;
                }

                else
                {
                  v509 = __stderrp;
                }

                fprintf(v509, "%s\n", v398);
                if (v399)
                {
                  free(v399);
                }

                CFRelease(v397);
              }

              else
              {
                v503 = sub_10003E080();
                if (os_log_type_enabled(v503, OS_LOG_TYPE_FAULT))
                {
                  *buf = 67109890;
                  *&buf[4] = v316;
                  *&buf[8] = 1024;
                  *&buf[10] = v292;
                  *&buf[14] = 1024;
                  *&buf[16] = v905;
                  *&buf[20] = 2112;
                  *&buf[22] = v932;
                  _os_log_fault_impl(&_mh_execute_header, v503, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Bad indent level %d for %d whitespace (%d: %@)", buf, 0x1Eu);
                }

                if (qword_100127ED0)
                {
                  v504 = qword_100127ED0;
                }

                else
                {
                  v504 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v504);
                v309 = v295;
              }

              v289 = 0;
              *__error() = v395;
              v310 = v881;
              v311 = v895;
            }
          }

          else
          {
            v289 = (v315 / v968);
          }

          if (v882)
          {
            goto LABEL_782;
          }

LABEL_463:
          v314 = 1;
          goto LABEL_469;
        }
      }

      v289 = 0;
      v314 = 0;
LABEL_469:
      if ((v289 & 0x80000000) != 0)
      {
        if (byte_100127EC8 == 1)
        {
          v707 = *__error();
          v708 = sub_10003E080();
          if (os_log_type_enabled(v708, OS_LOG_TYPE_ERROR))
          {
            v709 = v932;
            [v932 UTF8String];
            sub_1000C62D8();
          }

          *__error() = v707;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v710 = *__error();
          v711 = v932;
          v712 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Non-frame line has count but no indent level (%d: %s)", "rawIndentLevel >= 0", v905, [v932 UTF8String]);
          v713 = v712;
          if (v712)
          {
            v800 = CFStringGetCStringPtr(v712, 0x8000100u);
            if (v800)
            {
              v801 = 0;
            }

            else
            {
              v800 = malloc_type_calloc(0x400uLL, 1uLL, 0xF401C9C8uLL);
              CFStringGetCString(v713, v800, 1024, 0x8000100u);
              v801 = v800;
            }

            if (qword_100127ED0)
            {
              v818 = qword_100127ED0;
            }

            else
            {
              v818 = __stderrp;
            }

            fprintf(v818, "%s\n", v800);
            if (v801)
            {
              free(v801);
            }

            CFRelease(v713);
          }

          else
          {
            v714 = sub_10003E080();
            if (os_log_type_enabled(v714, OS_LOG_TYPE_FAULT))
            {
              v715 = v932;
              [v932 UTF8String];
              sub_1000C631C();
            }

            if (qword_100127ED0)
            {
              v716 = qword_100127ED0;
            }

            else
            {
              v716 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v716);
          }

          *__error() = v710;
        }

        v819 = v932;
        [v932 UTF8String];
        sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 640, "%s: Non-frame line has count but no indent level (%d: %s)", v820, v821, v822, v823, "rawIndentLevel >= 0");
        goto LABEL_1248;
      }

      if (v314 && v289 > v927 && v289 != v927 + 1)
      {
        if (byte_100127EC8 == 1)
        {
          v317 = *__error();
          v318 = sub_10003E080();
          if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109378;
            *&buf[4] = v905;
            *&buf[8] = 2112;
            *&buf[10] = v932;
            _os_log_error_impl(&_mh_execute_header, v318, OS_LOG_TYPE_ERROR, "Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
          }

          *__error() = v317;
        }

        v154 = 2;
        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v319 = *__error();
          v320 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected indent for line (%d: %@)", v905, v932);
          v321 = v320;
          if (v320)
          {
            v322 = CFStringGetCStringPtr(v320, 0x8000100u);
            if (v322)
            {
              v323 = 0;
            }

            else
            {
              v322 = malloc_type_calloc(0x400uLL, 1uLL, 0xCFDF6F80uLL);
              CFStringGetCString(v321, v322, 1024, 0x8000100u);
              v323 = v322;
            }

            if (qword_100127ED0)
            {
              v422 = qword_100127ED0;
            }

            else
            {
              v422 = __stderrp;
            }

            fprintf(v422, "%s\n", v322);
            if (v323)
            {
              free(v323);
            }

            CFRelease(v321);
          }

          else
          {
            v411 = sub_10003E080();
            if (os_log_type_enabled(v411, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109378;
              *&buf[4] = v905;
              *&buf[8] = 2112;
              *&buf[10] = v932;
              _os_log_fault_impl(&_mh_execute_header, v411, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unexpected indent for line (%d: %@)", buf, 0x12u);
            }

            if (qword_100127ED0)
            {
              v412 = qword_100127ED0;
            }

            else
            {
              v412 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v412);
          }

          *__error() = v319;
          v154 = 2;
        }

        goto LABEL_783;
      }

      if (v309 >= 1 && v311 <= 0)
      {
        v311 = v901;
        if (v901 <= 0)
        {
          v311 = vcvtpd_s64_f64(log10(v309)) + 2;
        }
      }

      v895 = v311;
      if (!v314)
      {
        if ((self->_isHeavy != v969) | v875 & 1)
        {
          goto LABEL_672;
        }

        v902 = v309;
        v329 = 0;
        v328 = 0;
        goto LABEL_527;
      }

      v902 = v309;
      v324 = &ptr[8 * v310 + 4];
      while (1)
      {
        v325 = v310;
        v326 = __OFSUB__(v310, 1);
        v310 = (v310 - 1);
        if (v310 < 0 != v326)
        {
          break;
        }

        v327 = *(v324 - 3);
        v324 -= 8;
        if (v327 < v289)
        {
          v328 = *v324;
          goto LABEL_521;
        }
      }

      v328 = 0;
LABEL_521:
      if (!((self->_isHeavy != v969) | v875 & 1))
      {
        v329 = v311;
        v881 = v325;
LABEL_527:
        v344 = v968;
        v345 = v967;
        v346 = v917;
        v347 = [v917 UTF8String];
        v348 = v911;
        sub_1000A2F80(a4, v345 + (v328 + v289) * v344, v907 != 0x7FFFFFFFFFFFFFFFLL, v902, v329, v347, [v911 UTF8String], v301, v302);
        goto LABEL_672;
      }

      if (!v289)
      {
        if (!obj)
        {
          obj = objc_alloc_init(NSMutableArray);
          goto LABEL_668;
        }

        v960 = 0u;
        v961 = 0u;
        v958 = 0u;
        v959 = 0u;
        obj = obj;
        v388 = [obj countByEnumeratingWithState:&v958 objects:v982 count:16];
        if (!v388)
        {
          goto LABEL_610;
        }

        v389 = *v959;
        while (1)
        {
          for (i = 0; i != v388; i = i + 1)
          {
            if (*v959 != v389)
            {
              objc_enumerationMutation(obj);
            }

            v391 = *(*(&v958 + 1) + 8 * i);
            if (sub_1000C5408())
            {
              v403 = v391;

              if (v403)
              {
                goto LABEL_670;
              }

LABEL_668:
              v403 = sub_100098474(SPTreeNode, 0, v907 != 0x7FFFFFFFFFFFFFFFLL, 0, 0xFFFFFFFFFFFFFFFFLL, v911, v917);
              [obj addObject:v403];
              goto LABEL_669;
            }
          }

          v388 = [obj countByEnumeratingWithState:&v958 objects:v982 count:16];
          if (!v388)
          {
LABEL_610:

            goto LABEL_668;
          }
        }
      }

      if (!v942)
      {
        if (byte_100127EC8 == 1)
        {
          v754 = *__error();
          v755 = sub_10003E080();
          if (os_log_type_enabled(v755, OS_LOG_TYPE_ERROR))
          {
            v756 = v932;
            v757 = [v932 UTF8String];
            *buf = 136315906;
            *&buf[4] = "previousNode";
            *&buf[12] = 1024;
            *&buf[14] = v289;
            *&buf[18] = 1024;
            *&buf[20] = v905;
            *&buf[24] = 2080;
            *&buf[26] = v757;
            _os_log_error_impl(&_mh_execute_header, v755, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
          }

          *__error() = v754;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v759 = *__error();
          v760 = v932;
          v761 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent of %d (%d: %s)", "previousNode", v289, v905, [v932 UTF8String]);
          v762 = v761;
          if (v761)
          {
            v862 = CFStringGetCStringPtr(v761, 0x8000100u);
            if (v862)
            {
              v863 = 0;
            }

            else
            {
              v862 = malloc_type_calloc(0x400uLL, 1uLL, 0xE6B72259uLL);
              CFStringGetCString(v762, v862, 1024, 0x8000100u);
              v863 = v862;
            }

            if (qword_100127ED0)
            {
              v865 = qword_100127ED0;
            }

            else
            {
              v865 = __stderrp;
            }

            fprintf(v865, "%s\n", v862);
            if (v863)
            {
              free(v863);
            }

            CFRelease(v762);
          }

          else
          {
            v763 = sub_10003E080();
            if (os_log_type_enabled(v763, OS_LOG_TYPE_FAULT))
            {
              v764 = v932;
              v765 = [v932 UTF8String];
              *buf = 136315906;
              *&buf[4] = "previousNode";
              *&buf[12] = 1024;
              *&buf[14] = v289;
              *&buf[18] = 1024;
              *&buf[20] = v905;
              *&buf[24] = 2080;
              *&buf[26] = v765;
              _os_log_fault_impl(&_mh_execute_header, v763, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent of %d (%d: %s)", buf, 0x22u);
            }

            if (qword_100127ED0)
            {
              v766 = qword_100127ED0;
            }

            else
            {
              v766 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v766);
          }

          *__error() = v759;
        }

        v767 = v932;
        [v932 UTF8String];
        sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 697, "%s: no previousNode for indent of %d (%d: %s)", v768, v769, v770, v771, "previousNode");
        goto LABEL_1248;
      }

      if (v927 < v289)
      {
        v343 = v942;
        goto LABEL_628;
      }

      v400 = v942;
      do
      {
        v401 = v400;
        v402 = objc_loadWeakRetained(v400 + 7);

        if (!v402)
        {
          if (byte_100127EC8 == 1)
          {
            v682 = *__error();
            v683 = sub_10003E080();
            if (os_log_type_enabled(v683, OS_LOG_TYPE_ERROR))
            {
              v684 = v932;
              v685 = [v932 UTF8String];
              *buf = 136316162;
              *&buf[4] = "previousNode";
              *&buf[12] = 1024;
              *&buf[14] = v289;
              *&buf[18] = 1024;
              *&buf[20] = v927;
              *&buf[24] = 1024;
              *&buf[26] = v905;
              *&buf[30] = 2080;
              *&buf[32] = v685;
              _os_log_error_impl(&_mh_execute_header, v683, OS_LOG_TYPE_ERROR, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
            }

            *__error() = v682;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v687 = *__error();
            v688 = v932;
            v689 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", "previousNode", v289, v927, v905, [v932 UTF8String]);
            v690 = v689;
            if (v689)
            {
              v843 = CFStringGetCStringPtr(v689, 0x8000100u);
              if (v843)
              {
                v844 = 0;
              }

              else
              {
                v843 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAF7CBA6uLL);
                CFStringGetCString(v690, v843, 1024, 0x8000100u);
                v844 = v843;
              }

              if (qword_100127ED0)
              {
                v859 = qword_100127ED0;
              }

              else
              {
                v859 = __stderrp;
              }

              fprintf(v859, "%s\n", v843);
              if (v844)
              {
                free(v844);
              }

              CFRelease(v690);
            }

            else
            {
              v691 = sub_10003E080();
              if (os_log_type_enabled(v691, OS_LOG_TYPE_FAULT))
              {
                v692 = v932;
                v693 = [v932 UTF8String];
                *buf = 136316162;
                *&buf[4] = "previousNode";
                *&buf[12] = 1024;
                *&buf[14] = v289;
                *&buf[18] = 1024;
                *&buf[20] = v927;
                *&buf[24] = 1024;
                *&buf[26] = v905;
                *&buf[30] = 2080;
                *&buf[32] = v693;
                _os_log_fault_impl(&_mh_execute_header, v691, OS_LOG_TYPE_FAULT, "Unable to format: %s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", buf, 0x28u);
              }

              if (qword_100127ED0)
              {
                v694 = qword_100127ED0;
              }

              else
              {
                v694 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v694);
            }

            *__error() = v687;
          }

          v695 = v932;
          [v932 UTF8String];
          sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]", "SPTextualReportParser.m", 702, "%s: no previousNode for indent %d, previousIndentLevel %d (%d: %s)", v696, v697, v698, v699, "previousNode");
          goto LABEL_1248;
        }

        v400 = v402;
        v25 = v927 <= v289;
        v927 = (v927 - 1);
      }

      while (!v25);
      LODWORD(v927) = v289 - 1;
      v343 = v402;
LABEL_628:
      v942 = v343;
      v403 = sub_1000C5238();
LABEL_669:
      if (v403)
      {
LABEL_670:
        v403[3] += v902;
      }

      v426 = v942;
      v942 = v403;

      v881 = v325;
LABEL_672:
      if (v314)
      {
        v427 = v289;
      }

      else
      {
        v427 = v927;
      }

      v931 = v427;

LABEL_676:
      v215 = 0;
      v154 = 0;
LABEL_785:

      v146 = 0;
      v14 = v930;
      v927 = v931;
      v143 = a4;
      v144 = v929;
LABEL_786:
      objc_autoreleasePoolPop(v914);
      if (v154 && v154 != 5)
      {
        goto LABEL_28;
      }

      if (!fgets((v976[3] + v146), *(v972 + 6) - v146, v5))
      {
        goto LABEL_900;
      }
    }

    v295 = -1;
LABEL_446:
    v901 = -1;
    goto LABEL_448;
  }

  obj = 0;
  ptr = 0;
  v14 = 0;
  v942 = 0;
LABEL_900:
  if (fgets(v976[3], *(v972 + 6), v5))
  {
    do
    {
      fputs(v976[3], v143);
      v13 = 1;
    }

    while (fgets(v976[3], *(v972 + 6), v5));
  }

  else
  {
    v13 = 1;
  }

LABEL_127:
  v83 = v976[3];
  if (v83)
  {
    free(v83);
  }

  if (v5)
  {
    fclose(v5);
  }

  if (ptr)
  {
    free(ptr);
  }

  _Block_object_dispose(&v971, 8);
  _Block_object_dispose(&v975, 8);
  objc_autoreleasePoolPop(context);
  return v13 & 1;
}

@end