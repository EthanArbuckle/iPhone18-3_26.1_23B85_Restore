@interface SPProcessEvent
- (BOOL)targetProcessIsThirdParty;
- (SPProcessEvent)init;
- (double)dataDuration;
- (double)eventDuration;
- (double)overlapDuration;
- (id)_samplePrinterForSampleStore:(id)store;
- (int)numSamples;
- (int)numSamplesAvoidedDueToAudio;
- (void)_performSamplePrinterWork:(id)work;
- (void)_saveReportToStream:(__sFILE *)stream;
- (void)_saveReportToStream:(__sFILE *)stream withSampleStore:(id)store;
- (void)_setupSampleStore:(id)store;
- (void)dropTransaction;
- (void)filterToStartTime:(id)time endTime:(id)endTime;
- (void)performSamplePrinterWork:(id)work;
- (void)saveReportToStream:(__sFILE *)stream;
- (void)takeTransaction;
@end

@implementation SPProcessEvent

- (void)takeTransaction
{
  if (!self->_transaction)
  {
    v4 = sub_10003DEB8("Process Event [%d]", self->_targetProcessId);
    transaction = self->_transaction;
    self->_transaction = v4;

    _objc_release_x1();
  }
}

- (void)dropTransaction
{
  transaction = self->_transaction;
  self->_transaction = 0;
  _objc_release_x1();
}

- (SPProcessEvent)init
{
  v8.receiver = self;
  v8.super_class = SPProcessEvent;
  v2 = [(SPProcessEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_useDsymForUUIDForEverything = 0;
    v2->_includeTextualFormatInReport = 1;
    v2->_headerOnly = 0;
    v4 = objc_alloc_init(SASamplePrintOptions);
    printOptions = v3->_printOptions;
    v3->_printOptions = v4;

    v6 = byte_100127EDC;
    v3->_shouldSymbolicate = (byte_100127EDC & 8) != 0;
    v3->_shouldUseBulkSymbolication = ((v6 >> 4) & 1) == 0;
  }

  return v3;
}

- (int)numSamples
{
  if (self->_isSampling)
  {
    numSamplesAtEnd = [(SPStackshotProvider *)self->_sampleProvider numSamples];
  }

  else
  {
    numSamplesAtEnd = self->_numSamplesAtEnd;
  }

  return numSamplesAtEnd - self->_numSamplesAtStart;
}

- (int)numSamplesAvoidedDueToAudio
{
  if (self->_isSampling)
  {
    numSamplesAvoidedDueToAudioAtEnd = [(SPStackshotProvider *)self->_sampleProvider numSamplesAvoidedDueToAudio];
  }

  else
  {
    numSamplesAvoidedDueToAudioAtEnd = self->_numSamplesAvoidedDueToAudioAtEnd;
  }

  return numSamplesAvoidedDueToAudioAtEnd - self->_numSamplesAvoidedDueToAudioAtStart;
}

- (double)dataDuration
{
  dataTimeRange = self->_dataTimeRange;
  if (!dataTimeRange)
  {
    return 0.0;
  }

  startTime = [(SATimeRange *)dataTimeRange startTime];
  endTime = [(SATimeRange *)self->_dataTimeRange endTime];
  v6 = sub_100081A04(startTime, endTime);

  return v6;
}

- (double)eventDuration
{
  eventTimeRange = self->_eventTimeRange;
  if (!eventTimeRange)
  {
    return 0.0;
  }

  startTime = [(SATimeRange *)eventTimeRange startTime];
  endTime = [(SATimeRange *)self->_eventTimeRange endTime];
  v6 = sub_100081A04(startTime, endTime);

  return v6;
}

- (double)overlapDuration
{
  p_eventTimeRange = &self->_eventTimeRange;
  dataTimeRange = self->_dataTimeRange;
  eventTimeRange = self->_eventTimeRange;
  if (dataTimeRange)
  {
    p_dataTimeRange = &self->_dataTimeRange;
    startTime = [(SATimeRange *)dataTimeRange startTime];
    if (eventTimeRange)
    {
      startTime2 = [(SATimeRange *)*p_eventTimeRange startTime];
      if ([startTime compare:startTime2] == -1)
      {
        v9 = p_eventTimeRange;
      }

      else
      {
        v9 = p_dataTimeRange;
      }

      startTime3 = [*v9 startTime];

      endTime = [(SATimeRange *)*p_dataTimeRange endTime];
      endTime2 = [(SATimeRange *)*p_eventTimeRange endTime];
      if ([endTime compare:endTime2] == 1)
      {
        v13 = p_eventTimeRange;
      }

      else
      {
        v13 = p_dataTimeRange;
      }

      endTime3 = [*v13 endTime];

      startTime = startTime3;
      goto LABEL_14;
    }

    v15 = *p_dataTimeRange;
LABEL_13:
    endTime3 = [(SATimeRange *)v15 endTime];
LABEL_14:
    v16 = sub_100081A04(startTime, endTime3);

    return v16;
  }

  if (eventTimeRange)
  {
    startTime = [(SATimeRange *)self->_eventTimeRange startTime];
    v15 = *p_eventTimeRange;
    goto LABEL_13;
  }

  return 0.0;
}

- (void)filterToStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  reportTimeStart = self->_reportTimeStart;
  self->_reportTimeStart = timeCopy;
  v10 = timeCopy;

  reportTimeEnd = self->_reportTimeEnd;
  self->_reportTimeEnd = endTimeCopy;
}

