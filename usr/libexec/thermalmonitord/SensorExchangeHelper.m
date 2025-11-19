@interface SensorExchangeHelper
+ (id)sharedInstance;
- (SensorExchangeHelper)init;
- (smcExchangeSensorGroupInfo)getSensorGroupForSMCKeyString:(__CFString *)a3;
- (void)forceSensorExchangeDataToSMC;
- (void)registerCLTMSensorIndex:(int)a3 forSMCKey:(__CFString *)a4 atSMCIndex:(int)a5;
- (void)sendSensorExchangeDataToSMC;
- (void)updateAllSensorExchangeData;
- (void)writeSMCExchangeDataForGroup:(smcExchangeSensorGroupInfo *)a3 withData:(void *)a4;
@end

@implementation SensorExchangeHelper

- (void)updateAllSensorExchangeData
{
  [qword_1000ABCB0 getCurrentCPUPower];
  [qword_1000ABCB0 getCurrentGPUPower];
  v3 = 0;
  v4 = 232;
  do
  {
    v5 = self + 4 * v3;
    v6 = *(v5 + 28);
    if ((v6 & 0x80000000) == 0 && v3 < self->cameraSensors.data.BYTES.p1[0])
    {
      v7 = *(&qword_1000AB824 + v6);
      v8 = v7 / 100.0;
      if (*(v5 + 58) != v8)
      {
        if (byte_1000AB2F8 == 1)
        {
          v9 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v29 = v6;
            v30 = 1024;
            LODWORD(v31) = v7;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> Camera sensor update found for sensor# %d with value: %d", buf, 0xEu);
          }
        }

        *(v5 + 58) = v8;
        self->cameraSensors.SensorExchangeUpdateNeeded = 1;
      }
    }

    v10 = *(v5 + 96);
    if ((v10 & 0x80000000) == 0 && v3 < self->aopSensors.data.BYTES.p1[0])
    {
      v11 = *(&qword_1000AB824 + v10);
      v12 = v11 / 100.0;
      if (*(v5 + 126) != v12)
      {
        if (byte_1000AB2F8 == 1)
        {
          v13 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v29 = v10;
            v30 = 1024;
            LODWORD(v31) = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> AOP sensor update found for sensor# %d with value: %d", buf, 0xEu);
          }
        }

        *(v5 + 126) = v12;
        self->aopSensors.SensorExchangeUpdateNeeded = 1;
      }
    }

    v14 = *(v5 + 164);
    if ((v14 & 0x80000000) == 0 && v3 < self->basebandSensors.data.BYTES.p1[0])
    {
      v15 = *(&qword_1000AB824 + v14);
      v16 = v15 / 100.0;
      if (*(v5 + 194) != v16)
      {
        if (byte_1000AB2F8 == 1)
        {
          v17 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v29 = v14;
            v30 = 1024;
            LODWORD(v31) = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<Notice> Baseband sensor update found for sensor# %d with value: %d", buf, 0xEu);
          }
        }

        *(v5 + 194) = v16;
        self->basebandSensors.SensorExchangeUpdateNeeded = 1;
      }
    }

    v18 = *(&self->super.isa + v4 * 4);
    if ((v18 & 0x80000000) == 0 && v3 < self->displaySensors.data.BYTES.p1[0])
    {
      v19 = *(&qword_1000AB824 + v18);
      v20 = v19 / 100.0;
      if (*(v5 + 262) != v20)
      {
        if (byte_1000AB2F8 == 1)
        {
          v21 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v29 = v18;
            v30 = 1024;
            LODWORD(v31) = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> Display sensor update found for sensor# %d with value: %d", buf, 0xEu);
          }
        }

        *(v5 + 262) = v20;
        self->displaySensors.SensorExchangeUpdateNeeded = 1;
      }
    }

    ui32Raw = self->cameraSensors.data.SENSORS.sensorArray[v4 + 10].UI32.ui32Raw;
    if ((ui32Raw & 0x80000000) == 0 && v3 < self->miscSensors.data.BYTES.p1[0])
    {
      v23 = v3 == 26 || v3 == 1 ? *(&qword_1000AB824 + ui32Raw) / 100.0 : dword_1000AB938[ui32Raw];
      if (v23 != *(v5 + 330))
      {
        if (byte_1000AB2F8 == 1)
        {
          v24 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v29 = ui32Raw;
            v30 = 2048;
            v31 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "<Notice> Misc sensor update found for sensor# %d with value: %f", buf, 0x12u);
          }
        }

        *(v5 + 330) = v23;
        self->miscSensors.SensorExchangeUpdateNeeded = 1;
      }
    }

    v25 = self->aopSensors.data.SENSORS.sensorArray[v4 + 10].UI32.ui32Raw;
    if ((v25 & 0x80000000) == 0 && v3 < self->misc2Sensors.data.BYTES.p1[0])
    {
      v26 = v3 == 3 || v3 == 2 ? *(&qword_1000AB824 + v25) / 100.0 : *&dword_1000ABA38[v25];
      if (v26 != *(v5 + 398))
      {
        if (byte_1000AB2F8 == 1)
        {
          v27 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v29 = v25;
            v30 = 2048;
            v31 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<Notice> Misc2 sensor update found for sensor# %d with value: %f", buf, 0x12u);
          }
        }

        *(v5 + 398) = v26;
        self->misc2Sensors.SensorExchangeUpdateNeeded = 1;
      }
    }

    ++v3;
    ++v4;
  }

  while (v3 != 29);
}

