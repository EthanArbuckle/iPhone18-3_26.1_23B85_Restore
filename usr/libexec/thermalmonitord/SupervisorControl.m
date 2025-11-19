@interface SupervisorControl
- (BOOL)isHotspotFirstEngaged;
- (BOOL)shouldEnforceLightThermalPressure;
- (BOOL)shouldForceThermalLevelForThreshold:(int)a3;
- (__CFString)copyFieldCurrentValueForIndex:(int)a3;
- (__CFString)copyHeaderForIndex:(int)a3;
- (int)computePackageCEforSeedingSource:(unsigned __int8)a3;
- (int)computePackageCurrentSeedPower;
- (int)getThermalStateofHotspot;
- (unsigned)chooseEffectiveSeedingSource;
- (unsigned)seedControlEffort;
- (void)applyAlternateTarget:(BOOL)a3;
- (void)dealloc;
- (void)overrideTargetTemperature:(float)a3;
- (void)resetTargetTemperature;
- (void)setDecisionTableSection:(id)a3;
- (void)updateHotSpotTemperatureAndStatus:(float)a3;
@end

@implementation SupervisorControl

- (void)setDecisionTableSection:(id)a3
{
  v30 = self;
  v4 = [[NSMutableArray alloc] initWithCapacity:17];
  v5 = 0;
  v6 = &off_1000862F0;
  p_info = &OBJC_METACLASS___tmaebd0dcfb4dfe66d8a830ae2ac995fbc.info;
  v8 = &qword_1000AB718;
  v9 = @"dtFormatType";
  do
  {
    v10 = [a3 valueForKey:{v6[v5], v30}];
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFArrayGetTypeID() && CFArrayGetCount(v11) == 256)
      {
        v13 = [[MaxLoadIndexTableSectionVariable alloc] initWithDecisionTreeSection:v11];
      }

      else
      {
        v14 = CFGetTypeID(v11);
        if (v14 != CFDictionaryGetTypeID())
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            sub_10005B964(&v34, v35);
          }

          goto LABEL_22;
        }

        if ([objc_msgSend(v11 objectForKey:{v9), "unsignedIntegerValue"}] != 1)
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            sub_10005B990(&v36, v37);
          }

          goto LABEL_22;
        }

        if (v5 == 5)
        {
          v15 = 100;
        }

        else
        {
          v15 = 101;
        }

        v31 = v15;
        v16 = p_info;
        v17 = [MaxLoadIndexTableSectionPiecewiseLinear alloc];
        v18 = a3;
        v19 = v6;
        v20 = v8;
        v21 = v4;
        v22 = v9;
        v23 = [v11 objectForKey:@"controlEfforts"];
        v24 = [v11 objectForKey:@"maxLIs"];
        v25 = v17;
        p_info = v16;
        v26 = v23;
        v9 = v22;
        v4 = v21;
        v8 = v20;
        v6 = v19;
        a3 = v18;
        v13 = [(MaxLoadIndexTableSectionPiecewiseLinear *)v25 initWithDecisionTreeSectionControlEfforts:v26 maxLIs:v24 unconstrainedMaxLI:v31];
      }
    }

    else
    {
      v27 = objc_alloc((p_info + 506));
      if (v5 == 5)
      {
        v28 = 100;
      }

      else
      {
        v28 = 101;
      }

      v13 = [v27 initWithConstantMaxLI:v28];
    }

    v29 = v13;
    if (v13)
    {
      [v4 addObject:v13];

      goto LABEL_24;
    }

LABEL_22:
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      sub_10005B9BC(&v32, v33);
    }

LABEL_24:
    ++v5;
  }

  while (v5 != 17);
  v30->_maxLoadIndexTable = [v4 copy];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SupervisorControl;
  [(PidComponent *)&v2 dealloc];
}

- (void)updateHotSpotTemperatureAndStatus:(float)a3
{
  self->hotspotTemperature = *(&self->super.controlEffort + 1);
  *(&self->super.controlEffort + 1) = a3;
  TARGET = self->super.TARGET;
  if (self->forcedThermalPressureLevelLight.isTriggered)
  {
    TARGET = TARGET - self->THERMAL_TRAP_SLEEP;
  }

  self->forcedThermalPressureLevelLight.isTriggered = TARGET < a3;
}

- (unsigned)seedControlEffort
{
  v2 = self;
  v3 = [(SupervisorControl *)self chooseEffectiveSeedingSource];
  if ((v3 - 3) <= 3u)
  {
    LOBYTE(v2) = [(SupervisorControl *)v2 computePackageCEforSeedingSource:v3];
    return v2;
  }

  if (v3 == 2)
  {
    v4 = [qword_1000ABCB0 getCPUTargetPower];
    v5 = [qword_1000ABCB0 getGPUTargetPower];
  }

  else
  {
    if (v3 != 1)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v4 = [qword_1000ABCB0 getCurrentCPUPower];
    v5 = [qword_1000ABCB0 getCurrentGPUPower];
  }

  v6 = v5;
  if (v4 < v5)
  {
    v7 = [qword_1000ABCB0 getCurrentGPULoadingIndex:v5];
    LODWORD(v2) = [-[NSArray objectAtIndex:](v2->_maxLoadIndexTable objectAtIndex:{1), "getControlEffortForMaxLI:", v7}];
    if (byte_1000AB2F8 == 1)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109632;
        v13 = v6;
        v14 = 1024;
        v15 = v7;
        v16 = 1024;
        v17 = v2;
        v9 = "<Notice> Seeding from GPU power %d, seed maxLI %d, CE %d";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x14u);
        return v2;
      }
    }

    return v2;
  }