- (void)_setupSampleStore:(id)store
{
  storeCopy = store;
  p_targetProcessId = &self->_targetProcessId;
  targetProcessId = self->_targetProcessId;
  if (!storeCopy)
  {
    if (targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v96 = *__error();
        v97 = sub_10003E080();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          sub_1000BEDDC();
        }

        *__error() = v96;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v99 = *__error();
        v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: nil sampleStore", "sampleStore");
        if (v100)
        {
          v107 = v100;
          CStringPtr = CFStringGetCStringPtr(v100, 0x8000100u);
          if (CStringPtr)
          {
            v109 = CStringPtr;
            v110 = 0;
          }

          else
          {
            v109 = malloc_type_calloc(0x400uLL, 1uLL, 0xE0211047uLL);
            CFStringGetCString(v107, v109, 1024, 0x8000100u);
            v110 = v109;
          }

          if (qword_100127ED0)
          {
            v117 = qword_100127ED0;
          }

          else
          {
            v117 = __stderrp;
          }

          fprintf(v117, "%s\n", v109);
          if (v110)
          {
            free(v110);
          }

          CFRelease(v107);
        }

        else
        {
          v101 = sub_10003E080();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
          {
            sub_1000BEE5C();
          }

          if (qword_100127ED0)
          {
            v102 = qword_100127ED0;
          }

          else
          {
            v102 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v102);
        }

        *__error() = v99;
      }

      sub_10003DF54("[SPProcessEvent _setupSampleStore:]", "SPProcessEvent.m", 205, "%s: nil sampleStore", v5, v6, v7, v8, "sampleStore");
    }

    else
    {
      if (byte_100127EC8)
      {
        v88 = *__error();
        v89 = sub_10003E080();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          sub_1000BEEDC();
        }

        *__error() = v88;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v91 = *__error();
        v92 = sub_10003E020(*p_targetProcessId);
        v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: nil sampleStore", v92, *p_targetProcessId, "sampleStore");
        if (v93)
        {
          v103 = v93;
          v104 = CFStringGetCStringPtr(v93, 0x8000100u);
          if (v104)
          {
            v105 = v104;
            v106 = 0;
          }

          else
          {
            v105 = malloc_type_calloc(0x400uLL, 1uLL, 0xE0211047uLL);
            CFStringGetCString(v103, v105, 1024, 0x8000100u);
            v106 = v105;
          }

          if (qword_100127ED0)
          {
            v111 = qword_100127ED0;
          }

          else
          {
            v111 = __stderrp;
          }

          fprintf(v111, "%s\n", v105);
          if (v106)
          {
            free(v106);
          }

          CFRelease(v103);
        }

        else
        {
          v94 = sub_10003E080();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
          {
            sub_1000BEF6C();
          }

          if (qword_100127ED0)
          {
            v95 = qword_100127ED0;
          }

          else
          {
            v95 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v95);
        }

        *__error() = v91;
      }

      v112 = sub_10003E020(*p_targetProcessId);
      v119 = *p_targetProcessId;
      sub_10003DF54("[SPProcessEvent _setupSampleStore:]", "SPProcessEvent.m", 205, "%s [%d]: %s: nil sampleStore", v113, v114, v115, v116, v112);
    }

    abort();
  }

  v11 = storeCopy;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v12 = *__error();
      v13 = sub_10003E080();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = sub_10003E020(*p_targetProcessId);
        v15 = *p_targetProcessId;
        *buf = 136446466;
        v126 = v14;
        v127 = 1024;
        v128 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}s [%d]: Generating report", buf, 0x12u);
      }

      *__error() = v12;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_47;
    }

    v17 = *__error();
    v18 = sub_10003E020(*p_targetProcessId);
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Generating report", v18, *p_targetProcessId);
    if (v19)
    {
      v20 = v19;
      v21 = CFStringGetCStringPtr(v19, 0x8000100u);
      if (v21)
      {
        v22 = v21;
        v23 = 0;
      }

      else
      {
        v22 = malloc_type_calloc(0x400uLL, 1uLL, 0x76633229uLL);
        CFStringGetCString(v20, v22, 1024, 0x8000100u);
        v23 = v22;
      }

      v30 = qword_100127ED0;
      v31 = __stderrp;
LABEL_40:
      if (v30)
      {
        v33 = v30;
      }

      else
      {
        v33 = v31;
      }

      fprintf(v33, "%s\n", v22);
      if (v23)
      {
        free(v23);
      }

      CFRelease(v20);
      goto LABEL_46;
    }

    v29 = sub_10003E080();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1000BED5C();
    }

    goto LABEL_34;
  }

  if (byte_100127EC8)
  {
    v24 = *__error();
    v25 = sub_10003E080();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Generating report", buf, 2u);
    }

    *__error() = v24;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v17 = *__error();
    v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Generating report");
    if (v27)
    {
      v20 = v27;
      v28 = CFStringGetCStringPtr(v27, 0x8000100u);
      if (v28)
      {
        v22 = v28;
        v23 = 0;
      }

      else
      {
        v22 = malloc_type_calloc(0x400uLL, 1uLL, 0x76633229uLL);
        CFStringGetCString(v20, v22, 1024, 0x8000100u);
        v23 = v22;
      }

      v30 = qword_100127ED0;
      v31 = __stderrp;
      goto LABEL_40;
    }

    v29 = sub_10003E080();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1000BED28();
    }

