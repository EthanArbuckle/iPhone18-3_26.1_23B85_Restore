@interface SPSampledProcess
+ (BOOL)receivedHidEventForPid:(int)a3 eventTimeMachAbs:(unint64_t)a4 startTime:(id)a5 endTime:(id)a6;
- (BOOL)startSampling;
- (SPSampledProcess)initWithPid:(int)a3 isWSBased:(BOOL)a4;
- (void)_performSamplePrinterWork:(id)a3;
- (void)_samplingHasCompletedWithEndSnapshot:(id)a3 withReason:(unsigned __int8)a4;
- (void)_saveReportToStream:(__sFILE *)a3;
- (void)createHIDExitSource;
- (void)deleteHIDExitSource;
- (void)removeSelfFromPidCache;
- (void)requireHIDEvent:(BOOL)a3;
- (void)setCancelOnMemoryPressure:(BOOL)a3;
- (void)setSamplingCompletionHandlerQueue:(id)a3 andBlock:(id)a4;
- (void)setSamplingMode:(unsigned __int8)a3 withAdditionalSampledProcesses:(id)a4;
- (void)setSamplingTimeoutAtTime:(double)a3;
- (void)setStopWhenProcessExits:(BOOL)a3;
@end

@implementation SPSampledProcess

- (SPSampledProcess)initWithPid:(int)a3 isWSBased:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = SPSampledProcess;
  v6 = [(SPMonitoredProcess *)&v12 initWithPid:?];
  if (v6)
  {
    snprintf(__str, 0x40uLL, "com.apple.spindump.sampled_process_%d", a3);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(__str, v7);
    processingQueue = v6->super.super._processingQueue;
    v6->super.super._processingQueue = v8;

    v6->super.super._isWSBased = a4;
    v6->_samplingMode = 3;
    sampledProcesses = v6->_sampledProcesses;
    v6->_sampledProcesses = 0;

    v6->_cancelOnMemoryPressure = 0;
  }

  return v6;
}

- (void)setCancelOnMemoryPressure:(BOOL)a3
{
  self->_cancelOnMemoryPressure = a3;
  if (a3)
  {
    +[SPSampledProcess startMemoryPressureTimer];
  }
}

- (void)removeSelfFromPidCache
{
  if (self->super.super._isSelfInPidCache)
  {
    v7 = v2;
    v8 = v3;
    self->super.super._isSelfInPidCache = 0;
    targetProcessId = self->super.super._targetProcessId;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100084638;
    v5[3] = &unk_100115B28;
    v6 = targetProcessId;
    v5[4] = self;
    dispatch_async(qword_100127E50, v5);
  }
}

- (void)createHIDExitSource
{
  if (self->_exitHIDSource)
  {
    return;
  }

  p_targetProcessId = &self->super.super._targetProcessId;
  targetProcessId = self->super.super._targetProcessId;
  v5 = dispatch_get_global_queue(25, 2uLL);
  v6 = dispatch_source_create(&_dispatch_source_type_proc, targetProcessId, 0xA0000000uLL, v5);
  exitHIDSource = self->_exitHIDSource;
  self->_exitHIDSource = v6;

  v8 = self->_exitHIDSource;
  if (v8)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100084ADC;
    handler[3] = &unk_100115850;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_exitHIDSource);
    return;
  }

  if ((*p_targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v9 = *__error();
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000BF414();
      }

      *__error() = v9;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      return;
    }

    v12 = *__error();
    v13 = sub_10003E020(*p_targetProcessId);
    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to allocate proc exit HID dispatch source", v13, *p_targetProcessId);
    if (v14)
    {
      v15 = v14;
      CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
      if (CStringPtr)
      {
        v17 = CStringPtr;
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x953C691EuLL);
        CFStringGetCString(v15, v17, 1024, 0x8000100u);
        v18 = v17;
      }

      if (qword_100127ED0)
      {
        v28 = qword_100127ED0;
      }

      else
      {
        v28 = __stderrp;
      }

      fprintf(v28, "%s\n", v17);
      if (v18)
      {
        free(v18);
      }

      v29 = v15;
LABEL_53:
      CFRelease(v29);
LABEL_54:
      *__error() = v12;
      return;
    }

    v27 = sub_10003E080();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF494();
    }

    goto LABEL_42;
  }

  if (byte_100127EC8)
  {
    v19 = *__error();
    v20 = sub_10003E080();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000BF3A4();
    }

    *__error() = v19;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v12 = *__error();
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to allocate proc exit HID dispatch source");
    if (v22)
    {
      v23 = v22;
      v24 = CFStringGetCStringPtr(v22, 0x8000100u);
      if (v24)
      {
        v25 = v24;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x953C691EuLL);
        CFStringGetCString(v23, v25, 1024, 0x8000100u);
        v26 = v25;
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v25);
      if (v26)
      {
        free(v26);
      }

      v29 = v23;
      goto LABEL_53;
    }

    v30 = sub_10003E080();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF3E0();
    }

LABEL_42:
    if (qword_100127ED0)
    {
      v31 = qword_100127ED0;
    }

    else
    {
      v31 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
    goto LABEL_54;
  }
}

- (void)deleteHIDExitSource
{
  if (self->_exitHIDSource)
  {
    self->_exitHIDSource = 0;
    _objc_release_x1();
  }
}

- (void)requireHIDEvent:(BOOL)a3
{
  processingQueue = self->super.super._processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000855F0;
  v4[3] = &unk_100115BA0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(processingQueue, v4);
}

+ (BOOL)receivedHidEventForPid:(int)a3 eventTimeMachAbs:(unint64_t)a4 startTime:(id)a5 endTime:(id)a6
{
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000870C4;
  v13[3] = &unk_100115BC8;
  v18 = a3;
  v14 = a6;
  v15 = v9;
  v16 = &v19;
  v17 = a4;
  v10 = v9;
  v11 = v14;
  sub_100084E6C(v13);
  LOBYTE(a3) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return a3;
}

