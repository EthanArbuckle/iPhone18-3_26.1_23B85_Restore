@interface WCM_CellularRc1CoexIssueTable
- (id)findAllCellRc1CoexIssueByCellBandInfoType:(int)a3 CellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 RC1Channel:(int)a8;
- (id)findCellRc1CoexIssueByCellBandInfoType:(int)a3 CellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 RC1Channel:(int)a8;
- (id)initFromPlist:(id)a3;
- (id)initFromPlistV2:(id)a3;
- (unsigned)getTableSize;
@end

@implementation WCM_CellularRc1CoexIssueTable

- (id)initFromPlist:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = WCM_CellularRc1CoexIssueTable;
  v5 = [(WCM_CellularRc1CoexIssueTable *)&v69 init];
  v6 = objc_alloc_init(NSMutableArray);
  mCellularRc1CoexIssueTable = v5->mCellularRc1CoexIssueTable;
  p_isa = &v5->super.isa;
  v5->mCellularRc1CoexIssueTable = v6;

  v65 = v4;
  v64 = sub_10009D018(v4, @"plist");
  v8 = [NSPropertyListSerialization propertyListWithData:"propertyListWithData:options:format:error:" options:? format:? error:?];
  v63 = 0;
  if (v8)
  {
    [WCM_Logging logLevel:3 message:@"init Cellular-RC1 Coex Plist File Found"];
    if ([v8 count])
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = objc_alloc_init(WCM_CellularRc1CoexIssue);
        v12 = [v8 objectAtIndex:v9];
        v13 = [v12 objectForKey:@"issueBand"];

        [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: issueBand = %@", v13];
        if ([(WCM_CellularRc1CoexIssue *)v11 setIssueFrequencyRangeByIssueBand:v13])
        {
          v68 = v13;
          v14 = [v8 objectAtIndex:v9];
          v15 = [v14 objectForKey:@"issueType"];
          -[WCM_CellularRc1CoexIssue setIssueType:](v11, "setIssueType:", [v15 intValue]);

          v16 = [v8 objectAtIndex:v9];
          v17 = [v16 objectForKey:@"RC1Channel"];

          v67 = v17;
          [(WCM_CellularRc1CoexIssue *)v11 setRc1IssueChannel:sub_10005BA3C(v17)];
          v18 = [v8 objectAtIndex:v9];
          v19 = [v18 objectForKey:@"cellAntenna1"];
          v20 = [v19 intValue];

          v21 = [v8 objectAtIndex:v9];
          v22 = [v21 objectForKey:@"cellTxPowerLimit1"];

          v23 = [v8 objectAtIndex:v9];
          v24 = [v23 objectForKey:@"cellTxPowerLimit1"];
          [v24 doubleValue];
          v26 = v25;

          if (v20)
          {
            if ([v22 containsString:@"NA"])
            {
              v27 = [(WCM_CellularRc1CoexIssue *)v11 CellAntBlockingList];
              v28 = [NSNumber numberWithInt:v20];
              [v27 addObject:v28];

              [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: Block antenna %u", v20, v62, v63];
            }

            else
            {
              v29 = [(WCM_CellularRc1CoexIssue *)v11 cellTxPowerLimit];
              v30 = [NSNumber numberWithDouble:v26];
              v31 = [NSNumber numberWithInt:v20];
              [v29 setObject:v30 forKey:v31];

              [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: Power cap antenna %u to %@dBm", v20, v22, v63];
            }
          }

          v32 = [v8 objectAtIndex:v9];
          v33 = [v32 objectForKey:@"cellAntenna2"];
          v34 = [v33 intValue];

          v35 = [v8 objectAtIndex:v9];
          v36 = [v35 objectForKey:@"cellTxPowerLimit2"];

          v37 = [v8 objectAtIndex:v9];
          v38 = [v37 objectForKey:@"cellTxPowerLimit2"];
          [v38 doubleValue];
          v40 = v39;

          if (v34)
          {
            if ([v36 containsString:@"NA"])
            {
              v41 = [(WCM_CellularRc1CoexIssue *)v11 CellAntBlockingList];
              v42 = [NSNumber numberWithInt:v34];
              [v41 addObject:v42];

              [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: Block antenna %u", v34];
            }

            else
            {
              v43 = [(WCM_CellularRc1CoexIssue *)v11 cellTxPowerLimit];
              v44 = [NSNumber numberWithDouble:v40];
              v45 = [NSNumber numberWithInt:v34];
              [v43 setObject:v44 forKey:v45];

              v62 = v36;
              [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: Power cap antenna %u to %@dBm", v34];
            }
          }

          v46 = [v8 objectAtIndex:v9];
          v47 = [v46 objectForKey:@"cellAntenna3"];
          v48 = [v47 intValue];

          v49 = [v8 objectAtIndex:v9];
          v50 = [v49 objectForKey:@"cellTxPowerLimit3"];

          v51 = [v8 objectAtIndex:v9];
          v52 = [v51 objectForKey:@"cellTxPowerLimit3"];
          [v52 doubleValue];
          v54 = v53;

          v13 = v68;
          if (v48)
          {
            if ([v50 containsString:@"NA"])
            {
              v55 = [(WCM_CellularRc1CoexIssue *)v11 CellAntBlockingList];
              v56 = [NSNumber numberWithInt:v48];
              [v55 addObject:v56];

              [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: Block antenna %u", v48];
            }

            else
            {
              v57 = [(WCM_CellularRc1CoexIssue *)v11 cellTxPowerLimit];
              v58 = [NSNumber numberWithDouble:v54];
              v59 = [NSNumber numberWithInt:v48];
              [v57 setObject:v58 forKey:v59];

              v13 = v68;
              v62 = v50;
              [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: Power cap antenna %u to %@dBm", v48];
            }
          }

          [p_isa[1] addObject:v11];
        }

        else
        {
          [WCM_Logging logLevel:0 message:@"issue band %@ is not defined", v13];
        }

        v9 = v10;
      }

      while ([v8 count] > v10++);
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"init: No Plist File Found for Cellular-RC1 Coex"];
  }

  return p_isa;
}

- (id)initFromPlistV2:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = WCM_CellularRc1CoexIssueTable;
  v5 = [(WCM_CellularRc1CoexIssueTable *)&v49 init];
  v6 = objc_alloc_init(NSMutableArray);
  mCellularRc1CoexIssueTable = v5->mCellularRc1CoexIssueTable;
  v5->mCellularRc1CoexIssueTable = v6;

  v48 = 0;
  v8 = sub_10009D018(v4, @"plist");
  v47 = 0;
  v9 = [NSPropertyListSerialization propertyListWithData:v8 options:2 format:&v48 error:&v47];
  v10 = v47;
  if (v9)
  {
    v11 = @"init: Antenna blocking policy Plist File Found";
  }

  else
  {
    v11 = @"init: No antenna blocking policy Plist File Found";
  }

  [WCM_Logging logLevel:3 message:v11];
  v12 = [v9 objectForKey:@"NB_MMS_Client"];
  v13 = v12;
  if (v12)
  {
    v45 = v10;
    v46 = v8;
    v44 = v12;
    v14 = [v12 objectForKey:@"Policy"];
    if ([v14 count])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = objc_alloc_init(WCM_CellularRc1CoexIssue);
        v18 = [v14 objectAtIndex:v15];
        v19 = [v18 objectForKey:@"Cellular_Band"];
        -[WCM_CellularRc1CoexIssue setCellBand:](v17, "setCellBand:", [v19 intValue]);

        v20 = [v18 objectForKey:@"Coex_Tech"];
        -[WCM_CellularRc1CoexIssue setBandInfoType:](v17, "setBandInfoType:", [v20 intValue]);

        v21 = [v18 objectForKey:@"Issue_Type"];
        -[WCM_CellularRc1CoexIssue setIssueType:](v17, "setIssueType:", [v21 intValue]);

        v22 = [v18 objectForKey:@"Cellular_Center_Frequency_KHz"];
        [v22 doubleValue];
        v24 = v23;

        v25 = [v18 objectForKey:@"Cellular_Bandwidth_KHz"];
        [v25 doubleValue];
        v27 = v26;

        [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: issueBand = %u, Coex_Tech=%u", [(WCM_CellularRc1CoexIssue *)v17 cellBand], [(WCM_CellularRc1CoexIssue *)v17 bandInfoType]];
        v28 = [v18 objectForKey:@"NB_Antenna_Bitmap"];
        -[WCM_CellularRc1CoexIssue setRc1AntBitmap:](v17, "setRc1AntBitmap:", [v28 intValue]);

        [(WCM_CellularRc1CoexIssue *)v17 setDownlinkLowFreq_Hz:0.0];
        [(WCM_CellularRc1CoexIssue *)v17 setDownlinkHighFreq_Hz:0.0];
        v29 = v27 * 0.5;
        [(WCM_CellularRc1CoexIssue *)v17 setUplinkLowFreq_Hz:(v24 - v29) * 1000.0];
        [(WCM_CellularRc1CoexIssue *)v17 setUplinkHighFreq_Hz:(v24 + v29) * 1000.0];
        [(WCM_CellularRc1CoexIssue *)v17 uplinkLowFreq_Hz];
        v31 = v30;
        [(WCM_CellularRc1CoexIssue *)v17 uplinkHighFreq_Hz];
        [WCM_Logging logLevel:3 message:@"Cellular-RC1 Coex Plist: uplinkLowFreq_Hz = %f, uplinkHighFreq_Hz=%f", v31, v32];
        v33 = [v18 objectForKey:@"NB_Priority_Bitmap"];
        -[WCM_CellularRc1CoexIssue setRc1PriorityBitmap:](v17, "setRc1PriorityBitmap:", [v33 intValue]);

        v34 = [v18 objectForKey:@"NB_Channel_Band"];
        [(WCM_CellularRc1CoexIssue *)v17 setRc1IssueChannel:sub_10005BA3C(v34)];
        v35 = [v18 objectForKey:@"NB_Channel_Start"];
        -[WCM_CellularRc1CoexIssue setNbChannelToAvoidStart:](v17, "setNbChannelToAvoidStart:", [v35 intValue]);

        v36 = [v18 objectForKey:@"NB_Channel_End"];
        -[WCM_CellularRc1CoexIssue setNbChannelToAvoidEnd:](v17, "setNbChannelToAvoidEnd:", [v36 intValue]);

        v37 = [v18 objectForKey:@"Cellular_Ant_Bitmap"];
        -[WCM_CellularRc1CoexIssue setCellAgressorAntBitmap:](v17, "setCellAgressorAntBitmap:", [v37 intValue]);

        v38 = [v18 objectForKey:@"Cellular_TX_Power_Cap"];
        [v38 doubleValue];
        LODWORD(v40) = vcvtd_n_s64_f64(v39, 4uLL);
        [(WCM_CellularRc1CoexIssue *)v17 setCellTxPowerCap_16th_dBm:v40];

        v41 = [v18 objectForKey:@"Mitigation_Type"];
        -[WCM_CellularRc1CoexIssue setMitigationType:](v17, "setMitigationType:", [v41 intValue]);

        [(NSMutableArray *)v5->mCellularRc1CoexIssueTable addObject:v17];
        v15 = v16;
      }

      while ([v14 count] > v16++);
    }

    v8 = v46;
    v10 = v45;
    v13 = v44;
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"init: Platform does not contain NB-MMS policy"];
  }

  return v5;
}

- (unsigned)getTableSize
{
  mCellularRc1CoexIssueTable = self->mCellularRc1CoexIssueTable;
  if (mCellularRc1CoexIssueTable)
  {
    LODWORD(mCellularRc1CoexIssueTable) = [(NSMutableArray *)mCellularRc1CoexIssueTable count];
  }

  return mCellularRc1CoexIssueTable;
}

- (id)findCellRc1CoexIssueByCellBandInfoType:(int)a3 CellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 RC1Channel:(int)a8
{
  mCellularRc1CoexIssueTable = self->mCellularRc1CoexIssueTable;
  if (mCellularRc1CoexIssueTable && [(NSMutableArray *)mCellularRc1CoexIssueTable count:a4])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->mCellularRc1CoexIssueTable;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if (([v18 bandInfoType] & a3) != 0)
          {
            [v18 uplinkLowFreq_Hz];
            if (v19 <= a6)
            {
              [v18 uplinkHighFreq_Hz];
              if (v20 > a6 && ([v18 Rc1IssueChannel] & a8) != 0)
              {
                v21 = v18;
                goto LABEL_17;
              }
            }
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_17:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)findAllCellRc1CoexIssueByCellBandInfoType:(int)a3 CellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 RC1Channel:(int)a8
{
  mCellularRc1CoexIssueTable = self->mCellularRc1CoexIssueTable;
  if (mCellularRc1CoexIssueTable && [(NSMutableArray *)mCellularRc1CoexIssueTable count:a4])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->mCellularRc1CoexIssueTable;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          if (([v19 bandInfoType] & a3) != 0)
          {
            [v19 uplinkLowFreq_Hz];
            if (v20 <= a6)
            {
              [v19 uplinkHighFreq_Hz];
              if (v21 > a6 && ([v19 Rc1IssueChannel] & a8) != 0)
              {
                if (!v16)
                {
                  v16 = objc_alloc_init(NSMutableArray);
                }

                [v16 addObject:v19];
              }
            }
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end