LABEL_34:

    if (qword_100127ED0)
    {
      v32 = qword_100127ED0;
    }

    else
    {
      v32 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v32);
LABEL_46:
    *__error() = v17;
  }

LABEL_47:
  if (self->_reason)
  {
    [v11 setReason:?];
  }

  sub_1000791AC(v11, self->_shouldSymbolicate, self->_useDsymForUUIDForEverything, self->_shouldUseBulkSymbolication);
  v34 = self->_stepsNote;
  numSamplesAvoidedDueToAudioAtStart = self->_numSamplesAvoidedDueToAudioAtStart;
  v36 = (self->_numSamplesAvoidedDueToAudioAtEnd - numSamplesAvoidedDueToAudioAtStart);
  if (v36 >= 1)
  {
    if (self->_stepsNote)
    {
      [NSString stringWithFormat:@"%@, %d samples avoided due to audio", self->_stepsNote, v36];
    }

    else
    {
      [NSString stringWithFormat:@"%d samples avoided due to audio", (self->_numSamplesAvoidedDueToAudioAtEnd - numSamplesAvoidedDueToAudioAtStart), v118];
    }
    v37 = ;

    v34 = v37;
  }

  [v11 setTargetThreadId:0];
  if ((*p_targetProcessId & 0x80000000) == 0)
  {
    [v11 setTargetProcessId:?];
  }

  if (self->_targetThreadId)
  {
    [v11 setTargetThreadId:?];
  }

  if (self->_targetProcessAbsolutePath)
  {
    targetProcess = [v11 targetProcess];
    mainBinaryPath = [targetProcess mainBinaryPath];
    isAbsolutePath = [mainBinaryPath isAbsolutePath];

    if ((isAbsolutePath & 1) == 0)
    {
      targetProcess2 = [v11 targetProcess];
      v42 = targetProcess2;
      if (targetProcess2)
      {
        [targetProcess2 setMainBinaryPath:self->_targetProcessAbsolutePath];
      }
    }
  }

  [v11 setTargetHIDEventMachAbs:self->_targetHIDEventMachAbs];
  [v11 setTargetHIDEventEndMachAbs:self->_targetHIDEventEndMachAbs];
  if (self->_isLiveSampling)
  {
    [v11 setShouldGatherKextStat:!self->_headerOnly];
  }

  if (self->_dsymPaths)
  {
    [SABinary addDsymPaths:?];
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v43 = self->_findDsymsForIDs;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v120 objects:v124 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v121;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v121 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [v11 useDsymForUUIDFor:*(*(&v120 + 1) + 8 * i)];
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v120 objects:v124 count:16];
    }

    while (v45);
  }

  [v11 postprocess];
  targetProcess3 = [v11 targetProcess];
  bundleName = [targetProcess3 bundleName];
  targetProcessBundleName = self->_targetProcessBundleName;
  self->_targetProcessBundleName = bundleName;

  targetProcess4 = [v11 targetProcess];
  bundleIdentifier = [targetProcess4 bundleIdentifier];
  targetProcessBundleId = self->_targetProcessBundleId;
  self->_targetProcessBundleId = bundleIdentifier;

  targetProcess5 = [v11 targetProcess];
  bundleShortVersion = [targetProcess5 bundleShortVersion];
  v56 = bundleShortVersion;
  if (bundleShortVersion)
  {
    v57 = bundleShortVersion;
  }

  else
  {
    v57 = @"???";
  }

  v58 = v57;

  targetProcess6 = [v11 targetProcess];
  bundleVersion = [targetProcess6 bundleVersion];
  v61 = bundleVersion;
  if (bundleVersion)
  {
    v62 = bundleVersion;
  }

  else
  {
    v62 = @"???";
  }

  v63 = v62;

  v64 = [[NSString alloc] initWithFormat:@"%@ (%@)", v58, v63];
  targetProcessVersion = self->_targetProcessVersion;
  self->_targetProcessVersion = v64;

  v66 = [NSString alloc];
  targetProcess7 = [v11 targetProcess];
  v68 = [v66 initWithFormat:@"%llu", objc_msgSend(targetProcess7, "adamID")];
  targetProcessAdamId = self->_targetProcessAdamId;
  self->_targetProcessAdamId = v68;

  targetProcess8 = [v11 targetProcess];
  name = [targetProcess8 name];
  targetProcessName = self->_targetProcessName;
  self->_targetProcessName = name;

  targetProcess9 = [v11 targetProcess];
  mainBinary = [targetProcess9 mainBinary];
  uuid = [mainBinary uuid];
  targetProcessMainBinaryUUID = self->_targetProcessMainBinaryUUID;
  self->_targetProcessMainBinaryUUID = uuid;

  targetProcess10 = [v11 targetProcess];
  mainBinaryPath2 = [targetProcess10 mainBinaryPath];
  if ([mainBinaryPath2 isAbsolutePath])
  {
    targetProcess11 = [v11 targetProcess];
    mainBinaryPath3 = [targetProcess11 mainBinaryPath];
    targetProcessAbsolutePath = self->_targetProcessAbsolutePath;
    self->_targetProcessAbsolutePath = mainBinaryPath3;
  }

  else
  {
    targetProcess11 = self->_targetProcessAbsolutePath;
    self->_targetProcessAbsolutePath = 0;
  }

  targetProcess12 = [v11 targetProcess];
  isUnresponsive = [targetProcess12 isUnresponsive];

  if (isUnresponsive)
  {
    targetProcess13 = [v11 targetProcess];
    [targetProcess13 timeOfLastResponse];
    self->_targetProcessTimeOfLastResponse = v85;
  }

  else
  {
    self->_targetProcessTimeOfLastResponse = 0.0;
  }

  hardwareModel = [v11 hardwareModel];
  hardwareModel = self->_hardwareModel;
  self->_hardwareModel = hardwareModel;

  [v11 setEvent:self->_event];
  [v11 setEventNote:self->_eventNote];
  [v11 setEventTimeRange:self->_eventTimeRange];
  [v11 setSignature:self->_signature];
  [v11 setExtraDuration:self->_extraDuration];
  [v11 setDurationNote:self->_durationNote];
  [v11 setStepsNote:v34];
  [v11 setSanitizePaths:self->_sanitizePaths];
  [v11 setCustomOutput:self->_customOutput];
}