+ (id)sharedInstance
{
  if (qword_1000AAC38 != -1)
  {
    sub_100053D7C();
  }

  return qword_1000AAC40;
}

- (void)sendSensorExchangeDataToSMC
{
  pthread_mutex_lock(&self->lock);
  if (byte_1000AB2F8 == 1)
  {
    v3 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> In sendSensorExchangeDataToSMC function", buf, 2u);
    }
  }

  if (self->cameraSensors.SensorExchangeUpdateNeeded || self->aopSensors.SensorExchangeUpdateNeeded || self->basebandSensors.SensorExchangeUpdateNeeded || self->displaySensors.SensorExchangeUpdateNeeded || self->miscSensors.SensorExchangeUpdateNeeded || self->misc2Sensors.SensorExchangeUpdateNeeded || self->strapSensors.SensorExchangeUpdateNeeded)
  {
    v4 = IOServiceMatching("AppleSMC");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    if (!MatchingService || (v6 = MatchingService, v7 = IOServiceOpen(MatchingService, mach_task_self_, 0, &self->smcPort), IOObjectRelease(v6), v7) || (smcPort = self->smcPort) == 0 || IOConnectCallScalarMethod(smcPort, 0, 0, 0, 0, 0))
    {
      self->smcPort = 0;
      goto LABEL_16;
    }

    if (!self->smcPort)
    {
LABEL_16:
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100053E84();
      }

      goto LABEL_18;
    }

    [(SensorExchangeHelper *)self writeSMCExchangeDataForGroup:&self->cameraSensors withData:&self->cameraSensors.data];
    [(SensorExchangeHelper *)self writeSMCExchangeDataForGroup:&self->aopSensors withData:&self->aopSensors.data];
    [(SensorExchangeHelper *)self writeSMCExchangeDataForGroup:&self->basebandSensors withData:&self->basebandSensors.data];
    [(SensorExchangeHelper *)self writeSMCExchangeDataForGroup:&self->displaySensors withData:&self->displaySensors.data];
    [(SensorExchangeHelper *)self writeSMCExchangeDataForGroup:&self->miscSensors withData:&self->miscSensors.data];
    [(SensorExchangeHelper *)self writeSMCExchangeDataForGroup:&self->misc2Sensors withData:&self->misc2Sensors.data];
    [(SensorExchangeHelper *)self writeSMCExchangeDataForGroup:&self->strapSensors withData:&self->strapSensors.data];
    v9 = self->smcPort;
    if (v9 && !IOConnectCallScalarMethod(v9, 1u, 0, 0, 0, 0))
    {
      IOServiceClose(self->smcPort);
    }
  }

  else if (byte_1000AB2F8 == 1)
  {
    v10 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> No sensor groups require updates", v11, 2u);
    }
  }

LABEL_18:
  pthread_mutex_unlock(&self->lock);
}