LABEL_12:
  v10 = [qword_1000ABCB0 getCurrentCPULoadingIndex:v4];
  LODWORD(v2) = [-[NSArray objectAtIndex:](v2->_maxLoadIndexTable objectAtIndex:{0), "getControlEffortForMaxLI:", v10}];
  if (byte_1000AB2F8 == 1)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109632;
      v13 = v4;
      v14 = 1024;
      v15 = v10;
      v16 = 1024;
      v17 = v2;
      v9 = "<Notice> Seeding from CPU power %d, seed maxLI %d, CE %d";
      goto LABEL_15;
    }
  }

  return v2;
}

- (unsigned)chooseEffectiveSeedingSource
{
  seedingSource = self->seedingSource;
  if (seedingSource > 3)
  {
    switch(seedingSource)
    {
      case 4:
        [+[PowerZoneTelemetry sharedInstance](PowerZoneTelemetry getPackagePowerZoneLimited];
        v4 = v6 <= 0.0;
        v5 = 3;
        break;
      case 5:
        return seedingSource;
      case 6:
        [+[PowerZoneTelemetry sharedInstance](PowerZoneTelemetry getPackagePowerZoneLimited];
        v4 = v3 <= 0.0;
        v5 = 5;
        break;
      default:
LABEL_14:
        seedingSource = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
        if (seedingSource)
        {
          sub_10005B9E8();
          LOBYTE(seedingSource) = 0;
        }

        return seedingSource;
    }

    if (v4)
    {
      LOBYTE(seedingSource) = 4;
    }

    else
    {
      LOBYTE(seedingSource) = v5;
    }

    return seedingSource;
  }

  if (seedingSource == 1)
  {
    return seedingSource;
  }

  if (seedingSource != 2)
  {
    if (seedingSource == 3)
    {
      return seedingSource;
    }

    goto LABEL_14;
  }

  [+[PowerZoneTelemetry sharedInstance](PowerZoneTelemetry getCpuPowerZoneLimited];
  if (v7 <= 0.0 && ([+[PowerZoneTelemetry sharedInstance](PowerZoneTelemetry getGpuPowerZoneLimited], v8 <= 0.0) && ([+[PowerZoneTelemetry getPackagePowerZoneLimited] sharedInstance])
  {
    LOBYTE(seedingSource) = 2;
  }

  else
  {
    LOBYTE(seedingSource) = 1;
  }

  return seedingSource;
}

- (int)computePackageCEforSeedingSource:(unsigned __int8)a3
{
  switch(a3)
  {
    case 5u:
      v4 = [qword_1000ABCB0 getCurrentPackagePower];
      break;
    case 4u:
      v4 = [qword_1000ABCB0 getPackageTargetPower];
      break;
    case 3u:
      v4 = [(SupervisorControl *)self computePackageCurrentSeedPower];
      break;
    default:
      v5 = 0;
      goto LABEL_9;
  }

  v5 = v4;
LABEL_9:
  v6 = [qword_1000ABCB0 getCurrentPackageLoadingIndex:v5];
  v7 = [-[NSArray objectAtIndex:](self->_maxLoadIndexTable objectAtIndex:{12), "getControlEffortForMaxLI:", v6}];
  if (byte_1000AB2F8 == 1)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109632;
      v10[1] = v5;
      v11 = 1024;
      v12 = v6;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Seeding from Package power %d, seed maxLI %d, CE %d", v10, 0x14u);
    }
  }

  return v7;
}

- (int)computePackageCurrentSeedPower
{
  [qword_1000ABCB0 getCLPCPackagePowerCPUSplitFraction];
  v3 = v2;
  v4 = [qword_1000ABCB0 getCurrentCPUPower];
  v5 = [qword_1000ABCB0 getCurrentGPUPower];
  if (v4 > v5)
  {
    v6 = v4;
  }

  else
  {
    v3 = 1.0 - v3;
    v6 = v5;
  }

  v7 = (v6 / v3);
  if (byte_1000AB2F8 == 1)
  {
    v8 = v5;
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109888;
      v11[1] = v4;
      v12 = 1024;
      v13 = v8;
      v14 = 2048;
      v15 = v3;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> cpuPower: %d, gpuPower: %d, splitFraction: %f, computedPackagePower: %d", v11, 0x1Eu);
    }
  }

  return v7;
}

- (int)getThermalStateofHotspot
{
  previousHotSpotTemperature = self->previousHotSpotTemperature;
  if (previousHotSpotTemperature >= 0.0)
  {
    v4 = *(&self->super.controlEffort + 1);
    THERMAL_TRAP_LOAD = self->THERMAL_TRAP_LOAD;
    if (v4 >= THERMAL_TRAP_LOAD)
    {
      v3 = 2;
    }

    else
    {
      releaseHysteresis = self->releaseHysteresis;
      if (v4 < previousHotSpotTemperature)
      {
        if (LODWORD(releaseHysteresis) != 1)
        {
          if (LODWORD(releaseHysteresis) != 2)
          {
LABEL_9:
            v3 = 0;
            self->releaseHysteresis = 0.0;
            return v3;
          }

          LODWORD(self->releaseHysteresis) = 1;
        }

        if ((v4 + self->THERMAL_TRAP_SLEEP) >= previousHotSpotTemperature)
        {
          return 1;
        }

        goto LABEL_9;
      }

      if (LODWORD(releaseHysteresis) == 2 && (v4 + self->THERMAL_TRAP_SLEEP) >= THERMAL_TRAP_LOAD)
      {
        return 2;
      }

      v3 = 1;
    }

    LODWORD(self->releaseHysteresis) = v3;
    return v3;
  }

  return 0;
}

- (BOOL)isHotspotFirstEngaged
{
  result = 0;
  if ([(SupervisorControl *)self didWeCrossTargetTemp])
  {
    v4.receiver = self;
    v4.super_class = SupervisorControl;
    if ([(PidComponent *)&v4 isIntegratorAtMin])
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)shouldForceThermalLevelForThreshold:(int)a3
{
  v3 = &self->tState + 3 * a3;
  v4 = *v3;
  if (*v3 <= 0.0)
  {
    return 0;
  }

  if (*(v3 + 8) == 1)
  {
    v4 = v4 - *(v3 + 1);
  }

  result = *(&self->super.controlEffort + 1) >= v4;
  *(v3 + 8) = result;
  return result;
}

- (BOOL)shouldEnforceLightThermalPressure
{
  p_isTriggered = &self->forcedThermalLevel[1].isTriggered;
  v3 = *&self->forcedThermalLevel[1].isTriggered;
  if (v3 <= 0.0)
  {
    return 0;
  }

  if (LOBYTE(self->forcedThermalPressureLevelLight.triggerHysteresis) == 1)
  {
    v3 = v3 - self->forcedThermalPressureLevelLight.triggerTarget;
  }

  result = *(&self->super.controlEffort + 1) >= v3;
  p_isTriggered[8] = result;
  return result;
}

- (void)overrideTargetTemperature:(float)a3
{
  self->super.TARGET = a3;
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      mitigationType = self->super.mitigationType;
      v7 = 136315650;
      v8 = "[SupervisorControl overrideTargetTemperature:]";
      v9 = 1024;
      v10 = mitigationType;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> %s: hotspot %d, target %0.2f", &v7, 0x1Cu);
    }
  }
}

- (void)resetTargetTemperature
{
  targetNominal = self->_targetNominal;
  self->super.TARGET = targetNominal;
  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      mitigationType = self->super.mitigationType;
      v6 = 136315650;
      v7 = "[SupervisorControl resetTargetTemperature]";
      v8 = 1024;
      v9 = mitigationType;
      v10 = 2048;
      v11 = targetNominal;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> %s: hotspot %d, target %0.2f", &v6, 0x1Cu);
    }
  }
}