- (id)_samplePrinterForSampleStore:(id)store
{
  storeCopy = store;
  [(SPProcessEvent *)self _setupSampleStore:storeCopy];
  v5 = [[SASamplePrinter alloc] initWithSampleStore:storeCopy];

  if (v5)
  {
    [v5 setOptions:self->_printOptions];
    if (self->_includeBinaryFormatInReport)
    {
      goto LABEL_3;
    }

    if (self->_headerOnly)
    {
      goto LABEL_19;
    }

    if (![(SASamplePrintOptions *)self->_printOptions printHeavyStacks])
    {
LABEL_3:
      v6 = 1;
    }

    else
    {
      if (self->_headerOnly)
      {
        goto LABEL_19;
      }

      v6 = 0;
    }

    v7 = sub_10006AD8C([(SASamplePrintOptions *)self->_printOptions printHeavyStacks], v6);
    [v5 setHeaderNote:v7];

LABEL_19:
    headerOnly = self->_headerOnly;
    options = [v5 options];
    [options setPrintTargetThreadOnly:headerOnly];

    LOBYTE(options) = self->_headerOnly;
    options2 = [v5 options];
    [options2 setDisplayFooter:(options & 1) == 0];

    [v5 setShareWithAppDevs:AppAnalyticsEnabled()];
    if (*&self->_startTimeIndex == 0)
    {
      if (*&self->_reportTimeStart != 0)
      {
        [v5 filterToTimestampRangeStart:? end:?];
      }
    }

    else
    {
      [v5 filterToDisplayTimeIndexStart:? end:?];
    }

    forceOneBasedTimeIndexes = self->_forceOneBasedTimeIndexes;
    options3 = [v5 options];
    [options3 setForceOneBasedTimeIndexes:forceOneBasedTimeIndexes];

    if (self->_incidentUUID)
    {
      [v5 setIncidentUUID:?];
    }

    v25 = v5;
    goto LABEL_67;
  }

  targetProcessId = self->_targetProcessId;
  p_targetProcessId = &self->_targetProcessId;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v10 = *__error();
      v11 = sub_10003E080();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000BF06C();
      }

      *__error() = v10;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_67;
    }

    v13 = *__error();
    v14 = sub_10003E020(*p_targetProcessId);
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to create sample printer", v14, *p_targetProcessId);
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
        v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xBABDE9AFuLL);
        CFStringGetCString(v16, v18, 1024, 0x8000100u);
        v19 = v18;
      }

      if (qword_100127ED0)
      {
        v35 = qword_100127ED0;
      }

      else
      {
        v35 = __stderrp;
      }

      fprintf(v35, "%s\n", v18);
      if (v19)
      {
        free(v19);
      }

      v36 = v16;
