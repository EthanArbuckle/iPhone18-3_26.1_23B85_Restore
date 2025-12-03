@interface SPStackshotProvider
+ (id)sharedInstanceLock;
+ (id)snapshotWithSamplingIntervalUs:(unsigned int)us andOccasionalDataIntervalSec:(unsigned int)sec andOnlySampleProcesses:(id)processes andOnlySampleMainThreads:(BOOL)threads andOmitSensitiveStrings:(BOOL)strings;
- (SPStackshotProvider)init;
- (void)dealloc;
- (void)gatherLoadInfoForPid:(int)pid;
- (void)performSampleStoreWork:(id)work;
- (void)startSamplingThread;
- (void)stopAndWaitForAllSamplingToComplete:(BOOL)complete withCompletionCallbackOnQueue:(id)queue withBlock:(id)block;
- (void)stopSamplingThread;
@end

@implementation SPStackshotProvider

- (SPStackshotProvider)init
{
  v43.receiver = self;
  v43.super_class = SPStackshotProvider;
  v2 = [(SPStackshotProvider *)&v43 init];
  v3 = v2;
  if (v2)
  {
    v2->_numClientsSampling = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.spindump.sample_store", v5);
    storeReportingQueue = v3->_storeReportingQueue;
    v3->_storeReportingQueue = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.spindump.stackshot_parsing", v8);
    stackshotParsingQueue = v3->_stackshotParsingQueue;
    v3->_stackshotParsingQueue = v9;

    v11 = objc_alloc_init(NSMutableArray);
    pidsToGatherLoadInfo = v3->_pidsToGatherLoadInfo;
    v3->_pidsToGatherLoadInfo = v11;

    v13 = dispatch_group_create();
    samplingGroup = v3->_samplingGroup;
    v3->_samplingGroup = v13;

    v15 = dispatch_semaphore_create(1);
    pidsSem = v3->_pidsSem;
    v3->_pidsSem = v15;

    initForLiveSampling = [[SASampleStore alloc] initForLiveSampling];
    sampleStore = v3->_sampleStore;
    v3->_sampleStore = initForLiveSampling;

    sub_100077DF8(v3->_sampleStore, (byte_100117E94 >> 3) & 1, (byte_100117E94 >> 2) & 1, (byte_100117E94 & 0x10) == 0);
    if ((byte_100117E94 & 2) != 0 && sub_10002B3E4())
    {
      if (byte_100117E80 == 1)
      {
        v19 = *__error();
        v20 = sub_100035B80();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for stackshot report due to audio running", buf, 2u);
        }

        *__error() = v19;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 2)
      {
        v21 = *__error();
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for stackshot report due to audio running");
        if (v22)
        {
          v23 = v22;
          CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
          if (CStringPtr)
          {
            v25 = CStringPtr;
            v26 = 0;
          }

          else
          {
            v25 = malloc_type_calloc(0x400uLL, 1uLL, 0xCC42BEA3uLL);
            CFStringGetCString(v23, v25, 1024, 0x8000100u);
            v26 = v25;
          }

          if (qword_100117E88)
          {
            v29 = qword_100117E88;
          }

          else
          {
            v29 = __stderrp;
          }

          fprintf(v29, "%s\n", v25);
          if (v26)
          {
            free(v26);
          }

          CFRelease(v23);
        }

        else
        {
          v27 = sub_100035B80();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            sub_1000BA994();
          }

          if (qword_100117E88)
          {
            v28 = qword_100117E88;
          }

          else
          {
            v28 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v28);
        }

        *__error() = v21;
      }

      [(SASampleStore *)v3->_sampleStore setDataGatheringOptions:[(SASampleStore *)v3->_sampleStore dataGatheringOptions]& 0xFFFFFFFFFFFFFFFDLL];
    }

    [(SASampleStore *)v3->_sampleStore gatherMachineArchitecture];
    if (byte_100117E80 == 1)
    {
      v30 = *__error();
      v31 = sub_100035B80();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BA9C8();
      }

      *__error() = v30;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v32 = *__error();
      v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Created shared SPStackshotProvider");
      if (v33)
      {
        v34 = v33;
        v35 = CFStringGetCStringPtr(v33, 0x8000100u);
        if (v35)
        {
          v36 = v35;
          v37 = 0;
        }

        else
        {
          v36 = malloc_type_calloc(0x400uLL, 1uLL, 0x4B4E1BB3uLL);
          CFStringGetCString(v34, v36, 1024, 0x8000100u);
          v37 = v36;
        }

        if (qword_100117E88)
        {
          v40 = qword_100117E88;
        }

        else
        {
          v40 = __stderrp;
        }

        fprintf(v40, "%s\n", v36);
        if (v37)
        {
          free(v37);
        }

        CFRelease(v34);
      }

      else
      {
        v38 = sub_100035B80();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          sub_1000BA9FC();
        }

        if (qword_100117E88)
        {
          v39 = qword_100117E88;
        }

        else
        {
          v39 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v39);
      }

      *__error() = v32;
    }
  }

  return v3;
}