- (void)setSamplingMode:(unsigned __int8)a3 withAdditionalSampledProcesses:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v4 == 3 && v6)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v19 = *__error();
        v20 = sub_10003E080();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000C083C();
        }

        *__error() = v19;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_54;
      }

      v12 = *__error();
      v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Pids is ignored when sampling all processes");
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
          v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x79CE7D21uLL);
          CFStringGetCString(v23, v25, 1024, 0x8000100u);
          v26 = v25;
        }

        if (qword_100127ED0)
        {
          v32 = qword_100127ED0;
        }

        else
        {
          v32 = __stderrp;
        }

        fprintf(v32, "%s\n", v25);
        if (v26)
        {
          free(v26);
        }

        v29 = v23;
        goto LABEL_52;
      }

      v30 = sub_10003E080();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0878();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v9 = *__error();
        v10 = sub_10003E080();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000C08AC();
        }

        *__error() = v9;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_54;
      }

      v12 = *__error();
      v13 = sub_10003E020(*p_targetProcessId);
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Pids is ignored when sampling all processes", v13, *p_targetProcessId);
      if (v14)
      {
        v15 = v14;
        v16 = CFStringGetCStringPtr(v14, 0x8000100u);
        if (v16)
        {
          v17 = v16;
          v18 = 0;
        }

        else
        {
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x79CE7D21uLL);
          CFStringGetCString(v15, v17, 1024, 0x8000100u);
          v18 = v17;
        }

        if (qword_100127ED0)
        {
          v28 = qword_100127ED0;
        }

        else
        {
          v28 = __stderrp;
        }

        fprintf(v28, "%s\n", v17);
        if (v18)
        {
          free(v18);
        }

        v29 = v15;
LABEL_52:
        CFRelease(v29);
LABEL_53:
        *__error() = v12;
LABEL_54:

        v7 = 0;
        goto LABEL_55;
      }

      v27 = sub_10003E080();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1000C092C();
      }
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
    goto LABEL_53;
  }

LABEL_55:
  if (!self->super.super._hasSampled || self->super.super._isSampling)
  {
    if (self->_samplingMode != v4 || v7 && (!self->_sampledProcesses || ([v7 isSubsetOfSet:?] & 1) == 0))
    {
      self->_samplingMode = v4;
      sampledProcesses = self->_sampledProcesses;
      if (v4 == 3)
      {
        self->_sampledProcesses = 0;
      }

      else
      {
        if (!sampledProcesses)
        {
          v34 = objc_alloc_init(NSMutableSet);
          v35 = self->_sampledProcesses;
          self->_sampledProcesses = v34;

          if ((self->super.super._targetProcessId & 0x80000000) == 0)
          {
            v36 = self->_sampledProcesses;
            v37 = [NSNumber numberWithInt:?];
            [(NSMutableSet *)v36 addObject:v37];
          }
        }

        if (v7)
        {
          [(NSMutableSet *)self->_sampledProcesses unionSet:v7];
        }
      }

      if (self->super.super._isSampling)
      {
        [(SPStackshotProvider *)self->super.super._sampleProvider sampleProcesses:self->_sampledProcesses onlyMainThreads:self->_samplingMode == 1];
      }
    }

    goto LABEL_121;
  }

  targetProcessId = self->super.super._targetProcessId;
  v38 = &self->super.super._targetProcessId;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v40 = *__error();
      v41 = sub_10003E080();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000C0A1C();
      }

      *__error() = v40;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_121;
    }

    v43 = *__error();
    v44 = sub_10003E020(*v38);
    v45 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Attempted to change sampling target after done sampling", v44, *v38);
    if (v45)
    {
      v46 = v45;
      v47 = CFStringGetCStringPtr(v45, 0x8000100u);
      if (v47)
      {
        v48 = v47;
        v49 = 0;
      }

      else
      {
        v48 = malloc_type_calloc(0x400uLL, 1uLL, 0x695CA4C5uLL);
        CFStringGetCString(v46, v48, 1024, 0x8000100u);
        v49 = v48;
      }

      if (qword_100127ED0)
      {
        v59 = qword_100127ED0;
      }

      else
      {
        v59 = __stderrp;
      }

      fprintf(v59, "%s\n", v48);
      if (v49)
      {
        free(v49);
      }

      v60 = v46;
LABEL_119:
      CFRelease(v60);
LABEL_120:
      *__error() = v43;
      goto LABEL_121;
    }

    v58 = sub_10003E080();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0A9C();
    }

    goto LABEL_108;
  }

  if (byte_100127EC8)
  {
    v50 = *__error();
    v51 = sub_10003E080();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000C09AC();
    }

    *__error() = v50;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v43 = *__error();
    v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attempted to change sampling target after done sampling");
    if (v53)
    {
      v54 = v53;
      v55 = CFStringGetCStringPtr(v53, 0x8000100u);
      if (v55)
      {
        v56 = v55;
        v57 = 0;
      }

      else
      {
        v56 = malloc_type_calloc(0x400uLL, 1uLL, 0x695CA4C5uLL);
        CFStringGetCString(v54, v56, 1024, 0x8000100u);
        v57 = v56;
      }

      if (qword_100127ED0)
      {
        v63 = qword_100127ED0;
      }

      else
      {
        v63 = __stderrp;
      }

      fprintf(v63, "%s\n", v56);
      if (v57)
      {
        free(v57);
      }

      v60 = v54;
      goto LABEL_119;
    }

    v61 = sub_10003E080();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      sub_1000C09E8();
    }

LABEL_108:
    if (qword_100127ED0)
    {
      v62 = qword_100127ED0;
    }

    else
    {
      v62 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v62);
    goto LABEL_120;
  }

LABEL_121:
}

- (void)setSamplingTimeoutAtTime:(double)a3
{
  if (self->super.super._timeoutTime <= a3)
  {
    SAMachAbsTimeSecondsGetCurrent();
    v17 = v16;
    if (v16 < a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = v16;
    }

    p_targetProcessId = &self->super.super._targetProcessId;
    targetProcessId = self->super.super._targetProcessId;
    self->super.super._timeoutTime = v18;
    if (targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v39 = *__error();
        v40 = sub_10003E080();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v64 = v18 - v17;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Setting sampling timeout for %.2f seconds from now", buf, 0xCu);
        }

        *__error() = v39;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_107;
      }

      v24 = *__error();
      v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Setting sampling timeout for %.2f seconds from now", v18 - v17);
      if (v42)
      {
        v43 = v42;
        CStringPtr = CFStringGetCStringPtr(v42, 0x8000100u);
        if (CStringPtr)
        {
          v45 = CStringPtr;
          v46 = 0;
        }

        else
        {
          v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x10A222CEuLL);
          CFStringGetCString(v43, v45, 1024, 0x8000100u);
          v46 = v45;
        }

        if (qword_100127ED0)
        {
          v58 = qword_100127ED0;
        }

        else
        {
          v58 = __stderrp;
        }

        fprintf(v58, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        v52 = v43;
        goto LABEL_105;
      }

      v55 = sub_10003E080();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0CEC();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v21 = *__error();
        v22 = sub_10003E080();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v60 = sub_10003E020(*p_targetProcessId);
          v61 = *p_targetProcessId;
          *buf = 136446722;
          v64 = *&v60;
          v65 = 1024;
          v66 = v61;
          v67 = 2048;
          v68 = v18 - v17;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}s [%d]: Setting sampling timeout for %.2f seconds from now", buf, 0x1Cu);
        }

        *__error() = v21;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_107;
      }

      v24 = *__error();
      v25 = sub_10003E020(*p_targetProcessId);
      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Setting sampling timeout for %.2f seconds from now", v25, *p_targetProcessId, v18 - v17);
      if (v26)
      {
        v27 = v26;
        v28 = CFStringGetCStringPtr(v26, 0x8000100u);
        if (v28)
        {
          v29 = v28;
          v30 = 0;
        }

        else
        {
          v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x10A222CEuLL);
          CFStringGetCString(v27, v29, 1024, 0x8000100u);
          v30 = v29;
        }

        if (qword_100127ED0)
        {
          v51 = qword_100127ED0;
        }

        else
        {
          v51 = __stderrp;
        }

        fprintf(v51, "%s\n", v29);
        if (v30)
        {
          free(v30);
        }

        v52 = v27;