LABEL_65:
      CFRelease(v36);
LABEL_66:
      *__error() = v13;
      goto LABEL_67;
    }

    v34 = sub_10003E080();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF0EC();
    }

    goto LABEL_54;
  }

  if (byte_100127EC8)
  {
    v26 = *__error();
    v27 = sub_10003E080();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000BEFFC();
    }

    *__error() = v26;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v13 = *__error();
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to create sample printer");
    if (v29)
    {
      v30 = v29;
      v31 = CFStringGetCStringPtr(v29, 0x8000100u);
      if (v31)
      {
        v32 = v31;
        v33 = 0;
      }

      else
      {
        v32 = malloc_type_calloc(0x400uLL, 1uLL, 0xBABDE9AFuLL);
        CFStringGetCString(v30, v32, 1024, 0x8000100u);
        v33 = v32;
      }

      if (qword_100127ED0)
      {
        v39 = qword_100127ED0;
      }

      else
      {
        v39 = __stderrp;
      }

      fprintf(v39, "%s\n", v32);
      if (v33)
      {
        free(v33);
      }

      v36 = v30;
      goto LABEL_65;
    }

    v37 = sub_10003E080();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF038();
    }

LABEL_54:
    if (qword_100127ED0)
    {
      v38 = qword_100127ED0;
    }

    else
    {
      v38 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v38);
    goto LABEL_66;
  }