- (SensorExchangeHelper)init
{
  v6.receiver = self;
  v6.super_class = SensorExchangeHelper;
  v2 = [(SensorExchangeHelper *)&v6 init];
  v3 = v2;
  if (v2)
  {
    if (pthread_mutex_init(&v2->lock, 0))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100053D90();
      }

      return 0;
    }

    else
    {
      v3->smcPort = 0;
      v3->cameraSensors.sensorExchangeKeyStr = @"zECm";
      v3->cameraSensors.sensorExchangeKeyValue = 2051359597;
      v3->cameraSensors.sensorExchangeKeySize = 64;
      v3->cameraSensors.numberOfSensors = 15;
      v3->cameraSensors.SensorExchangeUpdateNeeded = 0;
      *v3->cameraSensors.data.BYTES.p1 = 267;
      v3->aopSensors.sensorExchangeKeyStr = @"zEAO";
      v3->aopSensors.sensorExchangeKeyValue = 2051359055;
      v3->aopSensors.sensorExchangeKeySize = 32;
      v3->aopSensors.SensorExchangeUpdateNeeded = 0;
      *v3->aopSensors.data.BYTES.p1 = 261;
      v3->basebandSensors.sensorExchangeKeyStr = @"zEWi";
      v3->basebandSensors.sensorExchangeKeyValue = 2051364713;
      v3->basebandSensors.sensorExchangeKeySize = 32;
      v3->basebandSensors.SensorExchangeUpdateNeeded = 0;
      *v3->basebandSensors.data.BYTES.p1 = 259;
      v3->displaySensors.sensorExchangeKeyStr = @"zETC";
      v3->displaySensors.sensorExchangeKeyValue = 2051363907;
      v3->displaySensors.sensorExchangeKeySize = 32;
      v3->displaySensors.SensorExchangeUpdateNeeded = 0;
      *v3->displaySensors.data.BYTES.p1 = 260;
      v3->miscSensors.sensorExchangeKeyStr = @"zETM";
      v3->miscSensors.sensorExchangeKeyValue = 2051363917;
      v3->miscSensors.sensorExchangeKeySize = 120;
      v3->miscSensors.numberOfSensors = 29;
      v3->miscSensors.SensorExchangeUpdateNeeded = 0;
      *v3->miscSensors.data.BYTES.p1 = 285;
      v3->misc2Sensors.sensorExchangeKeyStr = @"zETN";
      v3->misc2Sensors.sensorExchangeKeyValue = 2051363918;
      v3->misc2Sensors.sensorExchangeKeySize = 120;
      v3->misc2Sensors.numberOfSensors = 29;
      v3->misc2Sensors.SensorExchangeUpdateNeeded = 0;
      *v3->misc2Sensors.data.BYTES.p1 = 260;
      v3->strapSensors.sensorExchangeKeyStr = @"zEAR";
      v3->strapSensors.sensorExchangeKeyValue = 2051359058;
      v3->strapSensors.sensorExchangeKeySize = 32;
      v3->strapSensors.numberOfSensors = 7;
      v3->strapSensors.SensorExchangeUpdateNeeded = 0;
      *v3->strapSensors.data.BYTES.p1 = 258;
      v3->cameraSensors.sensorIndexLUT[28] = -1;
      *&v4 = -1;
      *(&v4 + 1) = -1;
      *&v3->cameraSensors.sensorIndexLUT[20] = v4;
      *&v3->cameraSensors.sensorIndexLUT[24] = v4;
      *&v3->cameraSensors.sensorIndexLUT[12] = v4;
      *&v3->cameraSensors.sensorIndexLUT[16] = v4;
      *&v3->cameraSensors.sensorIndexLUT[4] = v4;
      *&v3->cameraSensors.sensorIndexLUT[8] = v4;
      *v3->cameraSensors.sensorIndexLUT = v4;
      *v3->aopSensors.sensorIndexLUT = v4;
      *&v3->aopSensors.sensorIndexLUT[4] = v4;
      *&v3->aopSensors.sensorIndexLUT[8] = v4;
      *&v3->aopSensors.sensorIndexLUT[12] = v4;
      *&v3->aopSensors.sensorIndexLUT[16] = v4;
      *&v3->aopSensors.sensorIndexLUT[20] = v4;
      *&v3->aopSensors.sensorIndexLUT[24] = v4;
      v3->aopSensors.sensorIndexLUT[28] = -1;
      *v3->basebandSensors.sensorIndexLUT = v4;
      *&v3->basebandSensors.sensorIndexLUT[4] = v4;
      *&v3->basebandSensors.sensorIndexLUT[8] = v4;
      *&v3->basebandSensors.sensorIndexLUT[12] = v4;
      *&v3->basebandSensors.sensorIndexLUT[16] = v4;
      *&v3->basebandSensors.sensorIndexLUT[20] = v4;
      *&v3->basebandSensors.sensorIndexLUT[24] = v4;
      v3->basebandSensors.sensorIndexLUT[28] = -1;
      v3->displaySensors.sensorIndexLUT[28] = -1;
      *&v3->displaySensors.sensorIndexLUT[20] = v4;
      *&v3->displaySensors.sensorIndexLUT[24] = v4;
      *&v3->displaySensors.sensorIndexLUT[12] = v4;
      *&v3->displaySensors.sensorIndexLUT[16] = v4;
      *&v3->displaySensors.sensorIndexLUT[4] = v4;
      *&v3->displaySensors.sensorIndexLUT[8] = v4;
      *v3->displaySensors.sensorIndexLUT = v4;
      v3->miscSensors.sensorIndexLUT[28] = -1;
      *&v3->miscSensors.sensorIndexLUT[24] = v4;
      *&v3->miscSensors.sensorIndexLUT[20] = v4;
      *&v3->miscSensors.sensorIndexLUT[16] = v4;
      *&v3->miscSensors.sensorIndexLUT[12] = v4;
      *&v3->miscSensors.sensorIndexLUT[8] = v4;
      *&v3->miscSensors.sensorIndexLUT[4] = v4;
      *v3->miscSensors.sensorIndexLUT = v4;
      v3->misc2Sensors.sensorIndexLUT[28] = -1;
      *&v3->misc2Sensors.sensorIndexLUT[24] = v4;
      *&v3->misc2Sensors.sensorIndexLUT[20] = v4;
      *&v3->misc2Sensors.sensorIndexLUT[16] = v4;
      *&v3->misc2Sensors.sensorIndexLUT[12] = v4;
      *&v3->misc2Sensors.sensorIndexLUT[8] = v4;
      *&v3->misc2Sensors.sensorIndexLUT[4] = v4;
      *v3->misc2Sensors.sensorIndexLUT = v4;
      v3->strapSensors.sensorIndexLUT[28] = -1;
      *&v3->strapSensors.sensorIndexLUT[24] = v4;
      *&v3->strapSensors.sensorIndexLUT[20] = v4;
      *&v3->strapSensors.sensorIndexLUT[16] = v4;
      *&v3->strapSensors.sensorIndexLUT[12] = v4;
      *&v3->strapSensors.sensorIndexLUT[8] = v4;
      *&v3->strapSensors.sensorIndexLUT[4] = v4;
      *v3->strapSensors.sensorIndexLUT = v4;
    }
  }

  return v3;
}