LABEL_105:
        CFRelease(v52);
LABEL_106:
        *__error() = v24;
LABEL_107:
        processingQueue = self->super.super._processingQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10008926C;
        block[3] = &unk_1001151F0;
        block[4] = self;
        *&block[5] = v18;
        *&block[6] = v17;
        dispatch_async(processingQueue, block);
        return;
      }

      v48 = sub_10003E080();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0D64(&self->super.super._targetProcessId);
      }
    }

    if (qword_100127ED0)
    {
      v56 = qword_100127ED0;
    }

    else
    {
      v56 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v56);
    goto LABEL_106;
  }

  v5 = &self->super.super._targetProcessId;
  if ((self->super.super._targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v6 = *__error();
      v7 = sub_10003E080();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C0E70();
      }

      *__error() = v6;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v9 = *__error();
    v10 = sub_10003E020(*v5);
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Asked to stop sooner than the existing timeout", v10, *v5);
    if (v11)
    {
      v12 = v11;
      v13 = CFStringGetCStringPtr(v11, 0x8000100u);
      if (v13)
      {
        v14 = v13;
        v15 = 0;
      }

      else
      {
        v14 = malloc_type_calloc(0x400uLL, 1uLL, 0xE00F3974uLL);
        CFStringGetCString(v12, v14, 1024, 0x8000100u);
        v15 = v14;
      }

      if (qword_100127ED0)
      {
        v49 = qword_100127ED0;
      }

      else
      {
        v49 = __stderrp;
      }

      fprintf(v49, "%s\n", v14);
      if (v15)
      {
        free(v15);
      }

      v50 = v12;
LABEL_96:
      CFRelease(v50);
LABEL_97:
      *__error() = v9;
      return;
    }

    v47 = sub_10003E080();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0EF0();
    }

    goto LABEL_78;
  }

  if (byte_100127EC8)
  {
    v31 = *__error();
    v32 = sub_10003E080();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C0E08();
    }

    *__error() = v31;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v9 = *__error();
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Asked to stop sooner than the existing timeout");
    if (v34)
    {
      v35 = v34;
      v36 = CFStringGetCStringPtr(v34, 0x8000100u);
      if (v36)
      {
        v37 = v36;
        v38 = 0;
      }

      else
      {
        v37 = malloc_type_calloc(0x400uLL, 1uLL, 0xE00F3974uLL);
        CFStringGetCString(v35, v37, 1024, 0x8000100u);
        v38 = v37;
      }

      if (qword_100127ED0)
      {
        v57 = qword_100127ED0;
      }

      else
      {
        v57 = __stderrp;
      }

      fprintf(v57, "%s\n", v37);
      if (v38)
      {
        free(v38);
      }

      v50 = v35;
      goto LABEL_96;
    }

    v53 = sub_10003E080();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0E3C();
    }

LABEL_78:
    if (qword_100127ED0)
    {
      v54 = qword_100127ED0;
    }

    else
    {
      v54 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v54);
    goto LABEL_97;
  }
}

- (void)setSamplingCompletionHandlerQueue:(id)a3 andBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || !v7)
  {
    targetProcessId = self->super.super._targetProcessId;
    p_targetProcessId = &self->super.super._targetProcessId;
    if (targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v25 = *__error();
        v26 = sub_10003E080();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000C13A8();
        }

        *__error() = v25;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v28 = *__error();
        v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Must provide both queue and block", "queue && block");
        if (v29)
        {
          v36 = v29;
          CStringPtr = CFStringGetCStringPtr(v29, 0x8000100u);
          if (CStringPtr)
          {
            v38 = CStringPtr;
            v39 = 0;
          }

          else
          {
            v38 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CC31AE3uLL);
            CFStringGetCString(v36, v38, 1024, 0x8000100u);
            v39 = v38;
          }

          if (qword_100127ED0)
          {
            v46 = qword_100127ED0;
          }

          else
          {
            v46 = __stderrp;
          }

          fprintf(v46, "%s\n", v38);
          if (v39)
          {
            free(v39);
          }

          CFRelease(v36);
        }

        else
        {
          v30 = sub_10003E080();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            sub_1000C1428();
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

        *__error() = v28;
      }

      sub_10003DF54("[SPSampledProcess setSamplingCompletionHandlerQueue:andBlock:]", "SPProcessEvent.m", 1065, "%s: Must provide both queue and block", v8, v9, v10, v11, "queue && block");
    }

    else
    {
      if (byte_100127EC8)
      {
        v17 = *__error();
        v18 = sub_10003E080();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000C14A8();
        }

        *__error() = v17;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v20 = *__error();
        v21 = sub_10003E020(*p_targetProcessId);
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Must provide both queue and block", v21, *p_targetProcessId, "queue && block");
        if (v22)
        {
          v32 = v22;
          v33 = CFStringGetCStringPtr(v22, 0x8000100u);
          if (v33)
          {
            v34 = v33;
            v35 = 0;
          }

          else
          {
            v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CC31AE3uLL);
            CFStringGetCString(v32, v34, 1024, 0x8000100u);
            v35 = v34;
          }

          if (qword_100127ED0)
          {
            v40 = qword_100127ED0;
          }

          else
          {
            v40 = __stderrp;
          }

          fprintf(v40, "%s\n", v34);
          if (v35)
          {
            free(v35);
          }

          CFRelease(v32);
        }

        else
        {
          v23 = sub_10003E080();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            sub_1000C1538();
          }

          if (qword_100127ED0)
          {
            v24 = qword_100127ED0;
          }

          else
          {
            v24 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v24);
        }

        *__error() = v20;
      }

      v41 = sub_10003E020(*p_targetProcessId);
      v47 = *p_targetProcessId;
      sub_10003DF54("[SPSampledProcess setSamplingCompletionHandlerQueue:andBlock:]", "SPProcessEvent.m", 1065, "%s [%d]: %s: Must provide both queue and block", v42, v43, v44, v45, v41);
    }

    abort();
  }

  processingQueue = self->super.super._processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008A124;
  block[3] = &unk_100115BF0;
  block[4] = self;
  v49 = v6;
  v50 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(processingQueue, block);
}

