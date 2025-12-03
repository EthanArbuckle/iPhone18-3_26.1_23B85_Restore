@interface PowerZoneTelemetry
+ (id)sharedInstance;
- (PowerZoneTelemetry)init;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (void)dealloc;
- (void)queryData;
@end

@implementation PowerZoneTelemetry

+ (id)sharedInstance
{
  if (qword_1000A24C0 != -1)
  {
    sub_100051C34();
  }

  return qword_1000A24C8;
}

- (void)queryData
{
  v35 = -3;
  outputStruct = 0;
  if (IOConnectCallMethod(self->clpcConnect, 6u, 0, 0, 0, 0, 0, 0, &outputStruct, &v35))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051DB4();
    }

    return;
  }

  if (v35 <= 0x6F)
  {
    vm_deallocate(mach_task_self_, outputStruct, v35);
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051D4C();
    }

    return;
  }

  v3 = outputStruct;
  if (*(outputStruct + 8) == v35)
  {
    v4 = *(outputStruct + 24);
    v5 = mach_absolute_time();
    lastCLPCReadingTimestamp = self->lastCLPCReadingTimestamp;
    self->lastCLPCReadingTimestamp = v5;
    v7 = outputStruct;
    if (v4 >= *(v3 + 8))
    {
LABEL_23:
      if (v7 | v35)
      {
        vm_deallocate(mach_task_self_, v7, v35);
      }

      if (self->gpuChannels && self->gpuSubscription)
      {
        v27 = mach_absolute_time();
        gpuSubscription = self->gpuSubscription;
        gpuChannels = self->gpuChannels;
        Samples = IOReportCreateSamples();
        if (!Samples)
        {
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100051E1C();
          }

          return;
        }

        v31 = Samples;
        lastGPUReading = self->lastGPUReading;
        SamplesDelta = IOReportCreateSamplesDelta();
        CFRelease(self->lastGPUReading);
        v34 = v27 - self->lastGPUReadingTimestamp;
        self->lastGPUReading = v31;
        self->lastGPUReadingTimestamp = v27;
        IOReportIterate();
        if (SamplesDelta)
        {
          CFRelease(SamplesDelta);
        }
      }

      dword_1000AB97C = LODWORD(self->packagePowerZoneLimited);
      return;
    }

    v8 = v5 - lastCLPCReadingTimestamp;
    v9 = v8;
    while (1)
    {
      v10 = v7 + v4;
      v11 = *(v7 + v4);
      if (v11 == 14)
      {
        v17 = *(v10 + 16);
        if (v17 == 1)
        {
          v23 = *(v10 + 24);
          v24 = qword_1000A21D0;
          v25 = *(v10 + 16);
          xmmword_1000A21B8 = *v10;
          *algn_1000A21C8 = v25;
          v26 = v23 - v24;
          v22 = v26;
          self->cluster1FastDieLimitedMhz = v26;
          if (!v26)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_17;
          }

          v18 = *(v10 + 24);
          v19 = qword_1000A21B0;
          v20 = *(v10 + 16);
          xmmword_1000A2198 = *v10;
          *algn_1000A21A8 = v20;
          v21 = v18 - v19;
          v22 = v21;
          self->cluster0FastDieLimitedMhz = v21;
          if (!v21)
          {
            goto LABEL_17;
          }
        }

        self->cpuFastDieLimitedMhz = v22;
      }

      else
      {
        if (v11 != 13)
        {
          if (v7 | v35)
          {
            vm_deallocate(mach_task_self_, v7, v35);
          }

          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100051E50();
          }

          return;
        }

        v12 = *(v10 + 16) - qword_1000A2180;
        v13 = *(v10 + 32) - qword_1000A2190;
        v14 = *(v10 + 24) - unk_1000A2188;
        v16 = *v10;
        v15 = *(v10 + 16);
        qword_1000A2190 = *(v10 + 32);
        xmmword_1000A2170 = v16;
        *&qword_1000A2180 = v15;
        self->cpuPowerZoneLimited = v14 / v9;
        *&v15 = v13 / (self->tbfactor * v8);
        self->packagePowerZoneLimited = v12 / v9;
        LODWORD(self->currentPackagePower) = v15;
      }