- (void)applyAlternateTarget:(BOOL)a3
{
  alternateTarget = self->_alternateTarget;
  if (alternateTarget >= 0.0)
  {
    if (!a3)
    {
      alternateTarget = self->_targetNominal;
    }

    self->super.TARGET = alternateTarget;
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      mitigationType = self->super.mitigationType;
      v7 = 136315650;
      v8 = "[SupervisorControl applyAlternateTarget:]";
      v9 = 1024;
      v10 = mitigationType;
      v11 = 2048;
      v12 = alternateTarget;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> %s: Updated hotspot %d, target %0.2f", &v7, 0x1Cu);
    }
  }
}

- (__CFString)copyHeaderForIndex:(int)a3
{
  if (!a3)
  {
    v3 = @"Control Effort%@";
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, v3, self->super.nameofComponent);
  }

  if (a3 == 1)
  {
    v3 = @"Integrator%@";
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, v3, self->super.nameofComponent);
  }

  return 0;
}

- (__CFString)copyFieldCurrentValueForIndex:(int)a3
{
  if (a3 == 1)
  {
    v3 = kCFAllocatorDefault;
    integrator = self->super.integrator;
    return CFStringCreateWithFormat(v3, 0, @"%d", integrator);
  }

  if (!a3)
  {
    v3 = kCFAllocatorDefault;
    integrator = self->super.controlEffort;
    return CFStringCreateWithFormat(v3, 0, @"%d", integrator);
  }

  return 0;
}

@end