- (void)setStopWhenProcessExits:(BOOL)a3
{
  processingQueue = self->super.super._processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008A1EC;
  v4[3] = &unk_100115BA0;
  v5 = a3;
  v4[4] = self;
  dispatch_async(processingQueue, v4);
}

- (BOOL)startSampling
{
  if (self->super.super._hasSampled || !self->_samplingIntervalUs)
  {
    return 0;
  }

  [(SPProcessEvent *)self takeTransaction];
  v3 = [SPStackshotProvider snapshotWithSamplingIntervalUs:self->_samplingIntervalUs andOccasionalDataIntervalSec:self->_occasionalDataIntervalSec andOnlySampleProcesses:self->_sampledProcesses andOnlySampleMainThreads:self->_samplingMode == 1 andOmitSensitiveStrings:self->super.super._omitSensitiveStrings];
  v4 = v3;
  v5 = v3 != 0;
  if (v3)
  {
    self->super.super._numSamplesAvoidedDueToAudioAtStart = [v3 numSamplesAvoidedDueToAudio];
    self->super.super._numSamplesAtStart = [v4 numSamples];
    v6 = [v4 timestamp];
    startedMonitoringTimestamp = self->_startedMonitoringTimestamp;
    self->_startedMonitoringTimestamp = v6;

    v8 = [v4 stackshotProvider];
    sampleProvider = self->super.super._sampleProvider;
    self->super.super._sampleProvider = v8;

    *&self->super.super._isSampling = 257;
  }

  else
  {
    [(SPProcessEvent *)self dropTransaction];
  }

  return v5;
}

- (void)_samplingHasCompletedWithEndSnapshot:(id)a3 withReason:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->super.super._isUrgent)
  {
    [(SPStackshotProvider *)self->super.super._sampleProvider waitForSamplingToComplete];
  }

  v7 = v4 - 6;
  if (!v6 || v7 < 0xFFFFFFFC || !self->_hidEventSem)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v30 = *__error();
        v31 = sub_10003E080();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C2024();
        }

        *__error() = v30;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
LABEL_90:
        if (v7 <= 0xFFFFFFFB)
        {
          goto LABEL_213;
        }

LABEL_91:
        sampleProvider = self->super.super._sampleProvider;
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_10008C924;
        v129[3] = &unk_100115C68;
        v129[4] = self;
        v131 = v4;
        v130 = v6;
        [(SPStackshotProvider *)sampleProvider performSampleStoreWork:v129];
        v53 = v130;
LABEL_216:

        goto LABEL_217;
      }

      v23 = *__error();
      v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No HID event required");
      if (v33)
      {
        v34 = v33;
        CStringPtr = CFStringGetCStringPtr(v33, 0x8000100u);
        if (CStringPtr)
        {
          v36 = CStringPtr;
          v37 = 0;
        }

        else
        {
          v36 = malloc_type_calloc(0x400uLL, 1uLL, 0x7C11D412uLL);
          CFStringGetCString(v34, v36, 1024, 0x8000100u);
          v37 = v36;
        }

        if (qword_100127ED0)
        {
          v51 = qword_100127ED0;
        }

        else
        {
          v51 = __stderrp;
        }

        fprintf(v51, "%s\n", v36);
        if (v37)
        {
          free(v37);
        }

        v47 = v34;
        goto LABEL_88;
      }

      v48 = sub_10003E080();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2058();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v20 = *__error();
        v21 = sub_10003E080();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C208C();
        }

        *__error() = v20;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_90;
      }

      v23 = *__error();
      v24 = sub_10003E020(*p_targetProcessId);
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No HID event required", v24, *p_targetProcessId);
      if (v25)
      {
        v26 = v25;
        v27 = CFStringGetCStringPtr(v25, 0x8000100u);
        if (v27)
        {
          v28 = v27;
          v29 = 0;
        }

        else
        {
          v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x7C11D412uLL);
          CFStringGetCString(v26, v28, 1024, 0x8000100u);
          v29 = v28;
        }

        if (qword_100127ED0)
        {
          v46 = qword_100127ED0;
        }

        else
        {
          v46 = __stderrp;
        }

        fprintf(v46, "%s\n", v28);
        if (v29)
        {
          free(v29);
        }

        v47 = v26;
LABEL_88:
        CFRelease(v47);
LABEL_89:
        *__error() = v23;
        goto LABEL_90;
      }

      v45 = sub_10003E080();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        sub_1000C210C();
      }
    }

    if (qword_100127ED0)
    {
      v49 = qword_100127ED0;
    }

    else
    {
      v49 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v49);
    goto LABEL_89;
  }

  v8 = &self->super.super._targetProcessId;
  if ((self->super.super._targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v9 = *__error();
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = sub_10003E020(*v8);
        v12 = *v8;
        *buf = 136446466;
        v136 = v11;
        v137 = 1024;
        v138 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}s [%d]: Waiting for HID event...", buf, 0x12u);
      }

      *__error() = v9;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_99;
    }

    v14 = v6;
    v15 = *__error();
    v16 = sub_10003E020(*v8);
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Waiting for HID event...", v16, *v8);
    if (!v17)
    {
      v18 = sub_10003E080();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1C20();
      }

LABEL_94:

      if (qword_100127ED0)
      {
        v54 = qword_100127ED0;
      }

      else
      {
        v54 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v54);