LABEL_67:

  return v5;
}

- (void)_saveReportToStream:(__sFILE *)stream withSampleStore:(id)store
{
  storeCopy = store;
  v7 = objc_autoreleasePoolPush();
  [(SPProcessEvent *)self _setupSampleStore:storeCopy];
  if (self->_includeTextualFormatInReport)
  {
    v8 = [(SPProcessEvent *)self _samplePrinterForSampleStore:storeCopy];
    [v8 printToStream:stream];
  }

  if (self->_includeBinaryFormatInReport)
  {
    if (self->_includeTextualFormatInReport)
    {
      v9 = "\n\n";
      v10 = 2;
    }

    else
    {
      v9 = "Use spindump -i to generate textual report\n";
      v10 = 43;
    }

    fwrite(v9, v10, 1uLL, stream);
    if (([storeCopy saveBinaryFormatToStream:stream] & 1) == 0)
    {
      p_targetProcessId = &self->_targetProcessId;
      if (self->_targetProcessId < 0)
      {
        if (byte_100127EC8)
        {
          v21 = *__error();
          v22 = sub_10003E080();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000BF16C();
          }

          *__error() = v21;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v14 = *__error();
          v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to save spindump binary format");
          if (v23)
          {
            v24 = v23;
            CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
            if (CStringPtr)
            {
              v26 = CStringPtr;
              v27 = 0;
            }

            else
            {
              v26 = malloc_type_calloc(0x400uLL, 1uLL, 0x996F797BuLL);
              CFStringGetCString(v24, v26, 1024, 0x8000100u);
              v27 = v26;
            }

            if (qword_100127ED0)
            {
              v33 = qword_100127ED0;
            }

            else
            {
              v33 = __stderrp;
            }

            fprintf(v33, "%s\n", v26);
            if (v27)
            {
              free(v27);
            }

            v30 = v24;
            goto LABEL_51;
          }

          v31 = sub_10003E080();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            sub_1000BF1A8();
          }

LABEL_40:
          if (qword_100127ED0)
          {
            v32 = qword_100127ED0;
          }

          else
          {
            v32 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v32);
          goto LABEL_52;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v12 = *__error();
          v13 = sub_10003E080();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1000BF1DC();
          }

          *__error() = v12;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v14 = *__error();
          v15 = sub_10003E020(*p_targetProcessId);
          v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to save spindump binary format", v15, *p_targetProcessId);
          if (v16)
          {
            v17 = v16;
            v18 = CFStringGetCStringPtr(v16, 0x8000100u);
            if (v18)
            {
              v19 = v18;
              v20 = 0;
            }

            else
            {
              v19 = malloc_type_calloc(0x400uLL, 1uLL, 0x996F797BuLL);
              CFStringGetCString(v17, v19, 1024, 0x8000100u);
              v20 = v19;
            }

            if (qword_100127ED0)
            {
              v29 = qword_100127ED0;
            }

            else
            {
              v29 = __stderrp;
            }

            fprintf(v29, "%s\n", v19);
            if (v20)
            {
              free(v20);
            }

            v30 = v17;
LABEL_51:
            CFRelease(v30);
LABEL_52:
            *__error() = v14;
            goto LABEL_53;
          }

          v28 = sub_10003E080();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            sub_1000BF25C();
          }

          goto LABEL_40;
        }
      }
    }
  }