- (void)dealloc
{
  numClientsSampling = self->_numClientsSampling;
  p_numClientsSampling = &self->_numClientsSampling;
  if (numClientsSampling)
  {
    sub_1000BAA30(p_numClientsSampling, a2, v2, v3, v4, v5, v6, v7);
  }

  [(SPStackshotProvider *)self stopSamplingThread];
  v11.receiver = self;
  v11.super_class = SPStackshotProvider;
  [(SPStackshotProvider *)&v11 dealloc];
}

- (void)startSamplingThread
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_samplingThread)
  {
    if (byte_100117E80 == 1)
    {
      v3 = *__error();
      v4 = sub_100035B80();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BAC7C();
      }

      *__error() = v3;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 0)
    {
      v6 = *__error();
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already have a sampling thread");
      v8 = v7;
      if (v7)
      {
        CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
        if (CStringPtr)
        {
          v10 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xCDBDCB85uLL);
          CFStringGetCString(v8, CStringPtr, 1024, 0x8000100u);
          v10 = CStringPtr;
        }

        if (qword_100117E88)
        {
          v23 = qword_100117E88;
        }

        else
        {
          v23 = __stderrp;
        }

        fprintf(v23, "%s\n", CStringPtr);
        if (v10)
        {
          free(v10);
        }

        CFRelease(v8);
      }

      else
      {
        v21 = sub_100035B80();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1000BACB0();
        }

        if (qword_100117E88)
        {
          v22 = qword_100117E88;
        }

        else
        {
          v22 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v22);
      }

      *__error() = v6;
    }
  }

  else
  {
    v11 = dispatch_semaphore_create(0);
    samplingStoppedSem = selfCopy->_samplingStoppedSem;
    selfCopy->_samplingStoppedSem = v11;

    if (byte_100117E80 == 1)
    {
      v13 = *__error();
      v14 = sub_100035B80();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting sampling thread", buf, 2u);
      }

      *__error() = v13;
    }

    if (byte_100117E81 == 1 && dword_100117510 <= 1)
    {
      v16 = *__error();
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Starting sampling thread");
      v18 = v17;
      if (v17)
      {
        v19 = CFStringGetCStringPtr(v17, 0x8000100u);
        if (v19)
        {
          v20 = 0;
        }

        else
        {
          v19 = malloc_type_calloc(0x400uLL, 1uLL, 0x803DE8C6uLL);
          CFStringGetCString(v18, v19, 1024, 0x8000100u);
          v20 = v19;
        }

        if (qword_100117E88)
        {
          v26 = qword_100117E88;
        }

        else
        {
          v26 = __stderrp;
        }

        fprintf(v26, "%s\n", v19);
        if (v20)
        {
          free(v20);
        }

        CFRelease(v18);
      }

      else
      {
        v24 = sub_100035B80();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_1000BACE4();
        }

        if (qword_100117E88)
        {
          v25 = qword_100117E88;
        }

        else
        {
          v25 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v25);
      }

      *__error() = v16;
    }

    v27 = pthread_create(&selfCopy->_samplingThread, 0, sub_100089AD0, selfCopy);
    if (v27)
    {
      *__errnum = v27;
      if (byte_100117E80 == 1)
      {
        v28 = *__error();
        v29 = sub_100035B80();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = strerror(__errnum[0]);
          sub_1000BAD18(v30, buf, __errnum[0]);
        }

        *__error() = v28;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v31 = *__error();
        v32 = strerror(__errnum[0]);
        v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to create sampling thread: %d (%s)", "ret == 0", *__errnum, v32);
        v34 = v33;
        if (v33)
        {
          v38 = CFStringGetCStringPtr(v33, 0x8000100u);
          if (v38)
          {
            v39 = 0;
          }

          else
          {
            v38 = malloc_type_calloc(0x400uLL, 1uLL, 0xC76F9A91uLL);
            CFStringGetCString(v34, v38, 1024, 0x8000100u);
            v39 = v38;
          }

          if (qword_100117E88)
          {
            v40 = qword_100117E88;
          }

          else
          {
            v40 = __stderrp;
          }

          fprintf(v40, "%s\n", v38);
          if (v39)
          {
            free(v39);
          }

          CFRelease(v34);
        }

        else
        {
          v35 = sub_100035B80();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            v36 = strerror(__errnum[0]);
            sub_1000BAD6C(v36, v46, __errnum[0]);
          }

          if (qword_100117E88)
          {
            v37 = qword_100117E88;
          }

          else
          {
            v37 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
        }

        *__error() = v31;
      }

      strerror(__errnum[0]);
      sub_100035A54("[SPStackshotProvider startSamplingThread]", "SPSampleProvider.m", 490, "%s: Unable to create sampling thread: %d (%s)", v41, v42, v43, v44, "ret == 0");
      abort();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)stopSamplingThread
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_samplingThread)
  {
    dispatch_semaphore_signal(selfCopy->_samplingStoppedSem);
    if (byte_100117E81 == 1)
    {
      if (qword_100117ED0 && dispatch_group_wait(qword_100117ED0, 0))
      {
        if (byte_100117EC9)
        {
          goto LABEL_112;
        }

        if (byte_100117E80 == 1)
        {
          v3 = *__error();
          v4 = sub_100035B80();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sampling completed, waiting for SIGINFO...", buf, 2u);
          }

          *__error() = v3;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_112;
        }

        v6 = *__error();
        v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, waiting for SIGINFO...");
        v8 = v7;
        if (v7)
        {
          CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
          if (CStringPtr)
          {
            v10 = 0;
          }

          else
          {
            CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x206902CAuLL);
            CFStringGetCString(v8, CStringPtr, 1024, 0x8000100u);
            v10 = CStringPtr;
          }

          if (qword_100117E88)
          {
            v45 = qword_100117E88;
          }

          else
          {
            v45 = __stderrp;
          }

          fprintf(v45, "%s\n", CStringPtr);
          if (v10)
          {
            free(v10);
          }

          CFRelease(v8);
        }

        else
        {
          v40 = sub_100035B80();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            sub_1000BB238();
          }

          if (qword_100117E88)
          {
            v41 = qword_100117E88;
          }

          else
          {
            v41 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v41);
        }

        v43 = __error();
      }

      else if ((byte_100117E94 & 0x18) == 0x10)
      {
        if (byte_100117E80)
        {
          v19 = *__error();
          v20 = sub_100035B80();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v57 = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sampling completed, generating report...", v57, 2u);
          }

          *__error() = v19;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_112;
        }

        v6 = *__error();
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, generating report...");
        v23 = v22;
        if (v22)
        {
          v24 = CFStringGetCStringPtr(v22, 0x8000100u);
          if (v24)
          {
            v25 = 0;
          }

          else
          {
            v24 = malloc_type_calloc(0x400uLL, 1uLL, 0x1EBAC01AuLL);
            CFStringGetCString(v23, v24, 1024, 0x8000100u);
            v25 = v24;
          }

          if (qword_100117E88)
          {
            v42 = qword_100117E88;
          }

          else
          {
            v42 = __stderrp;
          }

          fprintf(v42, "%s\n", v24);
          if (v25)
          {
            free(v25);
          }

          CFRelease(v23);
        }

        else
        {
          v36 = sub_100035B80();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            sub_1000BB2A0();
          }

          if (qword_100117E88)
          {
            v37 = qword_100117E88;
          }

          else
          {
            v37 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
        }

        v43 = __error();
      }

      else
      {
        if (byte_100117E80)
        {
          v26 = *__error();
          v27 = sub_100035B80();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sampling completed, processing symbols...", v58, 2u);
          }

          *__error() = v26;
        }

        if (byte_100117E81 != 1 || dword_100117510 > 2)
        {
          goto LABEL_112;
        }

        v6 = *__error();
        v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, processing symbols...");
        v30 = v29;
        if (v29)
        {
          v31 = CFStringGetCStringPtr(v29, 0x8000100u);
          if (v31)
          {
            v32 = 0;
          }

          else
          {
            v31 = malloc_type_calloc(0x400uLL, 1uLL, 0x926C3742uLL);
            CFStringGetCString(v30, v31, 1024, 0x8000100u);
            v32 = v31;
          }

          if (qword_100117E88)
          {
            v44 = qword_100117E88;
          }

          else
          {
            v44 = __stderrp;
          }

          fprintf(v44, "%s\n", v31);
          if (v32)
          {
            free(v32);
          }

          CFRelease(v30);
        }

        else
        {
          v38 = sub_100035B80();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            sub_1000BB26C();
          }

          if (qword_100117E88)
          {
            v39 = qword_100117E88;
          }

          else
          {
            v39 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v39);
        }

        v43 = __error();
      }

      *v43 = v6;
    }