LABEL_98:
      *__error() = v15;
      v6 = v14;
      goto LABEL_99;
    }

    goto LABEL_55;
  }

  if (byte_100127EC8)
  {
    v38 = *__error();
    v39 = sub_10003E080();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Waiting for HID event...", buf, 2u);
    }

    *__error() = v38;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v14 = v6;
    v15 = *__error();
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for HID event...");
    if (!v17)
    {
      v18 = sub_10003E080();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1BEC();
      }

      goto LABEL_94;
    }

LABEL_55:
    v41 = v17;
    v42 = CFStringGetCStringPtr(v17, 0x8000100u);
    if (v42)
    {
      v43 = v42;
      v44 = 0;
    }

    else
    {
      v43 = malloc_type_calloc(0x400uLL, 1uLL, 0xFABB794DuLL);
      CFStringGetCString(v41, v43, 1024, 0x8000100u);
      v44 = v43;
    }

    if (qword_100127ED0)
    {
      v50 = qword_100127ED0;
    }

    else
    {
      v50 = __stderrp;
    }

    fprintf(v50, "%s\n", v43);
    if (v44)
    {
      free(v44);
    }

    CFRelease(v41);
    goto LABEL_98;
  }

LABEL_99:
  hidEventSem = self->_hidEventSem;
  v56 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(hidEventSem, v56))
  {
    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v69 = *__error();
        v70 = sub_10003E080();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Timed out waiting for HID event, canceling spin", buf, 2u);
        }

        *__error() = v69;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_185;
      }

      v61 = *__error();
      v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out waiting for HID event, canceling spin");
      if (!v63)
      {
        v64 = sub_10003E080();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1CA0();
        }

        goto LABEL_180;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v57 = *__error();
        v58 = sub_10003E080();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = sub_10003E020(*v8);
          v60 = *v8;
          *buf = 136446466;
          v136 = v59;
          v137 = 1024;
          v138 = v60;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Timed out waiting for HID event, canceling spin", buf, 0x12u);
        }

        *__error() = v57;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_185;
      }

      v61 = *__error();
      v62 = sub_10003E020(*v8);
      v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Timed out waiting for HID event, canceling spin", v62, *v8);
      if (!v63)
      {
        v64 = sub_10003E080();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1CD4();
        }

LABEL_180:

        if (qword_100127ED0)
        {
          v111 = qword_100127ED0;
        }

        else
        {
          v111 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v111);
LABEL_184:
        *__error() = v61;
LABEL_185:
        v134[0] = _NSConcreteStackBlock;
        v134[1] = 3221225472;
        v134[2] = sub_10008C59C;
        v134[3] = &unk_100115B50;
        v134[4] = self;
        sub_100084E6C(v134);
LABEL_212:
        LOBYTE(v4) = 8;
        goto LABEL_213;
      }
    }

    v71 = v63;
    v72 = CFStringGetCStringPtr(v63, 0x8000100u);
    if (v72)
    {
      v73 = v72;
      v74 = 0;
    }

    else
    {
      v73 = malloc_type_calloc(0x400uLL, 1uLL, 0x3C3A8052uLL);
      CFStringGetCString(v71, v73, 1024, 0x8000100u);
      v74 = v73;
    }

    if (qword_100127ED0)
    {
      v101 = qword_100127ED0;
    }

    else
    {
      v101 = __stderrp;
    }

    fprintf(v101, "%s\n", v73);
    if (v74)
    {
      free(v74);
    }

    CFRelease(v71);
    goto LABEL_184;
  }

  v65 = [(SPProcessEvent *)self eventTimeRange];

  if (!v65)
  {
    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v107 = *__error();
        v108 = sub_10003E080();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Canceling spin with no HID event where process exited", buf, 2u);
        }

        *__error() = v107;
      }

      LOBYTE(v4) = 8;
      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_213;
      }

      v79 = *__error();
      v81 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Canceling spin with no HID event where process exited");
      if (!v81)
      {
        v82 = sub_10003E080();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1F70();
        }

        goto LABEL_207;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v75 = *__error();
        v76 = sub_10003E080();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = sub_10003E020(*v8);
          v78 = *v8;
          *buf = 136446466;
          v136 = v77;
          v137 = 1024;
          v138 = v78;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Canceling spin with no HID event where process exited", buf, 0x12u);
        }

        *__error() = v75;
      }

      LOBYTE(v4) = 8;
      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_213;
      }

      v79 = *__error();
      v80 = sub_10003E020(*v8);
      v81 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Canceling spin with no HID event where process exited", v80, *v8);
      if (!v81)
      {
        v82 = sub_10003E080();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1FA4();
        }

        goto LABEL_207;
      }
    }

    v104 = v81;
    v105 = CFStringGetCStringPtr(v81, 0x8000100u);
    if (!v105)
    {
      v106 = 1508746754;
      goto LABEL_196;
    }

LABEL_177:
    v109 = v105;
    v110 = 0;
LABEL_197:
    if (qword_100127ED0)
    {
      v119 = qword_100127ED0;
    }

    else
    {
      v119 = __stderrp;
    }

    fprintf(v119, "%s\n", v109);
    if (v110)
    {
      free(v110);
    }

    CFRelease(v104);
    goto LABEL_211;
  }

  v66 = [(SPProcessEvent *)self eventTimeRange];
  v67 = [v66 startTime];
  v68 = [v6 timestamp];
  if ([v67 compare:v68] != -1)
  {

    goto LABEL_143;
  }

  v83 = [(SPProcessEvent *)self eventTimeRange];
  [v83 endTime];
  v85 = v84 = v6;
  v128 = [v85 compare:self->_startedMonitoringTimestamp];

  v6 = v84;
  if (v128 == 1)
  {
    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v112 = *__error();
        v113 = sub_10003E080();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C1E08();
        }

        *__error() = v112;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_244;
      }

      v88 = *__error();
      v114 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Received HID event, reporting spin");
      if (v114)
      {
        v115 = v114;
        v116 = CFStringGetCStringPtr(v114, 0x8000100u);
        if (v116)
        {
          v117 = v116;
          v118 = 0;
        }

        else
        {
          v117 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1A79E27uLL);
          CFStringGetCString(v115, v117, 1024, 0x8000100u);
          v118 = v117;
        }

        if (qword_100127ED0)
        {
          v127 = qword_100127ED0;
        }

        else
        {
          v127 = __stderrp;
        }

        fprintf(v127, "%s\n", v117);
        if (v118)
        {
          free(v118);
        }

        v124 = v115;
        goto LABEL_242;
      }

      v125 = sub_10003E080();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1E3C();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v86 = *__error();
        v87 = sub_10003E080();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C1E70();
        }

        *__error() = v86;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_244;
      }

      v88 = *__error();
      v89 = sub_10003E020(*v8);
      v90 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Received HID event, reporting spin", v89, *v8);
      if (v90)
      {
        v91 = v90;
        v92 = CFStringGetCStringPtr(v90, 0x8000100u);
        if (v92)
        {
          v93 = v92;
          v94 = 0;
        }

        else
        {
          v93 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1A79E27uLL);
          CFStringGetCString(v91, v93, 1024, 0x8000100u);
          v94 = v93;
        }

        if (qword_100127ED0)
        {
          v123 = qword_100127ED0;
        }

        else
        {
          v123 = __stderrp;
        }

        fprintf(v123, "%s\n", v93);
        if (v94)
        {
          free(v94);
        }

        v124 = v91;