LABEL_53:
  +[SABinary clearCoreSymbolicationCaches];
  targetProcessId = self->_targetProcessId;
  v34 = &self->_targetProcessId;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v36 = *__error();
      v37 = sub_10003E080();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = sub_10003E020(*v34);
        v39 = *v34;
        *buf = 136446466;
        v63 = v38;
        v64 = 1024;
        v65 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%{public}s [%d]: Done generating report", buf, 0x12u);
      }

      *__error() = v36;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_104;
    }

    v41 = *__error();
    v42 = sub_10003E020(*v34);
    v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Done generating report", v42, *v34);
    if (v43)
    {
      v44 = v43;
      v45 = CFStringGetCStringPtr(v43, 0x8000100u);
      if (v45)
      {
        v46 = v45;
        v47 = 0;
      }

      else
      {
        v46 = malloc_type_calloc(0x400uLL, 1uLL, 0x2B4FA002uLL);
        CFStringGetCString(v44, v46, 1024, 0x8000100u);
        v47 = v46;
      }

      if (qword_100127ED0)
      {
        v57 = qword_100127ED0;
      }

      else
      {
        v57 = __stderrp;
      }

      fprintf(v57, "%s\n", v46);
      if (v47)
      {
        free(v47);
      }

      v58 = v44;
LABEL_102:
      CFRelease(v58);
LABEL_103:
      *__error() = v41;
      goto LABEL_104;
    }

    v56 = sub_10003E080();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF310();
    }

    goto LABEL_91;
  }

  if (byte_100127EC8)
  {
    v48 = *__error();
    v49 = sub_10003E080();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Done generating report", buf, 2u);
    }

    *__error() = v48;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v41 = *__error();
    v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Done generating report");
    if (v51)
    {
      v52 = v51;
      v53 = CFStringGetCStringPtr(v51, 0x8000100u);
      if (v53)
      {
        v54 = v53;
        v55 = 0;
      }

      else
      {
        v54 = malloc_type_calloc(0x400uLL, 1uLL, 0x2B4FA002uLL);
        CFStringGetCString(v52, v54, 1024, 0x8000100u);
        v55 = v54;
      }

      if (qword_100127ED0)
      {
        v61 = qword_100127ED0;
      }

      else
      {
        v61 = __stderrp;
      }

      fprintf(v61, "%s\n", v54);
      if (v55)
      {
        free(v55);
      }

      v58 = v52;
      goto LABEL_102;
    }

    v59 = sub_10003E080();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF2DC();
    }

LABEL_91:
    if (qword_100127ED0)
    {
      v60 = qword_100127ED0;
    }

    else
    {
      v60 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v60);
    goto LABEL_103;
  }

LABEL_104:
  objc_autoreleasePoolPop(v7);
}

- (void)_saveReportToStream:(__sFILE *)stream
{
  v3 = [NSException exceptionWithName:@"_saveReportToStream needs to be subclassed" reason:0 userInfo:0];
  objc_exception_throw(v3);
}

- (void)saveReportToStream:(__sFILE *)stream
{
  [(SPProcessEvent *)self _saveReportToStream:stream];

  [(SPProcessEvent *)self dropTransaction];
}

- (void)performSamplePrinterWork:(id)work
{
  workCopy = work;
  v4 = objc_autoreleasePoolPush();
  [(SPProcessEvent *)self _performSamplePrinterWork:workCopy];
  [(SPProcessEvent *)self dropTransaction];
  objc_autoreleasePoolPop(v4);
}

- (void)_performSamplePrinterWork:(id)work
{
  workCopy = work;
  v4 = [NSException exceptionWithName:@"_performSamplePrinterWork needs to be subclassed" reason:0 userInfo:0];
  objc_exception_throw(v4);
}

- (BOOL)targetProcessIsThirdParty
{
  targetProcessBundleId = self->_targetProcessBundleId;
  if (targetProcessBundleId && [(NSString *)targetProcessBundleId hasPrefix:@"com.apple."])
  {
    return 0;
  }

  if (!self->_targetProcessAbsolutePath)
  {
    return 1;
  }

  if ([(NSString *)self->_targetProcessAbsolutePath hasPrefix:@"/bin/", @"/bin/", @"/sbin/", @"/usr/bin/", @"/usr/sbin/", @"/usr/libexec/", @"/System/"])
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v5;
      if (v5 == 5)
      {
        break;
      }

      v7 = [(NSString *)self->_targetProcessAbsolutePath hasPrefix:*(&v10 + v5 + 1)];
      v5 = v6 + 1;
    }

    while (!v7);
    v4 = v6 > 4;
  }

  for (i = 40; i != -8; i -= 8)
  {
  }

  return v4;
}

@end