@interface TableDrivenDecisionTree
- (TableDrivenDecisionTree)initWithComponentControllers:(id)a3 hotspotControllers:(id)a4 decisionTreeTable:(id)a5;
- (int)getMTypeFromComponent:(int)a3;
- (void)actionComponentControl;
- (void)evaluateDecisionTree;
- (void)initDecisionTable:(__CFDictionary *)a3;
- (void)readReleaseRateForAllComponents;
@end

@implementation TableDrivenDecisionTree

- (void)evaluateDecisionTree
{
  v3 = 0;
  releaseMaxLoadIndexForComponent = self->releaseMaxLoadIndexForComponent;
  maxLoadIndexForComponent = self->maxLoadIndexForComponent;
  v4 = [(NSArray *)self->_hotspotControllers count];
  do
  {
    if (v4 < 1)
    {
      LOBYTE(v7) = 101;
      LOBYTE(v6) = 101;
    }

    else
    {
      v5 = 0;
      v6 = 101;
      v7 = 101;
      do
      {
        v8 = [(NSArray *)self->_hotspotControllers objectAtIndex:v5, releaseMaxLoadIndexForComponent, maxLoadIndexForComponent];
        v9 = [v8 maxLIForComponent:v3];
        v10 = [v8 releaseMaxLIForComponent:v3 releaseRate:self->releaseRateForComponent[v3]];
        if (v6 >= v9)
        {
          v6 = v9;
        }

        if (v7 >= v10)
        {
          v7 = v10;
        }

        ++v5;
      }

      while ((v4 & 0x7FFFFFFF) != v5);
    }

    maxLoadIndexForComponent[v3] = v6;
    releaseMaxLoadIndexForComponent[v3++] = v7;
  }

  while (v3 != 17);

  [(TableDrivenDecisionTree *)self actionComponentControl];
}

- (void)actionComponentControl
{
  if (byte_1000ABCA1 == 1)
  {
    sub_1000533A0(self);
  }

  for (i = 0; i != 17; ++i)
  {
    v4 = [(TableDrivenDecisionTree *)self findCC:[(TableDrivenDecisionTree *)self getMTypeFromComponent:i]];
    if (v4)
    {
      v5 = v4;
      if (i == 3 && [v4 shouldSuppressMitigations])
      {
        v6 = v5;
        v7 = 100;
        v8 = 100;
      }

      else
      {
        if (byte_1000ABCA1 != 1 || (byte_1000AAC08 & 1) != 0)
        {
          [v5 setMaxLoadingIndex:self->maxLoadIndexForComponent[i] releaseIndex:self->releaseMaxLoadIndexForComponent[i]];
          v43[i] = [v5 getReleaseMaxLI];
          continue;
        }

        v7 = *(&qword_1000ABC90 + i);
        v6 = v5;
        v8 = v7;
      }

      [v6 setMaxLoadingIndex:v7 releaseIndex:v8];
    }

    else
    {
      v43[i] = 101;
    }
  }

  if (byte_1000AB2F8)
  {
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67113216;
      v10[1] = v43[3];
      v11 = 1024;
      v12 = v43[4];
      v13 = 1024;
      v14 = v43[0];
      v15 = 1024;
      v16 = v43[1];
      v17 = 1024;
      v18 = v43[2];
      v19 = 1024;
      v20 = v43[5];
      v21 = 1024;
      v22 = v43[6];
      v23 = 1024;
      v24 = v43[7];
      v25 = 1024;
      v26 = v43[8];
      v27 = 1024;
      v28 = v43[9];
      v29 = 1024;
      v30 = v43[10];
      v31 = 1024;
      v32 = v43[11];
      v33 = 1024;
      v34 = v43[12];
      v35 = 1024;
      v36 = v43[13];
      v37 = 1024;
      v38 = v43[15];
      v39 = 1024;
      v40 = v43[14];
      v41 = 1024;
      v42 = v43[16];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> ReleaseMaxLI DT: BL %d Charge %d CPU %d SOC %d Radio %d ThermalLevel %d RefreshRate %d Fan %d WiFi %d AudioAmp %d Arc %d Speaker %d Package %d RadioModemBand %d RadioFR2RFCG %d RadioFR2RFBC %d RadioFR2RFBand %d", v10, 0x68u);
    }
  }
}

- (TableDrivenDecisionTree)initWithComponentControllers:(id)a3 hotspotControllers:(id)a4 decisionTreeTable:(id)a5
{
  v11.receiver = self;
  v11.super_class = TableDrivenDecisionTree;
  v8 = [(TableDrivenDecisionTree *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 1) = a3;
    *(v8 + 2) = a4;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    v8[40] = 0;
    *(v8 + 49) = 0;
    *(v8 + 41) = 0;
    v8[57] = 0;
    [v8 initDecisionTable:a5];
  }

  return v9;
}

- (int)getMTypeFromComponent:(int)a3
{
  if (a3 > 0x10)
  {
    return -1;
  }

  else
  {
    return dword_100067140[a3];
  }
}

- (void)readReleaseRateForAllComponents
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000232A8;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AAC10 != -1)
  {
    dispatch_once(&qword_1000AAC10, block);
  }
}

- (void)initDecisionTable:(__CFDictionary *)a3
{
  if (a3 && CFDictionaryGetCount(a3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"HotSpotDecisionTableNormal%d", v5 + 1);
      if (v7)
      {
        v8 = v7;
        Value = CFDictionaryGetValue(a3, v7);
        if (Value)
        {
          [-[NSArray objectAtIndex:](self->_hotspotControllers objectAtIndex:{v5), "setDecisionTableSection:", Value}];
          [(TableDrivenDecisionTree *)self readReleaseRateForAllComponents];
        }

        CFRelease(v8);
      }

      ++v5;
    }

    while (CFDictionaryGetCount(a3) > v6);
  }
}

@end