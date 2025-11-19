@interface MIBUSMCHelper
- (BOOL)isKeySupported:(id)a3;
- (MIBUSMCHelper)init;
- (id)readSMCKey:(id)a3 error:(id *)a4;
- (unsigned)_openAppleSMC:(id *)a3;
- (unsigned)_smcKeyFromString:(id)a3;
- (void)_closeAppleSMC:(id *)a3;
- (void)dealloc;
- (void)openAppleSMC:(id *)a3;
- (void)writeSMCKey:(id)a3 data:(id)a4 error:(id *)a5;
@end

@implementation MIBUSMCHelper

- (MIBUSMCHelper)init
{
  v5.receiver = self;
  v5.super_class = MIBUSMCHelper;
  v2 = [(MIBUSMCHelper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUSMCHelper *)v2 setConnection:0];
  }

  return v3;
}

- (void)dealloc
{
  if ([(MIBUSMCHelper *)self connection])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100056AC4();
    }

    v3 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Closing SMC connection...", buf, 2u);
    }

    v7 = 0;
    [(MIBUSMCHelper *)self _closeAppleSMC:&v7];
    v4 = v7;
    if (!v4)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100056AD8();
      }

      v5 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully closed SMC connection", buf, 2u);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = MIBUSMCHelper;
  [(MIBUSMCHelper *)&v6 dealloc];
}

- (void)openAppleSMC:(id *)a3
{
  if (![(MIBUSMCHelper *)self connection])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100056B00();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Opening io connection to SMC ...", buf, 2u);
    }

    v4 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v4;
      v13 = v4;
      v9 = [(MIBUSMCHelper *)self _openAppleSMC:&v13];
      v4 = v13;

      [(MIBUSMCHelper *)self setConnection:v9];
      if ([(MIBUSMCHelper *)self connection])
      {
        if (!v4)
        {
          break;
        }
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_100056B3C();
      }

      v10 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v15 = v7;
        v16 = 1024;
        v17 = 3;
        v18 = 1024;
        v19 = 1;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to open SMC, attempt %d/%d, retrying in %ds...", buf, 0x14u);
      }

      sleep(1u);
      if (++v7 == 4)
      {
        goto LABEL_3;
      }
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_100056B14();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully opened io connection to SMC", buf, 2u);
    }
  }

  v4 = 0;
LABEL_3:
  if (a3)
  {
    v5 = v4;
    *a3 = v4;
  }
}

- (BOOL)isKeySupported:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(MIBUSMCHelper *)self readSMCKey:v4 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5 || [v6 code] != 2684354561)
  {
    v9 = 1;
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100056B64();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100056B8C(v4, v8);
    }

    v9 = 0;
  }

  return v9;
}