LABEL_242:
        CFRelease(v124);
LABEL_243:
        *__error() = v88;
LABEL_244:
        if (v4 == 3)
        {
          LOBYTE(v4) = 4;
        }

        goto LABEL_91;
      }

      v122 = sub_10003E080();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1EF0();
      }
    }

    if (qword_100127ED0)
    {
      v126 = qword_100127ED0;
    }

    else
    {
      v126 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v126);
    goto LABEL_243;
  }

LABEL_143:
  if ((*v8 & 0x80000000) != 0)
  {
    if (byte_100127EC8)
    {
      v102 = *__error();
      v103 = sub_10003E080();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Canceling spin with no HID event in its time range", buf, 2u);
      }

      *__error() = v102;
    }

    LOBYTE(v4) = 8;
    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v79 = *__error();
      v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Canceling spin with no HID event in its time range");
      if (!v100)
      {
        v82 = sub_10003E080();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1D54();
        }

        goto LABEL_207;
      }

LABEL_167:
      v104 = v100;
      v105 = CFStringGetCStringPtr(v100, 0x8000100u);
      if (!v105)
      {
        v106 = 3544228920;
LABEL_196:
        v109 = malloc_type_calloc(0x400uLL, 1uLL, v106);
        CFStringGetCString(v104, v109, 1024, 0x8000100u);
        v110 = v109;
        goto LABEL_197;
      }

      goto LABEL_177;
    }
  }

  else
  {
    if (byte_100127EC8)
    {
      v95 = *__error();
      v96 = sub_10003E080();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = sub_10003E020(*v8);
        v98 = *v8;
        *buf = 136446466;
        v136 = v97;
        v137 = 1024;
        v138 = v98;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Canceling spin with no HID event in its time range", buf, 0x12u);
      }

      *__error() = v95;
    }

    LOBYTE(v4) = 8;
    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v79 = *__error();
      v99 = sub_10003E020(*v8);
      v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Canceling spin with no HID event in its time range", v99, *v8);
      if (!v100)
      {
        v82 = sub_10003E080();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1D88();
        }

LABEL_207:

        if (qword_100127ED0)
        {
          v120 = qword_100127ED0;
        }

        else
        {
          v120 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v120);
LABEL_211:
        *__error() = v79;
        goto LABEL_212;
      }

      goto LABEL_167;
    }
  }

LABEL_213:
  completionCallbackQueue = self->super.super._completionCallbackQueue;
  if (completionCallbackQueue && self->super.super._completionCallbackBlock)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008C8D0;
    block[3] = &unk_100115BA0;
    block[4] = self;
    v133 = v4;
    dispatch_async(completionCallbackQueue, block);
    v53 = self->super.super._completionCallbackQueue;
    self->super.super._completionCallbackQueue = 0;
    goto LABEL_216;
  }

LABEL_217:
}