LABEL_112:
    if (byte_100117E80 == 1)
    {
      v46 = *__error();
      v47 = sub_100035B80();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Stopping sampling thread", v56, 2u);
      }

      *__error() = v46;
      if (byte_100117E81 == 1 && dword_100117510 <= 1)
      {
        v48 = *__error();
        v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stopping sampling thread");
        v50 = v49;
        if (v49)
        {
          v51 = CFStringGetCStringPtr(v49, 0x8000100u);
          if (v51)
          {
            v52 = 0;
          }

          else
          {
            v51 = malloc_type_calloc(0x400uLL, 1uLL, 0xEC9D0954uLL);
            CFStringGetCString(v50, v51, 1024, 0x8000100u);
            v52 = v51;
          }

          if (qword_100117E88)
          {
            v55 = qword_100117E88;
          }

          else
          {
            v55 = __stderrp;
          }

          fprintf(v55, "%s\n", v51);
          if (v52)
          {
            free(v52);
          }

          CFRelease(v50);
        }

        else
        {
          v53 = sub_100035B80();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            sub_1000BB2D4();
          }

          if (qword_100117E88)
          {
            v54 = qword_100117E88;
          }

          else
          {
            v54 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v54);
        }

        *__error() = v48;
      }
    }

    pthread_join(selfCopy->_samplingThread, 0);
    selfCopy->_samplingThread = 0;
    goto LABEL_135;
  }

  if (byte_100117E80 == 1)
  {
    v11 = *__error();
    v12 = sub_100035B80();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000BB308();
    }

    *__error() = v11;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 0)
  {
    v14 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No sampling thread to stop");
    v16 = v15;
    if (v15)
    {
      v17 = CFStringGetCStringPtr(v15, 0x8000100u);
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x25EC8AEBuLL);
        CFStringGetCString(v16, v17, 1024, 0x8000100u);
        v18 = v17;
      }

      if (qword_100117E88)
      {
        v35 = qword_100117E88;
      }

      else
      {
        v35 = __stderrp;
      }

      fprintf(v35, "%s\n", v17);
      if (v18)
      {
        free(v18);
      }

      CFRelease(v16);
    }

    else
    {
      v33 = sub_100035B80();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_1000BB33C();
      }

      if (qword_100117E88)
      {
        v34 = qword_100117E88;
      }

      else
      {
        v34 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v34);
    }

    *__error() = v14;
  }

