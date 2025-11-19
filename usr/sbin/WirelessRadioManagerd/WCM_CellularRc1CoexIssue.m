@interface WCM_CellularRc1CoexIssue
- (BOOL)setIssueFrequencyRangeByIssueBand:(id)a3;
- (BOOL)uwbCoexIssueFreqRangeForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 uwbIssueFreqRange:(id *)a7;
- (WCM_CellularRc1CoexIssue)init;
- (id)uwbNbDynamicCoexPolicyForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6;
- (void)uwbNbCoexIssueChannelForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 uwbNbIssueChannelBegin:(int *)a7 uwbNbIssueChannelEnd:(int *)a8;
@end

@implementation WCM_CellularRc1CoexIssue

- (WCM_CellularRc1CoexIssue)init
{
  v6.receiver = self;
  v6.super_class = WCM_CellularRc1CoexIssue;
  v2 = [(WCM_CellularRc1CoexIssue *)&v6 init];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = *(v2 + 11);
  *(v2 + 11) = v3;

  *(v2 + 5) = 0;
  *(v2 + 12) = -1;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 2) = xmmword_100195960;
  return v2;
}

- (BOOL)setIssueFrequencyRangeByIssueBand:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = unk_1002B9F28(off_1002B76C0, "objectForKey:", v4);

    if (v5)
    {
      v6 = unk_1002B9F30(off_1002B76C0, "objectForKey:", v4);
      v7 = [v6 objectAtIndexedSubscript:0];
      self->_bandInfoType = [v7 intValue];

      v8 = [v6 objectAtIndexedSubscript:1];
      v9 = [v8 intValue];

      self->_cellBand = v9;
      bandInfoType = self->_bandInfoType;
      if ((bandInfoType & 0x40) != 0 && v9 <= 0x4F)
      {
        v11 = &unk_100196030;
      }

      else if ((bandInfoType & 1) != 0 && v9 <= 0x58)
      {
        v11 = &unk_100196CB0;
      }

      else
      {
        v12 = 0;
        if ((bandInfoType & 8) == 0 || v9 > 0x15)
        {
          goto LABEL_14;
        }

        v11 = &unk_100197A98;
      }

      v13 = &v11[40 * v9];
      self->_downlinkLowFreq_Hz = *v13 * 1000000.0;
      self->_downlinkHighFreq_Hz = v13[1] * 1000000.0;
      self->_uplinkLowFreq_Hz = v13[2] * 1000000.0;
      self->_uplinkHighFreq_Hz = v13[3] * 1000000.0;
      v12 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (BOOL)uwbCoexIssueFreqRangeForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 uwbIssueFreqRange:(id *)a7
{
  v21 = 0.0;
  v22 = 0.0;
  v20 = 0uLL;
  Rc1IssueChannel = self->_Rc1IssueChannel;
  v11 = 500000000.0;
  v12 = 6239600000.0;
  if (Rc1IssueChannel > 31)
  {
    if (Rc1IssueChannel <= 127)
    {
      if (Rc1IssueChannel == 32)
      {
        v11 = 125000000.0;
        v12 = 6050000000.0;
        goto LABEL_23;
      }

      if (Rc1IssueChannel == 64)
      {
        v11 = 125000000.0;
        v12 = 6175000000.0;
        goto LABEL_23;
      }
    }

    else
    {
      switch(Rc1IssueChannel)
      {
        case 128:
          v11 = 125000000.0;
          v12 = 6300000000.0;
          goto LABEL_23;
        case 256:
          goto LABEL_23;
        case 512:
          goto LABEL_15;
      }
    }
  }

  else
  {
    if (Rc1IssueChannel > 3)
    {
      switch(Rc1IssueChannel)
      {
        case 4:
          v11 = 125000000.0;
          v12 = 5725000000.0;
          goto LABEL_23;
        case 8:
LABEL_7:
          v12 = 5925000000.0;
          goto LABEL_23;
        case 16:
          v11 = 125000000.0;
          goto LABEL_7;
      }

      goto LABEL_22;
    }

    if (Rc1IssueChannel == 1)
    {
      goto LABEL_23;
    }

    if (Rc1IssueChannel == 2)
    {
LABEL_15:
      v12 = 7737200000.0;
      goto LABEL_23;
    }
  }

LABEL_22:
  v12 = 0.0;
  v11 = 0.0;
LABEL_23:
  v13 = a6 - a5;
  v14 = a4 - a3;
  issueType = self->_issueType;
  if (issueType > 8)
  {
    if ((issueType - 12) < 2)
    {
      v20 = 0uLL;
    }

    else
    {
      if (issueType == 9)
      {
        v16 = sub_10008E4F4(0, v20.f64, a5, a6 - a5, v12, v11);
        if (!v16)
        {
          goto LABEL_44;
        }

        [WCM_Logging logLevel:4 message:@"2 x CellTx(%lf~%lf) = RC1 Rx(%lf~%lf)", *&a5, v13 + a5, *&v20.f64[0], v20.f64[0] + v20.f64[1], v18, v19];
        goto LABEL_43;
      }

      if (issueType != 14)
      {
        goto LABEL_49;
      }

      v16 = sub_10008E4F4(&v20, 0, v12, v11, a3, v14);
      if (!v16)
      {
        goto LABEL_44;
      }

      [WCM_Logging logLevel:4 message:@"(2 x RC1 Tx)(i.e. %lf~%lf) = CellRx(%lf~%lf)", *&v20.f64[0], v20.f64[0] + v20.f64[1], *&a3, v14 + a3, v18, v19];
    }

LABEL_43:
    LOBYTE(v16) = 1;
    goto LABEL_44;
  }

  if (issueType > 2)
  {
    if (issueType == 3)
    {
      v16 = sub_10008E790(v20.f64, 0, &v21, v12, v11, a5, a6 - a5, a3, v14);
      if (!v16)
      {
        goto LABEL_44;
      }

      [WCM_Logging logLevel:4 message:@"RC1 Tx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v20.f64[0], v20.f64[0] + v20.f64[1], *&a5, v13 + a5, *&v21, v21 + v22];
      goto LABEL_43;
    }

    if (issueType != 4 && issueType != 7)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  if (!issueType)
  {
    v16 = sub_10008E554(0, v20.f64, a5, a6 - a5, v12, v11);
    if (!v16)
    {
      goto LABEL_44;
    }

    [WCM_Logging logLevel:4 message:@"3 x CellTx(%lf~%lf) = RC1 Rx(%lf~%lf)", *&a5, v13 + a5, *&v20.f64[0], v20.f64[0] + v20.f64[1]];
    v20 = vaddq_f64(v20, xmmword_100195970);
    goto LABEL_43;
  }

  if (issueType == 1)
  {
LABEL_36:
    v16 = sub_10008E9F8(v20.f64, 0, &v21, v12, v11, a5, a6 - a5, a3, v14);
    if (!v16)
    {
      goto LABEL_44;
    }

    [WCM_Logging logLevel:4 message:@"2 x RC1 Tx(%lf~%lf) - CellTx(%lf~%lf) = CellRx(%lf~%lf)", *&v20.f64[0], v20.f64[0] + v20.f64[1], *&a5, v13 + a5, *&v21, v21 + v22];
    goto LABEL_43;
  }

LABEL_49:
  [WCM_Logging logLevel:0 message:@"WCM_WiFiCellCoexIssue(%p) has invalid _issueType(%d)", self, issueType];
  LOBYTE(v16) = 0;
LABEL_44:
  if (a7)
  {
    *a7 = v20;
  }

  return v16;
}

- (void)uwbNbCoexIssueChannelForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6 uwbNbIssueChannelBegin:(int *)a7 uwbNbIssueChannelEnd:(int *)a8
{
  Rc1IssueChannel = self->_Rc1IssueChannel;
  if (Rc1IssueChannel <= 31)
  {
    if (Rc1IssueChannel == 4)
    {
      v12 = 0;
      v13 = 5725000000.0;
      goto LABEL_14;
    }

    if (Rc1IssueChannel == 8 || Rc1IssueChannel == 16)
    {
      v12 = 50;
      v13 = 5925000000.0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (Rc1IssueChannel == 32)
  {
    v12 = 100;
    v13 = 6050000000.0;
    goto LABEL_14;
  }

  if (Rc1IssueChannel != 64)
  {
    if (Rc1IssueChannel == 128)
    {
      v12 = 200;
      v13 = 6300000000.0;
      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    v13 = 0.0;
    goto LABEL_14;
  }

  v12 = 150;
  v13 = 6175000000.0;
LABEL_14:
  v19 = 0.0;
  v20 = 0.0;
  if ([(WCM_CellularRc1CoexIssue *)self uwbCoexIssueFreqRangeForCellDlLowFreq:&v19 cellDlHighFreq:a3 cellUlLowFreq:a4 cellUlHighFreq:a5 uwbIssueFreqRange:a6])
  {
    if (v19 == 0.0)
    {
      *a7 = [(WCM_CellularRc1CoexIssue *)self nbChannelToAvoidStart];
      v14 = [(WCM_CellularRc1CoexIssue *)self nbChannelToAvoidEnd];
    }

    else
    {
      v16 = v19 + v20 - v13 + -1.0;
      *a7 = v12 + (v19 - v13) / 0x2625A0;
      v14 = v12 + (v16 / 0x2625A0);
    }

    *a8 = v14;
    v17 = *a7;
    v18 = v14;
    v15 = @"RC1 NB channels with issue [%d - %d]";
  }

  else
  {
    *a7 = -1;
    *a8 = -1;
    v15 = @"RC1 NB channels with issue: NONE";
  }

  [WCM_Logging logLevel:4 message:v15, v17, v18];
}

- (id)uwbNbDynamicCoexPolicyForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6
{
  v14 = -1;
  v15 = -1;
  [WCM_CellularRc1CoexIssue uwbNbCoexIssueChannelForCellDlLowFreq:"uwbNbCoexIssueChannelForCellDlLowFreq:cellDlHighFreq:cellUlLowFreq:cellUlHighFreq:uwbNbIssueChannelBegin:uwbNbIssueChannelEnd:" cellDlHighFreq:&v15 cellUlLowFreq:&v14 cellUlHighFreq:? uwbNbIssueChannelBegin:? uwbNbIssueChannelEnd:?];
  if (v15 == -1 || v14 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = [WCM_CellularRc1CoexIssue generateDynamicPolicyForCoexIssueForCellDlLowFreq:"generateDynamicPolicyForCoexIssueForCellDlLowFreq:cellDlHighFreq:cellUlLowFreq:cellUlHighFreq:rc1NbIssueChannelBegin:rc1NbIssueChannelEnd:" cellDlHighFreq:a3 cellUlLowFreq:a4 cellUlHighFreq:a5 rc1NbIssueChannelBegin:a6 rc1NbIssueChannelEnd:?];
  }

  return v12;
}

@end