@interface WRM_SpeedTestConfigIOS
- (WRM_SpeedTestConfigIOS)init;
- (void)abort;
- (void)startDownloadTest:(id)test;
@end

@implementation WRM_SpeedTestConfigIOS

- (WRM_SpeedTestConfigIOS)init
{
  v10.receiver = self;
  v10.super_class = WRM_SpeedTestConfigIOS;
  v2 = [(WRM_SpeedTestConfigIOS *)&v10 init];
  v2->inProgress = 0;
  [WCM_Logging logLevel:22 message:@"CellularThroughput: CellularTest init"];
  if (!sub_10009D964())
  {
    v8 = @"CellularThroughput: runtime check for presence of NPTKit.framework failed";
    goto LABEL_11;
  }

  [WCM_Logging logLevel:22 message:@"CellularThroughput: runtime check for presence of NPTKit.framework passed"];
  [WCM_Logging logLevel:22 message:@"CellularThroughput: Creating Configuration"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_10009DAA8;
  v3 = qword_1002B7EA0;
  v20 = sub_10009DAB8;
  v21 = qword_1002B7EA0;
  if (!qword_1002B7EA0)
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10009DAC4;
    v14 = &unk_10023DCC8;
    v15 = &v16;
    sub_10009DAC4(&v11);
    v3 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  defaultConfigurationCellular = [v3 defaultConfigurationCellular];
  if (!defaultConfigurationCellular)
  {
    v8 = @"CellularThroughput: performanceTestWithConfig is nil";
    goto LABEL_11;
  }

  v5 = defaultConfigurationCellular;
  [defaultConfigurationCellular setInterfaceType:0];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"CellularThroughput: performanceTestWithConfig.interfaceType: %d", [v5 interfaceType]);
  [v5 setDownloadSize:100];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"CellularThroughput: performanceTestWithConfig.downloadSize: %d", [v5 downloadSize]);
  [v5 setClientName:@"analyticsAutomation"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_10009DAA8;
  v6 = qword_1002B7EA8;
  v20 = sub_10009DAB8;
  v21 = qword_1002B7EA8;
  if (!qword_1002B7EA8)
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10009DB60;
    v14 = &unk_10023DCC8;
    v15 = &v16;
    sub_10009DB60(&v11);
    v6 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  v7 = [v6 performanceTestWithConfiguration:v5];
  v2->performanceTest = v7;
  if (!v7)
  {
    v8 = @"CellularThroughput: performanceTest is nil";
LABEL_11:
    [WCM_Logging logLevel:22 message:v8];
    return 0;
  }

  return v2;
}

- (void)startDownloadTest:(id)test
{
  if (self->performanceTest)
  {
    if (!self->inProgress)
    {
      self->inProgress = 1;
      v7 = self->performanceTest;
      [(NPTPerformanceTest *)self->performanceTest startMetadataCollectionWithCompletion:0];
      performanceTest = self->performanceTest;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10009D500;
      v9[3] = &unk_10023FF50;
      v9[4] = self;
      v9[5] = test;
      [(NPTPerformanceTest *)performanceTest startDownloadWithCompletion:v9];
      return;
    }

    v5 = @"Download task already started";
  }

  else
  {
    v5 = @"NPTPerformanceTest instance nil, bailing out";
  }

  [WCM_Logging logLevel:22 message:v5];
  if (test)
  {
    v6 = *(test + 2);

    v6(test, @"NO");
  }
}

- (void)abort
{
  performanceTest = self->performanceTest;
  if (performanceTest)
  {
    [(NPTPerformanceTest *)performanceTest cancelAllNetworking];
  }

  self->inProgress = 0;
}

@end