LABEL_135:
  objc_sync_exit(selfCopy);
}

+ (id)sharedInstanceLock
{
  if (qword_100117E40 != -1)
  {
    sub_1000BB370();
  }

  v3 = qword_100117E48;

  return v3;
}

+ (id)snapshotWithSamplingIntervalUs:(unsigned int)us andOccasionalDataIntervalSec:(unsigned int)sec andOnlySampleProcesses:(id)processes andOnlySampleMainThreads:(BOOL)threads andOmitSensitiveStrings:(BOOL)strings
{
  processesCopy = processes;
  if (us)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_10008B810;
    v26 = sub_10008B820;
    v27 = 0;
    v12 = +[SPStackshotProvider sharedInstanceLock];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008B828;
    v15[3] = &unk_100109D58;
    usCopy = us;
    secCopy = sec;
    threadsCopy = threads;
    stringsCopy = strings;
    v16 = processesCopy;
    v17 = &v22;
    dispatch_sync(v12, v15);

    v13 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)stopAndWaitForAllSamplingToComplete:(BOOL)complete withCompletionCallbackOnQueue:(id)queue withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v10 = +[SPStackshotProvider sharedInstanceLock];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D8F0;
  block[3] = &unk_1001097E8;
  block[4] = self;
  dispatch_sync(v10, block);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_numClientsSampling)
  {
    v12 = +[SATimestamp timestamp];
    v13 = *&selfCopy->_numSamples;
    v14 = selfCopy->_numClientsSampling - 1;
    selfCopy->_numClientsSampling = v14;
    if (!v14)
    {
      [(SPStackshotProvider *)selfCopy stopSamplingThread];
      dispatch_group_leave(selfCopy->_samplingGroup);
      dispatch_semaphore_wait(selfCopy->_pidsSem, 0xFFFFFFFFFFFFFFFFLL);
      selfCopy->_sampleOnlyPidsHasUpdate = 1;
      sampleOnlyPids = selfCopy->_sampleOnlyPids;
      selfCopy->_sampleOnlyPids = 0;

      dispatch_semaphore_signal(selfCopy->_pidsSem);
    }

    v16 = dispatch_get_global_queue(25, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008DBF0;
    v18[3] = &unk_100109DD0;
    v19 = v12;
    v20 = selfCopy;
    v21 = queueCopy;
    v22 = blockCopy;
    v23 = v13;
    completeCopy = complete;
    v17 = v12;
    dispatch_async(v16, v18);

    goto LABEL_8;
  }

  if (queueCopy && blockCopy)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10008DBDC;
    v25[3] = &unk_100109CC0;
    v26 = blockCopy;
    dispatch_async(queueCopy, v25);
    v17 = v26;
LABEL_8:
  }

  objc_sync_exit(selfCopy);
}

- (void)performSampleStoreWork:(id)work
{
  workCopy = work;
  storeReportingQueue = self->_storeReportingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008DEC0;
  v7[3] = &unk_100109960;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_sync(storeReportingQueue, v7);
}

- (void)gatherLoadInfoForPid:(int)pid
{
  stackshotParsingQueue = self->_stackshotParsingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008DF50;
  v4[3] = &unk_100109AC0;
  v4[4] = self;
  pidCopy = pid;
  dispatch_async(stackshotParsingQueue, v4);
}

@end