- (void)_saveReportToStream:(__sFILE *)a3
{
  if (!a3 || self->super.super._isSampling || !self->super.super._hasSampled)
  {
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v44 = *__error();
        v45 = sub_10003E080();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1000C25E4(a3 != 0, self);
        }

        *__error() = v44;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v57 = a3 != 0;
        v58 = *__error();
        v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: save report fail %d %d %d", "stream && !_isSampling && _hasSampled", a3 != 0, self->super.super._isSampling, self->super.super._hasSampled);
        if (v59)
        {
          v68 = v59;
          v84 = v58;
          CStringPtr = CFStringGetCStringPtr(v59, 0x8000100u);
          if (CStringPtr)
          {
            v70 = CStringPtr;
            v71 = 0;
          }

          else
          {
            v70 = malloc_type_calloc(0x400uLL, 1uLL, 0x1248844CuLL);
            CFStringGetCString(v68, v70, 1024, 0x8000100u);
            v71 = v70;
          }

          if (qword_100127ED0)
          {
            v78 = qword_100127ED0;
          }

          else
          {
            v78 = __stderrp;
          }

          fprintf(v78, "%s\n", v70);
          if (v71)
          {
            free(v71);
          }

          CFRelease(v68);
          v58 = v84;
        }

        else
        {
          v60 = sub_10003E080();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            isSampling = self->super.super._isSampling;
            hasSampled = self->super.super._hasSampled;
            *buf = 136315906;
            v87 = "stream && !_isSampling && _hasSampled";
            v88 = 1024;
            v89 = v57;
            v90 = 1024;
            *v91 = isSampling;
            *&v91[4] = 1024;
            *&v91[6] = hasSampled;
            _os_log_fault_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "Unable to format: %s: save report fail %d %d %d", buf, 0x1Eu);
          }

          if (qword_100127ED0)
          {
            v63 = qword_100127ED0;
          }

          else
          {
            v63 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v63);
        }

        *__error() = v58;
      }

      v80 = self->super.super._isSampling;
      v81 = self->super.super._hasSampled;
      sub_10003DF54("[SPSampledProcess _saveReportToStream:]", "SPProcessEvent.m", 1338, "%s: save report fail %d %d %d", v3, v4, v5, v6, "stream && !_isSampling && _hasSampled");
    }

    else
    {
      if (byte_100127EC8)
      {
        v37 = *__error();
        v38 = sub_10003E080();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = sub_10003E020(self->super.super._targetProcessId);
          targetProcessId = self->super.super._targetProcessId;
          v41 = self->super.super._isSampling;
          v42 = self->super.super._hasSampled;
          *buf = 136316418;
          v87 = v39;
          v88 = 1024;
          v89 = targetProcessId;
          v90 = 2080;
          *v91 = "stream && !_isSampling && _hasSampled";
          *&v91[8] = 1024;
          v92 = a3 != 0;
          v93 = 1024;
          v94 = v41;
          v95 = 1024;
          v96 = v42;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
        }

        *__error() = v37;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v47 = a3 != 0;
        v48 = *__error();
        v49 = sub_10003E020(self->super.super._targetProcessId);
        v50 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: save report fail %d %d %d", v49, self->super.super._targetProcessId, "stream && !_isSampling && _hasSampled", v47, self->super.super._isSampling, self->super.super._hasSampled);
        if (v50)
        {
          v64 = v50;
          v65 = CFStringGetCStringPtr(v50, 0x8000100u);
          if (v65)
          {
            v66 = v65;
            v67 = 0;
          }

          else
          {
            v66 = malloc_type_calloc(0x400uLL, 1uLL, 0x1248844CuLL);
            CFStringGetCString(v64, v66, 1024, 0x8000100u);
            v67 = v66;
          }

          if (qword_100127ED0)
          {
            v72 = qword_100127ED0;
          }

          else
          {
            v72 = __stderrp;
          }

          fprintf(v72, "%s\n", v66);
          if (v67)
          {
            free(v67);
          }

          CFRelease(v64);
        }

        else
        {
          v51 = sub_10003E080();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            v52 = sub_10003E020(self->super.super._targetProcessId);
            v53 = self->super.super._targetProcessId;
            v54 = self->super.super._isSampling;
            v55 = self->super.super._hasSampled;
            *buf = 136316418;
            v87 = v52;
            v88 = 1024;
            v89 = v53;
            v90 = 2080;
            *v91 = "stream && !_isSampling && _hasSampled";
            *&v91[8] = 1024;
            v92 = v47;
            v93 = 1024;
            v94 = v54;
            v95 = 1024;
            v96 = v55;
            _os_log_fault_impl(&_mh_execute_header, v51, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
          }

          if (qword_100127ED0)
          {
            v56 = qword_100127ED0;
          }

          else
          {
            v56 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v56);
        }

        *__error() = v48;
      }

      v73 = sub_10003E020(self->super.super._targetProcessId);
      v82 = self->super.super._isSampling;
      v83 = self->super.super._hasSampled;
      v79 = self->super.super._targetProcessId;
      sub_10003DF54("[SPSampledProcess _saveReportToStream:]", "SPProcessEvent.m", 1338, "%s [%d]: %s: save report fail %d %d %d", v74, v75, v76, v77, v73);
    }

    abort();
  }

  if (!self->super.super._isUrgent)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v22 = *__error();
        v23 = sub_10003E080();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Waiting for sampling to complete", buf, 2u);
        }

        *__error() = v22;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v15 = *__error();
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for sampling to complete");
      if (v25)
      {
        v26 = v25;
        v27 = CFStringGetCStringPtr(v25, 0x8000100u);
        if (v27)
        {
          v28 = v27;
          v29 = 0;
        }

        else
        {
          v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x10D3A410uLL);
          CFStringGetCString(v26, v28, 1024, 0x8000100u);
          v29 = v28;
        }

        if (qword_100127ED0)
        {
          v35 = qword_100127ED0;
        }

        else
        {
          v35 = __stderrp;
        }

        fprintf(v35, "%s\n", v28);
        if (v29)
        {
          free(v29);
        }

        v32 = v26;
        goto LABEL_54;
      }

      v33 = sub_10003E080();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2530();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v10 = *__error();
        v11 = sub_10003E080();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = sub_10003E020(*p_targetProcessId);
          v13 = *p_targetProcessId;
          *buf = 136446466;
          v87 = v12;
          v88 = 1024;
          v89 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}s [%d]: Waiting for sampling to complete", buf, 0x12u);
        }

        *__error() = v10;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v15 = *__error();
      v16 = sub_10003E020(*p_targetProcessId);
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Waiting for sampling to complete", v16, *p_targetProcessId);
      if (v17)
      {
        v18 = v17;
        v19 = CFStringGetCStringPtr(v17, 0x8000100u);
        if (v19)
        {
          v20 = v19;
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x10D3A410uLL);
          CFStringGetCString(v18, v20, 1024, 0x8000100u);
          v21 = v20;
        }

        if (qword_100127ED0)
        {
          v31 = qword_100127ED0;
        }

        else
        {
          v31 = __stderrp;
        }

        fprintf(v31, "%s\n", v20);
        if (v21)
        {
          free(v21);
        }

        v32 = v18;
LABEL_54:
        CFRelease(v32);
LABEL_55:
        *__error() = v15;
LABEL_56:
        [(SPStackshotProvider *)self->super.super._sampleProvider waitForSamplingToComplete];
        goto LABEL_57;
      }

      v30 = sub_10003E080();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2564();
      }
    }

    if (qword_100127ED0)
    {
      v34 = qword_100127ED0;
    }

    else
    {
      v34 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v34);
    goto LABEL_55;
  }

LABEL_57:
  sampleProvider = self->super.super._sampleProvider;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_10008DD38;
  v85[3] = &unk_100115C90;
  v85[4] = self;
  v85[5] = a3;
  [(SPStackshotProvider *)sampleProvider performSampleStoreWork:v85];
}