- (void)writeSMCExchangeDataForGroup:(smcExchangeSensorGroupInfo *)a3 withData:(void *)a4
{
  smcPort = self->smcPort;
  if (smcPort)
  {
    if (a3->SensorExchangeUpdateNeeded)
    {
      if (byte_1000AB2F8 == 1)
      {
        v8 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          sensorExchangeKeyStr = a3->sensorExchangeKeyStr;
          *buf = 138412290;
          *&v34 = sensorExchangeKeyStr;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Writing sensor data to SMC key %@", buf, 0xCu);
          smcPort = self->smcPort;
        }
      }

      sensorExchangeKeyValue = a3->sensorExchangeKeyValue;
      sensorExchangeKeySize = a3->sensorExchangeKeySize;
      v15 = 168;
      v34 = 0u;
      v35 = 0u;
      memset(v36, 0, sizeof(v36));
      v37 = 0;
      memset(outputStruct, 0, sizeof(outputStruct));
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      v16[0] = HIBYTE(sensorExchangeKeyValue);
      v16[1] = BYTE2(sensorExchangeKeyValue);
      v16[2] = BYTE1(sensorExchangeKeyValue);
      v16[3] = sensorExchangeKeyValue;
      v16[4] = 0;
      v36[6] = 6;
      *buf = sensorExchangeKeyValue;
      DWORD2(v35) = sensorExchangeKeySize;
      if (sensorExchangeKeySize)
      {
        memcpy(&v36[12], a4, sensorExchangeKeySize);
      }

      v12 = IOConnectCallStructMethod(smcPort, 2u, buf, 0xA8uLL, outputStruct, &v15);
      v13 = BYTE8(v24);
      if (!v12 && !BYTE8(v24))
      {
        goto LABEL_14;
      }

      v14 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        *v17 = 136315650;
        v18 = v16;
        v19 = 1024;
        v20 = v12;
        v21 = 1024;
        v22 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "<Error> Write failed for key '%s' (0x%X, 0x%X)\n", v17, 0x18u);
        if (v12)
        {
LABEL_12:
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100053DD0();
          }
        }
      }

      else if (v12)
      {
        goto LABEL_12;
      }