- (id)readSMCKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  outputStructCnt = 168;
  memset(inputStruct, 0, sizeof(inputStruct));
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  outputStruct = 0u;
  v36 = 0u;
  v7 = [(MIBUSMCHelper *)self _smcKeyFromString:v6];
  if ([(MIBUSMCHelper *)self connection])
  {
    memset(inputStruct + 4, 0, 164);
    outputStruct = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    LODWORD(inputStruct[0]) = v7;
    BYTE2(inputStruct[5]) = 9;
    v8 = IOConnectCallStructMethod([(MIBUSMCHelper *)self connection], 2u, inputStruct, 0xA8uLL, &outputStruct, &outputStructCnt);
    if (v8 || BYTE8(v37))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100056D7C();
      }

      v13 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v30 = v6;
        v31 = 1024;
        v32 = v8;
        v33 = 1024;
        v34 = BYTE8(v37);
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to read info for key: %{public}@; ret: 0x%X; smc ret: 0x%X", buf, 0x18u);
      }

      sub_100016130(a4, 2684354561, 0, @"Failed to read info for key: %@; ret: 0x%X; smc ret: 0x%X", v14, v15, v16, v17, v6);
    }

    else
    {
      v9 = HIDWORD(v36);
      if (HIDWORD(v36) >= 0x79)
      {
        sub_100056C60(v6, SHIDWORD(v36), a4);
      }

      else
      {
        memset(inputStruct + 4, 0, 164);
        outputStruct = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0;
        LODWORD(inputStruct[0]) = v7;
        HIDWORD(inputStruct[3]) = v9;
        BYTE2(inputStruct[5]) = 5;
        v10 = IOConnectCallStructMethod([(MIBUSMCHelper *)self connection], 2u, inputStruct, 0xA8uLL, &outputStruct, &outputStructCnt);
        if (v10 || BYTE8(v37))
        {
          if (qword_1000B84A8[0] != -1)
          {
            sub_100056C38();
          }

          v18 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v30 = v6;
            v31 = 1024;
            v32 = v10;
            v33 = 1024;
            v34 = BYTE8(v37);
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to read key: %{public}@; ret: 0x%X; smc ret: 0x%X", buf, 0x18u);
          }

          sub_100016130(a4, 2684354563, 0, @"Failed to read key: %@; ret: 0x%X; smc ret: 0x%X", v19, v20, v21, v22, v6);
        }

        else
        {
          if (HIDWORD(v36) <= v9)
          {
            v11 = [[NSData alloc] initWithBytes:&v38 length:v9];
            goto LABEL_9;
          }

          if (qword_1000B84A8[0] != -1)
          {
            sub_100056C10();
          }

          v23 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v30 = v6;
            v31 = 1024;
            v32 = HIDWORD(v36);
            v33 = 1024;
            v34 = v9;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Key %{public}@ has size %d which exceeds expected size of %d", buf, 0x18u);
          }

          sub_100016130(a4, 2684354562, 0, @"Key %@ has size %d which exceeds expected size of %d", v24, v25, v26, v27, v6);
        }
      }
    }
  }

  else
  {
    sub_100056DA4(v6, a4);
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)writeSMCKey:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MIBUSMCHelper *)self _smcKeyFromString:v8];
  outputStructCnt = 80;
  if ([v9 length] >= 0x21)
  {
    sub_100056EDC(v8, v9, a5);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
    v30 = 0u;
    v29 = 0u;
    memset(outputStruct, 0, sizeof(outputStruct));
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    inputStruct = v10;
    BYTE2(v31[1]) = 6;
    DWORD2(v30) = [v9 length];
    if ([v9 length])
    {
      v11 = 0;
      do
      {
        *(&v31[3] + v11) = *([v9 bytes] + v11);
        ++v11;
      }

      while (v11 < [v9 length]);
    }

    v12 = IOConnectCallStructMethod([(MIBUSMCHelper *)self connection], 2u, &inputStruct, 0x50uLL, outputStruct, &outputStructCnt);
    if (v12 || BYTE8(v25))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100056EB4();
      }

      v14 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = v8;
        v22 = 1024;
        LODWORD(v23[0]) = v12;
        WORD2(v23[0]) = 1024;
        *(v23 + 6) = BYTE8(v25);
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to write key: %{public}@; ret: 0x%X; smc ret: 0x%X", buf, 0x18u);
      }

      sub_100016130(a5, 2684354564, 0, @"Failed to write key: %@; ret: 0x%X; smc ret: 0x%X", v15, v16, v17, v18, v8);
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100056E8C();
      }

      v13 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = v8;
        v22 = 2114;
        v23[0] = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully written key %{public}@ with data: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (unsigned)_openAppleSMC:(id *)a3
{
  connect = 0;
  v3 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    v6 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    IOObjectRelease(v5);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = connect == 0;
    }

    if (v7)
    {
      sub_1000570D4();
    }

    else if (IOConnectCallScalarMethod(connect, 0, 0, 0, 0, 0))
    {
      sub_100056FFC();
    }
  }

  else
  {
    sub_1000571AC();
  }

  return connect;
}

- (void)_closeAppleSMC:(id *)a3
{
  if (IOConnectCallScalarMethod([(MIBUSMCHelper *)self connection], 1u, 0, 0, 0, 0))
  {
    sub_1000572A0();
  }

  else if (IOServiceClose([(MIBUSMCHelper *)self connection]))
  {
    sub_100057380();
  }
}

- (unsigned)_smcKeyFromString:(id)a3
{
  v4 = 0;
  v5 = 0;
  do
  {
    v5 = [a3 characterAtIndex:v4++] | (v5 << 8);
  }

  while (v4 != 4);
  return v5;
}

@end