- (void)_performSamplePrinterWork:(id)a3
{
  v8 = a3;
  if (!v8 || self->super.super._isSampling || !self->super.super._hasSampled)
  {
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v45 = *__error();
        v46 = sub_10003E080();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000C2694(v8 != 0, self);
        }

        *__error() = v45;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v58 = v8 != 0;
        v59 = *__error();
        v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: save report fail %d %d %d", "callback && !_isSampling && _hasSampled", v8 != 0, self->super.super._isSampling, self->super.super._hasSampled);
        if (v60)
        {
          v69 = v60;
          v85 = v59;
          CStringPtr = CFStringGetCStringPtr(v60, 0x8000100u);
          if (CStringPtr)
          {
            v71 = CStringPtr;
            v72 = 0;
          }

          else
          {
            v71 = malloc_type_calloc(0x400uLL, 1uLL, 0x1AEC2614uLL);
            CFStringGetCString(v69, v71, 1024, 0x8000100u);
            v72 = v71;
          }

          if (qword_100127ED0)
          {
            v79 = qword_100127ED0;
          }

          else
          {
            v79 = __stderrp;
          }

          fprintf(v79, "%s\n", v71);
          if (v72)
          {
            free(v72);
          }

          CFRelease(v69);
          v59 = v85;
        }

        else
        {
          v61 = sub_10003E080();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            isSampling = self->super.super._isSampling;
            hasSampled = self->super.super._hasSampled;
            *buf = 136315906;
            v89 = "callback && !_isSampling && _hasSampled";
            v90 = 1024;
            v91 = v58;
            v92 = 1024;
            *v93 = isSampling;
            *&v93[4] = 1024;
            *&v93[6] = hasSampled;
            _os_log_fault_impl(&_mh_execute_header, v61, OS_LOG_TYPE_FAULT, "Unable to format: %s: save report fail %d %d %d", buf, 0x1Eu);
          }

          if (qword_100127ED0)
          {
            v64 = qword_100127ED0;
          }

          else
          {
            v64 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v64);
        }

        *__error() = v59;
      }

      v81 = self->super.super._isSampling;
      v82 = self->super.super._hasSampled;
      sub_10003DF54("[SPSampledProcess _performSamplePrinterWork:]", "SPProcessEvent.m", 1354, "%s: save report fail %d %d %d", v4, v5, v6, v7, "callback && !_isSampling && _hasSampled");
    }

    else
    {
      if (byte_100127EC8)
      {
        v38 = *__error();
        v39 = sub_10003E080();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = sub_10003E020(self->super.super._targetProcessId);
          targetProcessId = self->super.super._targetProcessId;
          v42 = self->super.super._isSampling;
          v43 = self->super.super._hasSampled;
          *buf = 136316418;
          v89 = v40;
          v90 = 1024;
          v91 = targetProcessId;
          v92 = 2080;
          *v93 = "callback && !_isSampling && _hasSampled";
          *&v93[8] = 1024;
          v94 = v8 != 0;
          v95 = 1024;
          v96 = v42;
          v97 = 1024;
          v98 = v43;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
        }

        *__error() = v38;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v48 = v8 != 0;
        v49 = *__error();
        v50 = sub_10003E020(self->super.super._targetProcessId);
        v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: save report fail %d %d %d", v50, self->super.super._targetProcessId, "callback && !_isSampling && _hasSampled", v48, self->super.super._isSampling, self->super.super._hasSampled);
        if (v51)
        {
          v65 = v51;
          v66 = CFStringGetCStringPtr(v51, 0x8000100u);
          if (v66)
          {
            v67 = v66;
            v68 = 0;
          }

          else
          {
            v67 = malloc_type_calloc(0x400uLL, 1uLL, 0x1AEC2614uLL);
            CFStringGetCString(v65, v67, 1024, 0x8000100u);
            v68 = v67;
          }

          if (qword_100127ED0)
          {
            v73 = qword_100127ED0;
          }

          else
          {
            v73 = __stderrp;
          }

          fprintf(v73, "%s\n", v67);
          if (v68)
          {
            free(v68);
          }

          CFRelease(v65);
        }

        else
        {
          v52 = sub_10003E080();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            v53 = sub_10003E020(self->super.super._targetProcessId);
            v54 = self->super.super._targetProcessId;
            v55 = self->super.super._isSampling;
            v56 = self->super.super._hasSampled;
            *buf = 136316418;
            v89 = v53;
            v90 = 1024;
            v91 = v54;
            v92 = 2080;
            *v93 = "callback && !_isSampling && _hasSampled";
            *&v93[8] = 1024;
            v94 = v48;
            v95 = 1024;
            v96 = v55;
            v97 = 1024;
            v98 = v56;
            _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
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

        *__error() = v49;
      }

      v74 = sub_10003E020(self->super.super._targetProcessId);
      v83 = self->super.super._isSampling;
      v84 = self->super.super._hasSampled;
      v80 = self->super.super._targetProcessId;
      sub_10003DF54("[SPSampledProcess _performSamplePrinterWork:]", "SPProcessEvent.m", 1354, "%s [%d]: %s: save report fail %d %d %d", v75, v76, v77, v78, v74);
    }

    abort();
  }

  if (!self->super.super._isUrgent)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v22 = *__error();
        v23 = sub_10003E080();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Waiting for sampling to complete", buf, 2u);
        }

        *__error() = v22;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v15 = *__error();
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for sampling to complete");
      if (v25)
      {
        v26 = v25;
        v27 = CFStringGetCStringPtr(v25, 0x8000100u);
        if (v27)
        {
          v28 = v27;
          v29 = 0;
        }

        else
        {
          v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D4E8C43uLL);
          CFStringGetCString(v26, v28, 1024, 0x8000100u);
          v29 = v28;
        }

        if (qword_100127ED0)
        {
          v35 = qword_100127ED0;
        }

        else
        {
          v35 = __stderrp;
        }

        fprintf(v35, "%s\n", v28);
        if (v29)
        {
          free(v29);
        }

        v32 = v26;
        goto LABEL_54;
      }

      v33 = sub_10003E080();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2660();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v10 = *__error();
        v11 = sub_10003E080();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = sub_10003E020(*p_targetProcessId);
          v13 = *p_targetProcessId;
          *buf = 136446466;
          v89 = v12;
          v90 = 1024;
          v91 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}s [%d]: Waiting for sampling to complete", buf, 0x12u);
        }

        *__error() = v10;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v15 = *__error();
      v16 = sub_10003E020(*p_targetProcessId);
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Waiting for sampling to complete", v16, *p_targetProcessId);
      if (v17)
      {
        v18 = v17;
        v19 = CFStringGetCStringPtr(v17, 0x8000100u);
        if (v19)
        {
          v20 = v19;
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D4E8C43uLL);
          CFStringGetCString(v18, v20, 1024, 0x8000100u);
          v21 = v20;
        }

        if (qword_100127ED0)
        {
          v31 = qword_100127ED0;
        }

        else
        {
          v31 = __stderrp;
        }

        fprintf(v31, "%s\n", v20);
        if (v21)
        {
          free(v21);
        }

        v32 = v18;
LABEL_54:
        CFRelease(v32);
LABEL_55:
        *__error() = v15;
LABEL_56:
        [(SPStackshotProvider *)self->super.super._sampleProvider waitForSamplingToComplete];
        goto LABEL_57;
      }

      v30 = sub_10003E080();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2564();
      }
    }

    if (qword_100127ED0)
    {
      v34 = qword_100127ED0;
    }

    else
    {
      v34 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v34);
    goto LABEL_55;
  }

LABEL_57:
  sampleProvider = self->super.super._sampleProvider;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10008E770;
  v86[3] = &unk_100115CB8;
  v86[4] = self;
  v87 = v8;
  v37 = v8;
  [(SPStackshotProvider *)sampleProvider performSampleStoreWork:v86];
}

@end