LABEL_14:
      a3->SensorExchangeUpdateNeeded = 0;
      ++a3->data.BYTES.p1[2];
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100053E44();
  }
}

- (smcExchangeSensorGroupInfo)getSensorGroupForSMCKeyString:(__CFString *)a3
{
  p_cameraSensors = &self->cameraSensors;
  if (CFStringCompare(a3, self->cameraSensors.sensorExchangeKeyStr, 0))
  {
    if (CFStringCompare(a3, self->aopSensors.sensorExchangeKeyStr, 0))
    {
      if (CFStringCompare(a3, self->basebandSensors.sensorExchangeKeyStr, 0))
      {
        if (CFStringCompare(a3, self->displaySensors.sensorExchangeKeyStr, 0))
        {
          if (CFStringCompare(a3, self->miscSensors.sensorExchangeKeyStr, 0))
          {
            if (CFStringCompare(a3, self->misc2Sensors.sensorExchangeKeyStr, 0))
            {
              p_cameraSensors = &self->strapSensors;
              if (CFStringCompare(a3, self->strapSensors.sensorExchangeKeyStr, 0))
              {
                return 0;
              }
            }

            else
            {
              return &self->misc2Sensors;
            }
          }

          else
          {
            return &self->miscSensors;
          }
        }

        else
        {
          return &self->displaySensors;
        }
      }

      else
      {
        return &self->basebandSensors;
      }
    }

    else
    {
      return &self->aopSensors;
    }
  }

  return p_cameraSensors;
}

- (void)registerCLTMSensorIndex:(int)a3 forSMCKey:(__CFString *)a4 atSMCIndex:(int)a5
{
  v8 = [(SensorExchangeHelper *)self getSensorGroupForSMCKeyString:a4];
  if (v8)
  {
    if ((a5 | a3) < 0)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100053EF8();
      }
    }

    else
    {
      v9 = v8;
      if (CFStringCompare(a4, v8->sensorExchangeKeyStr, 0) == kCFCompareEqualTo)
      {
        if (v9->numberOfSensors > a5)
        {
          if (byte_1000AB2F8 == 1)
          {
            v10 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              v12 = 67109376;
              v13 = a3;
              v14 = 1024;
              LODWORD(v15) = a5;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> Assigning CLTM sensor index %d to SMC sensor index: %d", &v12, 0xEu);
            }
          }

          v9->sensorIndexLUT[a5] = a3;
          return;
        }

        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100053F60();
        }
      }

      v11 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        v12 = 67109634;
        v13 = a3;
        v14 = 2112;
        v15 = a4;
        v16 = 1024;
        v17 = a5;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "<Error> Unable to assign CLTM index:%d to any SMC sensor group for key:%@ and index:%d", &v12, 0x18u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100053FC8();
  }
}

- (void)forceSensorExchangeDataToSMC
{
  self->cameraSensors.SensorExchangeUpdateNeeded = 1;
  self->aopSensors.SensorExchangeUpdateNeeded = 1;
  self->basebandSensors.SensorExchangeUpdateNeeded = 1;
  self->displaySensors.SensorExchangeUpdateNeeded = 1;
  self->miscSensors.SensorExchangeUpdateNeeded = 1;
  self->misc2Sensors.SensorExchangeUpdateNeeded = 1;
  self->strapSensors.SensorExchangeUpdateNeeded = 1;
  [(SensorExchangeHelper *)self sendSensorExchangeDataToSMC];
}

@end