@interface CpuCC
- (CpuCC)initWithParams:(__CFDictionary *)a3 powerScale:(float)a4 listID:(int)a5 needspowerZones:(BOOL)a6;
- (int)numberOfFields;
- (unsigned)getUserUsage;
- (void)defaultAction;
- (void)refreshFunctionalTelemetry;
@end

@implementation CpuCC

- (CpuCC)initWithParams:(__CFDictionary *)a3 powerScale:(float)a4 listID:(int)a5 needspowerZones:(BOOL)a6
{
  v15.receiver = self;
  v15.super_class = CpuCC;
  v10 = [(ComponentControl *)&v15 initWithCC:2];
  v11 = v10;
  if (v10)
  {
    *(&v10->super.currentPower + 1) = 101;
    v10->kDVD1Level = a5;
    *&v10->prevCpu.cpu_ticks[3] = a4;
    v10->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d CPU ", 2);
    v11->listIDPos = mach_host_self();
    v11->super.super.boundCheckLow = 0;
    v11->super.super.boundCheckHigh = 101;
    *&v11->host = 0;
    *&v11->currCpu.cpu_ticks[1] = 0;
    *&v11->currCpu.cpu_ticks[3] = 0;
    *&v11->prevCpu.cpu_ticks[1] = 0;
    if (sub_100002A20(a3, @"minReachableLoadIndex", kCFNumberIntType, &v11->_usesPowerZoneControl))
    {
      v12 = *&v11->_usesPowerZoneControl;
      *&v13 = 100.0 / (100 - v12);
      v11->_minReachableLoadIndex = v13;
      v11->_directMapSlope = 0.5 - (*&v13 * v12);
    }

    LOBYTE(v11->timeActive) = a6;
  }

  return v11;
}

- (void)defaultAction
{
  [qword_1000ABCB0 setCPUPowerCeiling:*(&self->super.currentPower + 1) forDVD1Contributor:0];
  [qword_1000ABCB0 setCPUPowerCeiling:*(&self->super.currentPower + 1) fromDecisionSource:self->kDVD1Level];
  v3 = qword_1000ABCB0;

  [v3 updateCPU];
}

- (unsigned)getUserUsage
{
  host_info_outCnt = 4;
  p_host = &self->host;
  if (host_statistics(self->listIDPos, 3, &self->host, &host_info_outCnt))
  {
    v4 = qword_1000AB718;
    LODWORD(v5) = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_100052778(v4);
      LODWORD(v5) = 0;
    }
  }

  else
  {
    v6 = self->currCpu.cpu_ticks[2] + self->host - (self->currCpu.cpu_ticks[3] + self->prevCpu.cpu_ticks[2]) + self->currCpu.cpu_ticks[0] - self->prevCpu.cpu_ticks[0];
    v7 = self->currCpu.cpu_ticks[1] - self->prevCpu.cpu_ticks[1] + v6;
    *(&self->currCpu + 12) = *p_host;
    return 100 * v6 / v7;
  }

  return v5;
}

- (void)refreshFunctionalTelemetry
{
  currentLoadingIndex = self->super.currentLoadingIndex;
  if (currentLoadingIndex != 101)
  {
    v3 = self->_directMapSlope + (*&self->_minReachableLoadIndex * currentLoadingIndex);
    currentLoadingIndex = v3 & ~(v3 >> 31);
  }

  *(&self->super.currentPower + 1) = currentLoadingIndex;
  *&self->super.allowLIOverride = self->super.currentLoadingIndex;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = CpuCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 1;
}

@end