LABEL_17:
      v4 += *(v10 + 8);
      if (v4 >= *(v3 + 8))
      {
        goto LABEL_23;
      }
    }
  }

  vm_deallocate(mach_task_self_, outputStruct, v35);
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051DE8();
  }
}

- (PowerZoneTelemetry)init
{
  v22.receiver = self;
  v22.super_class = PowerZoneTelemetry;
  v2 = [(PowerZoneTelemetry *)&v22 init];
  if (!v2)
  {
    return v2;
  }

  v3 = IOServiceMatching("AppleCLPC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  v2->appleCLPCService = MatchingService;
  size = -3;
  address = 0;
  if (!MatchingService)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051D80();
    }

    goto LABEL_38;
  }

  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &v2->clpcConnect))
  {
    if ((byte_1000A24D0 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051C48();
      }

      byte_1000A24D0 = 1;
    }

LABEL_8:
    IOObjectRelease(v2->appleCLPCService);
    goto LABEL_38;
  }

  if (IOConnectCallMethod(v2->clpcConnect, 6u, 0, 0, 0, 0, 0, 0, &address, &size))
  {
    IOObjectRelease(v2->appleCLPCService);
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051C7C();
    }

    goto LABEL_38;
  }

  if (size <= 0x6F)
  {
    IOObjectRelease(v2->appleCLPCService);
    vm_deallocate(mach_task_self_, address, size);
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051D4C();
    }

    goto LABEL_38;
  }

  v5 = address;
  if (*(address + 8) != size)
  {
    IOObjectRelease(v2->appleCLPCService);
    vm_deallocate(mach_task_self_, address, size);
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051CB0();
    }

LABEL_38:

    return 0;
  }

  v6 = *(address + 24);
  for (v2->lastCLPCReadingTimestamp = mach_absolute_time(); v6 < *(v5 + 8); v6 += *(v7 + 8))
  {
    v7 = address + v6;
    v8 = *(address + v6);
    if (v8 == 14)
    {
      v11 = *(v7 + 16);
      if (v11 == 1)
      {
        v13 = *(v7 + 16);
        xmmword_1000A21B8 = *v7;
        *algn_1000A21C8 = v13;
      }

      else if (!v11)
      {
        v12 = *(v7 + 16);
        xmmword_1000A2198 = *v7;
        *algn_1000A21A8 = v12;
      }
    }

    else
    {
      if (v8 != 13)
      {
        IOObjectRelease(v2->appleCLPCService);
        vm_deallocate(mach_task_self_, address, size);
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100051D18();
        }

        goto LABEL_38;
      }

      v9 = *v7;
      v10 = *(v7 + 16);
      qword_1000A2190 = *(v7 + 32);
      xmmword_1000A2170 = v9;
      *&qword_1000A2180 = v10;
    }
  }

  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }

  v14 = IOServiceMatching("AGXAccelerator");
  v15 = IOReportCopyChannelsWithID();
  CFRelease(v14);
  if (!v15)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051CE4();
    }

    goto LABEL_8;
  }

  v2->gpuSubscription = IOReportCreateSubscription();
  CFRelease(v15);
  if (v2->gpuChannels && v2->gpuSubscription)
  {
    v2->lastGPUReading = IOReportCreateSamples();
    v2->lastGPUReadingTimestamp = mach_absolute_time();
  }

  if (byte_1000ABC38 == 1)
  {
    [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:17 atSMCIndex:@"zETM", 17];
    dword_1000AB97C = 0;
  }

  [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v2];
  mach_timebase_info(&info);
  LODWORD(v16) = info.numer;
  LODWORD(v17) = info.denom;
  v2->tbfactor = v16 / v17;
  return v2;
}

- (void)dealloc
{
  appleCLPCService = self->appleCLPCService;
  if (appleCLPCService)
  {
    IOObjectRelease(appleCLPCService);
  }

  v4.receiver = self;
  v4.super_class = PowerZoneTelemetry;
  [(PowerZoneTelemetry *)&v4 dealloc];
}

- (__CFString)copyHeaderForIndex:(int)index
{
  if (index > 4)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, *(&off_1000856F8 + index), 0);
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  if (index > 4)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%f", *(&self->super.isa + qword_100066648[index]));
  }
}

@end