@interface WCM_SacManager
+ (__TelephonyBasebandControllerHandle_tag)basebandController;
- (BOOL)isEqualFreqList:(id)list List2:(id)list2;
- (WCM_SacManager)initWithPlatformId:(unint64_t)id;
- (id)getInsertObjIndex:(id)index fromOther:(id)other;
- (id)getRemoveObjIndex:(id)index fromOther:(id)other;
- (id)printPlistParam;
- (unsigned)sacCreateRawFreqList:(id)list bufferSize:(unsigned int)size buffer:(__AppleBasebandVictimFreq *)buffer;
- (unsigned)sacGetPlatformPlistIdx:(int64_t)idx;
- (void)dealloc;
- (void)freqAscendSort:(id)sort;
- (void)frequencyToolGetJasperResult:(id)result generalSacResult:(id)sacResult client:(int)client;
- (void)removeFreqFromArray:(id)array centerFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth;
- (void)sacMergeFreqInterval:(id)interval;
- (void)sacProcessCellularMeasFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacProcessCellularPrimaryFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacProcessCellularSecondaryFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacProcessGnssFreqInfo:(id)info;
- (void)sacProcessWiFiFreqInfo:(id)info;
- (void)sacRemoveAllGnssFreq;
- (void)sacRemoveAllWifiFreq;
- (void)sacScreenAllFreq:(id)freq;
- (void)sacScreenFreq:(id)freq freqRangeObj:(id)obj;
- (void)sacSetCellularSubActiveState:(BOOL)state onSubId:(unsigned int)id;
- (void)sacSortFreqByPriority:(id)priority;
- (void)sacUpdateCellularDownlinkFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularHoppingFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularNeighborFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularRPLMNFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularSearchFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateGnssFreqInfo:(id)info L5Freq:(id)freq;
- (void)sacUpdateWiFiFreqInfo:(unint64_t)info Bandwidth:(unint64_t)bandwidth;
@end

@implementation WCM_SacManager

- (void)sacRemoveAllGnssFreq
{
  [WCM_Logging logLevel:2 message:@"SAC Coex Manager removed all GNSS frequency from SAC and local cache"];
  [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:1 action:0];
  [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:2 action:0];
  mGnssL1FreqList = [(WCM_SacManager *)self mGnssL1FreqList];
  v4 = [mGnssL1FreqList count];

  if (v4)
  {
    mGnssL1FreqList2 = [(WCM_SacManager *)self mGnssL1FreqList];
    [mGnssL1FreqList2 removeAllObjects];
  }

  mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
  v7 = [mGnssL5FreqList count];

  if (v7)
  {
    mGnssL5FreqList2 = [(WCM_SacManager *)self mGnssL5FreqList];
    [mGnssL5FreqList2 removeAllObjects];
  }

  self->mGnssState = 0;
}

+ (__TelephonyBasebandControllerHandle_tag)basebandController
{
  result = qword_1002B7DB8;
  if (!qword_1002B7DB8)
  {
    result = TelephonyBasebandCreateController();
    qword_1002B7DB8 = result;
    if (!result)
    {
      [WCM_Logging logLevel:0 message:@"SAC Manager: Failed TelephonyBasebandCreateController()"];
      return qword_1002B7DB8;
    }
  }

  return result;
}

- (WCM_SacManager)initWithPlatformId:(unint64_t)id
{
  v100.receiver = self;
  v100.super_class = WCM_SacManager;
  v4 = [(WCM_SacManager *)&v100 init];
  v5 = dispatch_queue_create("com.apple.WirelessRadioManager.SacManager", 0);
  mQueue = v4->mQueue;
  v4->mQueue = v5;

  v4->mTestMode = 0;
  v4->mGnssState = 0;
  v4->mGnssL1StateChanged = 0;
  v4->mActiveSubId_bitmap = 0;
  v7 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCellularFreqSet:v7];

  v8 = objc_alloc_init(SacCellularFreqInfoSet);
  v9 = objc_alloc_init(SacCellularFreqInfoSet);
  mCellularFreqSet = [(WCM_SacManager *)v4 mCellularFreqSet];
  [mCellularFreqSet addObject:v8];

  mCellularFreqSet2 = [(WCM_SacManager *)v4 mCellularFreqSet];
  [mCellularFreqSet2 addObject:v9];

  v12 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMWifiFreqList:v12];

  v13 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMGnssL1FreqList:v13];

  v14 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMGnssL5FreqList:v14];

  v15 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheCellularReportedFullList:v15];

  v16 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheCellularReportedReducedList:v16];

  v17 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheWifiReportedFullList:v17];

  v18 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheWifiReportedReducedList:v18];

  v19 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheGnssReportedFullList:v19];

  v20 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheGnssReportedReducedList:v20];

  v21 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCellularFreqInclusionList:v21];

  v99 = 0;
  v22 = sub_10009D018(@"coex_sac", @"plist");
  v98 = 0;
  v23 = [NSPropertyListSerialization propertyListWithData:v22 options:2 format:&v99 error:&v98];
  if (v23)
  {
    [WCM_Logging logLevel:3 message:@"init SAC Configuration Plist File Found"];
    v24 = [(WCM_SacManager *)v4 sacGetPlatformPlistIdx:id];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Config count = %lu, platformID=%llu, SAC plist index=%d", [v23 count], id, v24);
    [WCM_Logging logLevel:3 message:@"SAC Configuration from plist: "];
    v25 = v24;
    v26 = [v23 objectAtIndex:v24];
    v27 = [v26 objectForKey:@"GNSS_L1"];
    v4->mReportGnssL1 = [v27 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: GNSS_L1 = %d", v4->mReportGnssL1];
    v28 = [v23 objectAtIndex:v25];
    v29 = [v28 objectForKey:@"GNSS_L5"];
    v4->mReportGnssL5 = [v29 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: GNSS_L5 = %d", v4->mReportGnssL5];
    v30 = [v23 objectAtIndex:v25];
    v31 = [v30 objectForKey:@"WiFi_2p4"];
    v4->mReportWiFi2G = [v31 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: WiFi_2p4 = %d", v4->mReportWiFi2G];
    v32 = [v23 objectAtIndex:v25];
    v33 = [v32 objectForKey:@"WiFi_5p0"];
    v4->mReportWiFi5G = [v33 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: WiFi_5p0 = %d", v4->mReportWiFi5G];
    v34 = [v23 objectAtIndex:v25];
    v35 = [v34 objectForKey:@"WiFi_enh"];
    v4->mReportWiFiEnh = [v35 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: WiFi_enh = %d", v4->mReportWiFiEnh];
    v36 = [v23 objectAtIndex:v25];
    v37 = [v36 objectForKey:@"Cell_Include_Measurement"];
    v4->mMeasurementFreqIncluded = [v37 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_Include_Measurement = %d", v4->mMeasurementFreqIncluded];
    v38 = [v23 objectAtIndex:v25];
    v39 = [v38 objectForKey:@"Cell_PCC_BW_L1ON"];
    v4->mPccBwL1On = 1000 * [v39 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_PCC_BW_L1ON = %llu (%lluMHz)", v4->mPccBwL1On, v4->mPccBwL1On / 0xF4240];
    v40 = [v23 objectAtIndex:v25];
    v41 = [v40 objectForKey:@"Cell_SCC_BW_L1ON"];
    v4->mSccBwL1On = 1000 * [v41 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_BW_L1ON = %llu (%lluMHz)", v4->mSccBwL1On, v4->mSccBwL1On / 0xF4240];
    v42 = [v23 objectAtIndex:v25];
    v43 = [v42 objectForKey:@"Cell_SCC_Channels_L1ON"];
    v4->mAllowedSccNumL1On = [v43 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_Channels_L1ON = %d", v4->mAllowedSccNumL1On];
    v44 = [v23 objectAtIndex:v25];
    v45 = [v44 objectForKey:@"Cell_PCC_BW_L1OFF"];
    v4->mPccBwL1Off = 1000 * [v45 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_PCC_BW_L1OFF = %llu (%lluMHz)", v4->mPccBwL1Off, v4->mPccBwL1Off / 0xF4240];
    v46 = [v23 objectAtIndex:v25];
    v47 = [v46 objectForKey:@"Cell_SCC_BW_L1OFF"];
    v4->mSccBwL1Off = 1000 * [v47 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_BW_L1OFF = %llu (%lluMHz)", v4->mSccBwL1Off, v4->mSccBwL1Off / 0xF4240];
    v48 = [v23 objectAtIndex:v25];
    v49 = [v48 objectForKey:@"Cell_SCC_Channels_L1OFF"];
    v4->mAllowedSccNumL1Off = [v49 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_Channels_L1OFF = %d", v4->mAllowedSccNumL1Off];
    v50 = [v23 objectAtIndex:v25];
    v51 = [v50 objectForKey:@"Cell_Aggregate_BW"];
    v4->mMaxCellAggregateBw = 1000 * [v51 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_Aggregate_BW = %llu (%lluMHz)", v4->mMaxCellAggregateBw, v4->mMaxCellAggregateBw / 0xF4240];
    v52 = [v23 objectAtIndex:v25];
    v53 = [v52 objectForKey:@"Cell_priority_1_Fmin"];
    v102[0] = 1000 * [v53 unsignedIntValue];

    v54 = [v23 objectAtIndex:v25];
    v55 = [v54 objectForKey:@"Cell_priority_1_Fmax"];
    v101[0] = 1000 * [v55 unsignedIntValue];

    v56 = [v23 objectAtIndex:v25];
    v57 = [v56 objectForKey:@"Cell_priority_2_Fmin"];
    v102[1] = 1000 * [v57 unsignedIntValue];

    v58 = [v23 objectAtIndex:v25];
    v59 = [v58 objectForKey:@"Cell_priority_2_Fmax"];
    v101[1] = 1000 * [v59 unsignedIntValue];

    v60 = [v23 objectAtIndex:v25];
    v61 = [v60 objectForKey:@"Cell_priority_3_Fmin"];
    v102[2] = 1000 * [v61 unsignedIntValue];

    v62 = [v23 objectAtIndex:v25];
    v63 = [v62 objectForKey:@"Cell_priority_3_Fmax"];
    v101[2] = 1000 * [v63 unsignedIntValue];

    v64 = [v23 objectAtIndex:v25];
    v65 = [v64 objectForKey:@"Cell_priority_4_Fmin"];
    v102[3] = 1000 * [v65 unsignedIntValue];

    v66 = [v23 objectAtIndex:v25];
    v67 = [v66 objectForKey:@"Cell_priority_4_Fmax"];
    v101[3] = 1000 * [v67 unsignedIntValue];

    v68 = [v23 objectAtIndex:v25];
    v69 = [v68 objectForKey:@"Cell_priority_5_Fmin"];
    v102[4] = 1000 * [v69 unsignedIntValue];

    v70 = [v23 objectAtIndex:v25];
    v71 = [v70 objectForKey:@"Cell_priority_5_Fmax"];
    v101[4] = 1000 * [v71 unsignedIntValue];

    v72 = [v23 objectAtIndex:v25];
    v73 = [v72 objectForKey:@"Cell_priority_6_Fmin"];
    v102[5] = 1000 * [v73 unsignedIntValue];

    v74 = [v23 objectAtIndex:v25];
    v75 = [v74 objectForKey:@"Cell_priority_6_Fmax"];
    v101[5] = 1000 * [v75 unsignedIntValue];

    v76 = [v23 objectAtIndex:v25];
    v77 = [v76 objectForKey:@"Cell_priority_7_Fmin"];
    v102[6] = 1000 * [v77 unsignedIntValue];

    v78 = [v23 objectAtIndex:v25];
    v79 = [v78 objectForKey:@"Cell_priority_7_Fmax"];
    v101[6] = 1000 * [v79 unsignedIntValue];

    v80 = [v23 objectAtIndex:v25];
    v81 = [v80 objectForKey:@"Cell_priority_8_Fmin"];
    v102[7] = 1000 * [v81 unsignedIntValue];

    v82 = [v23 objectAtIndex:v25];
    v83 = [v82 objectForKey:@"Cell_priority_8_Fmax"];
    v101[7] = 1000 * [v83 unsignedIntValue];

    v84 = [v23 objectAtIndex:v25];
    v85 = [v84 objectForKey:@"Cell_priority_9_Fmin"];
    v102[8] = 1000 * [v85 unsignedIntValue];

    v86 = [v23 objectAtIndex:v25];
    v87 = [v86 objectForKey:@"Cell_priority_9_Fmax"];
    v101[8] = 1000 * [v87 unsignedIntValue];

    v88 = [v23 objectAtIndex:v25];
    v89 = [v88 objectForKey:@"Cell_priority_10_Fmin"];
    v102[9] = 1000 * [v89 unsignedIntValue];

    v90 = [v23 objectAtIndex:v25];
    v91 = [v90 objectForKey:@"Cell_priority_10_Fmax"];
    v101[9] = 1000 * [v91 unsignedIntValue];

    for (i = 0; i != 10; ++i)
    {
      v93 = v102[i];
      [WCM_Logging logLevel:3 message:@"SAC Configuration: freq_min[%d] = %llu (%lluMHz)", i, v93, v93 / 0xF4240];
      v94 = v101[i];
      [WCM_Logging logLevel:3 message:@"SAC Configuration: freq_max[%d] = %llu (%lluMHz)", i, v94, v94 / 0xF4240];
      v95 = [[FreqRangeInfo alloc] initWithStartFreq:v93 EndFreq:v94];
      [(FreqRangeInfo *)v95 setPriority:i];
      mCellularFreqInclusionList = [(WCM_SacManager *)v4 mCellularFreqInclusionList];
      [mCellularFreqInclusionList addObject:v95];
    }

    v4->mGnssState = 0;
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"init: No SAC Configuration Plist File Found"];
  }

  return v4;
}

- (id)printPlistParam
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"SAC Configuration: GNSS_L1 = %d\n", self->mReportGnssL1];
  [v3 appendFormat:@"SAC Configuration: GNSS_L5 = %d\n", self->mReportGnssL5];
  [v3 appendFormat:@"SAC Configuration: WiFi_2p4 = %d\n", self->mReportWiFi2G];
  [v3 appendFormat:@"SAC Configuration: WiFi_5p0 = %d\n", self->mReportWiFi5G];
  [v3 appendFormat:@"SAC Configuration: WiFi_enh = %d\n", self->mReportWiFiEnh];
  for (i = 0; i != 10; ++i)
  {
    mCellularFreqInclusionList = [(WCM_SacManager *)self mCellularFreqInclusionList];
    v6 = [mCellularFreqInclusionList objectAtIndex:i];

    [v3 appendFormat:@"SAC Configuration: freq_min[%d] = %llu (%lluMHz)\n", i, objc_msgSend(v6, "FreqStart"), objc_msgSend(v6, "FreqStart") / 0xF4240];
    [v3 appendFormat:@"SAC Configuration: freq_max[%d] = %llu (%lluMHz)\n", i, objc_msgSend(v6, "FreqEnd"), objc_msgSend(v6, "FreqEnd") / 0xF4240];
  }

  [v3 appendFormat:@"SAC Configuration: Cell_Aggregate_BW = %llu (%lluMHz)\n", self->mMaxCellAggregateBw, self->mMaxCellAggregateBw / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_Include_Measurement = %d\n", self->mMeasurementFreqIncluded];
  [v3 appendFormat:@"SAC Configuration: Cell_PCC_BW_L1ON = %llu (%lluMHz)\n", self->mPccBwL1On, self->mPccBwL1On / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_BW_L1ON = %llu (%lluMHz)\n", self->mSccBwL1On, self->mSccBwL1On / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_Channels_L1ON = %d\n", self->mAllowedSccNumL1On];
  [v3 appendFormat:@"SAC Configuration: Cell_PCC_BW_L1OFF = %llu (%lluMHz)\n", self->mPccBwL1Off, self->mPccBwL1Off / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_BW_L1OFF = %llu (%lluMHz)\n", self->mSccBwL1Off, self->mSccBwL1Off / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_Channels_L1OFF = %d\n", self->mAllowedSccNumL1Off];

  return v3;
}

- (unsigned)sacGetPlatformPlistIdx:(int64_t)idx
{
  if (idx <= 0x3B)
  {
    if (((1 << idx) & 0xF30000000000000) != 0)
    {
      return 5;
    }

    if (idx == 21)
    {
      return 1;
    }

    if (idx == 22)
    {
      return 2;
    }
  }

  if ((idx - 154) <= 0x18)
  {
    if (((1 << (idx + 102)) & 0x1540000) != 0)
    {
      return 5;
    }

    if (idx == 154)
    {
      return 3;
    }

    if (idx == 157)
    {
      return 4;
    }
  }

  return 0;
}

- (void)sacSetCellularSubActiveState:(BOOL)state onSubId:(unsigned int)id
{
  if (id <= 1)
  {
    v4 = 1 << id;
    if (!state)
    {
      v4 = self->mActiveSubId_bitmap & ~v4;
    }

    self->mActiveSubId_bitmap = v4;
  }
}

- (BOOL)isEqualFreqList:(id)list List2:(id)list2
{
  listCopy = list;
  list2Copy = list2;
  v8 = list2Copy;
  if (listCopy | list2Copy)
  {
    v9 = 0;
    if (listCopy && list2Copy)
    {
      v11 = [listCopy count];
      if (v11 == [v8 count])
      {
        v12 = [[NSMutableArray alloc] initWithArray:listCopy];
        v13 = [[NSMutableArray alloc] initWithArray:v8];
        [(WCM_SacManager *)self freqAscendSort:v12];
        [(WCM_SacManager *)self freqAscendSort:v13];
        if ([v12 count])
        {
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = [v12 objectAtIndex:v14];
            v17 = [v13 objectAtIndex:v14];
            v9 = [v16 isEqual:v17];

            if ((v9 & 1) == 0)
            {
              break;
            }

            v14 = v15;
          }

          while ([v12 count] > v15++);
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)freqAscendSort:(id)sort
{
  sortCopy = sort;
  if (sortCopy)
  {
    v4 = sortCopy;
    if ([sortCopy count])
    {
      [v4 sortUsingComparator:&stru_10023ECC8];
    }
  }

  _objc_release_x1();
}

- (void)sacSortFreqByPriority:(id)priority
{
  priorityCopy = priority;
  if (priorityCopy)
  {
    v4 = priorityCopy;
    if ([priorityCopy count])
    {
      [v4 sortUsingComparator:&stru_10023ECE8];
    }
  }

  _objc_release_x1();
}

- (id)getRemoveObjIndex:(id)index fromOther:(id)other
{
  indexCopy = index;
  otherCopy = other;
  v7 = objc_alloc_init(NSMutableIndexSet);
  if (indexCopy && otherCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [indexCopy differenceFromArray:otherCopy withOptions:1 usingEquivalenceTest:&stru_10023ED28];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    removals = [v9 removals];
    v11 = [removals countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(removals);
          }

          [v7 addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "index")}];
        }

        v12 = [removals countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (id)getInsertObjIndex:(id)index fromOther:(id)other
{
  indexCopy = index;
  otherCopy = other;
  v7 = objc_alloc_init(NSMutableIndexSet);
  if (indexCopy && otherCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [indexCopy differenceFromArray:otherCopy withOptions:2 usingEquivalenceTest:&stru_10023ED48];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    insertions = [v9 insertions];
    v11 = [insertions countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(insertions);
          }

          [v7 addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "index")}];
        }

        v12 = [insertions countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (void)sacMergeFreqInterval:(id)interval
{
  intervalCopy = interval;
  if (intervalCopy)
  {
    v14 = intervalCopy;
    if ([intervalCopy count])
    {
      [(WCM_SacManager *)self freqAscendSort:v14];
      v5 = objc_alloc_init(NSMutableArray);
      if ([v14 count])
      {
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = [v14 objectAtIndex:v6];
          if ([v5 count])
          {
            lastObject = [v5 lastObject];
            freqStart = [v8 FreqStart];
            if (freqStart >= [lastObject FreqEnd])
            {
              [v5 addObject:v8];
            }

            else
            {
              freqStart2 = [v8 FreqStart];
              if (freqStart2 < [lastObject FreqEnd])
              {
                freqEnd = [v8 FreqEnd];
                if (freqEnd > [lastObject FreqEnd])
                {
                  [lastObject setEndFreqOnly:{objc_msgSend(v8, "FreqEnd")}];
                }
              }
            }
          }

          else
          {
            [v5 addObject:v8];
          }

          v6 = v7;
        }

        while ([v14 count] > v7++);
      }

      [v14 removeAllObjects];
      [v14 addObjectsFromArray:v5];
    }
  }

  _objc_release_x1();
}

- (void)sacScreenFreq:(id)freq freqRangeObj:(id)obj
{
  freqCopy = freq;
  objCopy = obj;
  if (freqCopy)
  {
    if (objCopy)
    {
      mCellularFreqInclusionList = [(WCM_SacManager *)self mCellularFreqInclusionList];
      v8 = [mCellularFreqInclusionList count];

      if (v8)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          mCellularFreqInclusionList2 = [(WCM_SacManager *)self mCellularFreqInclusionList];
          v12 = [mCellularFreqInclusionList2 objectAtIndex:v9];

          freqEnd = [objCopy FreqEnd];
          if (freqEnd > [v12 FreqStart])
          {
            freqStart = [objCopy FreqStart];
            if (freqStart < [v12 FreqEnd])
            {
              freqStart2 = [objCopy FreqStart];
              if (freqStart2 <= [v12 FreqStart])
              {
                freqEnd2 = [objCopy FreqEnd];
                freqEnd3 = [v12 FreqEnd];
                v18 = v12;
                v19 = v12;
                if (freqEnd2 >= freqEnd3)
                {
                  goto LABEL_22;
                }
              }

              freqStart3 = [objCopy FreqStart];
              if (freqStart3 >= [v12 FreqStart])
              {
                freqEnd4 = [objCopy FreqEnd];
                freqEnd5 = [v12 FreqEnd];
                v18 = objCopy;
                v19 = objCopy;
                if (freqEnd4 <= freqEnd5)
                {
                  goto LABEL_22;
                }
              }

              freqStart4 = [objCopy FreqStart];
              freqStart5 = [v12 FreqStart];
              v18 = objCopy;
              v19 = v12;
              if (freqStart4 >= freqStart5 || (v25 = [objCopy FreqEnd], v26 = objc_msgSend(v12, "FreqEnd"), v18 = v12, v19 = objCopy, v25 <= v26))
              {
LABEL_22:
                freqStart6 = [v18 FreqStart];
                freqEnd6 = [v19 FreqEnd];
                if (freqStart6)
                {
                  if (freqEnd6)
                  {
                    v29 = [[FreqRangeInfo alloc] initWithStartFreq:freqStart6 EndFreq:freqEnd6];
                    [(FreqRangeInfo *)v29 setPriority:v10 - 1];
                    [freqCopy addObject:v29];
                  }
                }
              }
            }
          }

          v9 = v10;
        }

        while (v8 > v10++);
      }
    }
  }
}

- (void)sacScreenAllFreq:(id)freq
{
  freqCopy = freq;
  if (freqCopy)
  {
    v10 = freqCopy;
    if ([freqCopy count])
    {
      v5 = objc_alloc_init(NSMutableArray);
      if ([v10 count])
      {
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = [v10 objectAtIndex:v6];
          [(WCM_SacManager *)self sacScreenFreq:v5 freqRangeObj:v8];

          v6 = v7;
        }

        while ([v10 count] > v7++);
      }

      [v10 removeAllObjects];
      [v10 setArray:v5];
      [(WCM_SacManager *)self sacSortFreqByPriority:v10];
    }
  }

  _objc_release_x1();
}

- (void)sacUpdateCellularDownlinkFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (!infoCopy || id > 1)
  {
    goto LABEL_15;
  }

  v20 = infoCopy;
  mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
  idCopy = id;
  v9 = [mCellularFreqSet objectAtIndex:id];
  mCellularPccFreq = [v9 mCellularPccFreq];

  mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
  v12 = [mCellularFreqSet2 objectAtIndex:idCopy];
  mCellularSccFreqList = [v12 mCellularSccFreqList];

  if (!mCellularPccFreq)
  {
    mCellularPccFreq = objc_alloc_init(NSMutableArray);
    if (mCellularSccFreqList)
    {
      goto LABEL_5;
    }

LABEL_7:
    mCellularSccFreqList = objc_alloc_init(NSMutableArray);
    goto LABEL_8;
  }

  [mCellularPccFreq removeAllObjects];
  if (!mCellularSccFreqList)
  {
    goto LABEL_7;
  }

LABEL_5:
  [mCellularSccFreqList removeAllObjects];
LABEL_8:
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular downlink frequency, count=%lu", [v20 count]);
  if ([v20 count])
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = objc_alloc_init(FreqRangeInfo);
      v17 = [v20 objectAtIndex:v14];
      [(FreqRangeInfo *)v16 setFreqWithObj:v17];

      logPrint = [(FreqRangeInfo *)v16 logPrint];
      [WCM_Logging logLevel:3 message:@"    SAC cellular dl_freq[%d] = %@", v15, logPrint];

      if (v15)
      {
        v19 = mCellularSccFreqList;
      }

      else
      {
        v19 = mCellularPccFreq;
      }

      [v19 addObject:v16];

      v14 = (v15 + 1);
      v15 = v14;
    }

    while ([v20 count] > v14);
  }

  infoCopy = v20;
LABEL_15:
}

- (void)sacUpdateCellularHoppingFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v23 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularHoppingFreq = [v8 mCellularHoppingFreq];

    if (mCellularHoppingFreq)
    {
      [mCellularHoppingFreq removeAllObjects];
    }

    else
    {
      mCellularHoppingFreq = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular hopping frequency, count=%lu", [v23 count]);
    if ([v23 count])
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = -1;
      v14 = v23;
      do
      {
        v15 = [v14 objectAtIndex:v10];
        logPrint = [v15 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular hopping_freq[%d] = %@", v11, logPrint];

        centerFreq = [v15 centerFreq];
        if (v13 > &centerFreq[-([v15 bw] >> 1)])
        {
          centerFreq2 = [v15 centerFreq];
          v13 = centerFreq2 - ([v15 bw] >> 1);
        }

        centerFreq3 = [v15 centerFreq];
        if (v12 < &centerFreq3[[v15 bw] >> 1])
        {
          centerFreq4 = [v15 centerFreq];
          v12 = &centerFreq4[[v15 bw] >> 1];
        }

        v10 = (v11 + 1);
        v11 = v10;
        v21 = [v23 count] > v10;
        v14 = v23;
      }

      while (v21);
      if (v12 > v13)
      {
        v22 = [[FreqRangeInfo alloc] initWithStartFreq:v13 EndFreq:v12];
        [mCellularHoppingFreq addObject:v22];
      }
    }

    infoCopy = v23;
  }
}

- (void)sacUpdateCellularNeighborFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v15 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularNeighborFreqList = [v8 mCellularNeighborFreqList];

    if (mCellularNeighborFreqList)
    {
      [mCellularNeighborFreqList removeAllObjects];
    }

    else
    {
      mCellularNeighborFreqList = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular neighbor frequency, count=%lu", [v15 count]);
    if ([v15 count])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = objc_alloc_init(FreqRangeInfo);
        v13 = [v15 objectAtIndex:v10];
        [(FreqRangeInfo *)v12 setFreqWithObj:v13];

        logPrint = [(FreqRangeInfo *)v12 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular neighbor_freq[%d] = %@", v11, logPrint];

        [mCellularNeighborFreqList addObject:v12];
        v10 = (v11 + 1);
        v11 = v10;
      }

      while ([v15 count] > v10);
    }

    infoCopy = v15;
  }
}

- (void)sacUpdateCellularSearchFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v15 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularSearchFreqList = [v8 mCellularSearchFreqList];

    if (mCellularSearchFreqList)
    {
      [mCellularSearchFreqList removeAllObjects];
    }

    else
    {
      mCellularSearchFreqList = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular search frequency, count=%lu", [v15 count]);
    if ([v15 count])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = objc_alloc_init(FreqRangeInfo);
        v13 = [v15 objectAtIndex:v10];
        [(FreqRangeInfo *)v12 setFreqWithObj:v13];

        logPrint = [(FreqRangeInfo *)v12 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular search_freq[%d] = %@", v11, logPrint];

        [mCellularSearchFreqList addObject:v12];
        v10 = (v11 + 1);
        v11 = v10;
      }

      while ([v15 count] > v10);
    }

    infoCopy = v15;
  }
}

- (void)sacUpdateCellularRPLMNFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v15 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularRPLMNFreqList = [v8 mCellularRPLMNFreqList];

    if (mCellularRPLMNFreqList)
    {
      [mCellularRPLMNFreqList removeAllObjects];
    }

    else
    {
      mCellularRPLMNFreqList = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular RPLMN frequency, count=%lu", [v15 count]);
    if ([v15 count])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = objc_alloc_init(FreqRangeInfo);
        v13 = [v15 objectAtIndex:v10];
        [(FreqRangeInfo *)v12 setFreqWithObj:v13];

        logPrint = [(FreqRangeInfo *)v12 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular rplmn_freq[%d] = %@", v11, logPrint];

        [mCellularRPLMNFreqList addObject:v12];
        v10 = (v11 + 1);
        v11 = v10;
      }

      while ([v15 count] > v10);
    }

    infoCopy = v15;
  }
}

- (void)sacProcessCellularPrimaryFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v22 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    idCopy = id;
    v9 = [mCellularFreqSet objectAtIndex:id];
    mCellularPccFreq = [v9 mCellularPccFreq];

    mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
    v12 = [mCellularFreqSet2 objectAtIndex:idCopy];
    mCellularHoppingFreq = [v12 mCellularHoppingFreq];

    v14 = [[FreqRangeInfo alloc] initWithStartFreq:0 EndFreq:0];
    v15 = 48;
    if (!self->mGnssState)
    {
      v15 = 72;
    }

    v16 = *(&self->super.isa + v15);
    if (mCellularHoppingFreq && (v17 = [mCellularHoppingFreq count], v18 = mCellularHoppingFreq, v17) || mCellularPccFreq && (v19 = objc_msgSend(mCellularPccFreq, "count"), v18 = mCellularPccFreq, v19))
    {
      v20 = [v18 objectAtIndex:0];
      [(FreqRangeInfo *)v14 setFreqWithObj:v20];
    }

    if ([(FreqRangeInfo *)v14 FreqStart])
    {
      v21 = objc_alloc_init(NSMutableArray);
      [(FreqRangeInfo *)v14 applyBwLimitFromRight:v16];
      [v21 addObject:v14];
      [(WCM_SacManager *)self sacScreenAllFreq:v21];
      [v22 addObjectsFromArray:v21];
    }

    infoCopy = v22;
  }
}

- (void)sacProcessCellularSecondaryFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v31 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularSccFreqList = [v8 mCellularSccFreqList];

    v10 = 56;
    if (!self->mGnssState)
    {
      v10 = 80;
    }

    v11 = 64;
    if (!self->mGnssState)
    {
      v11 = 88;
    }

    v12 = *(&self->super.isa + v11);
    v13 = *(&self->super.isa + v10);
    if ([v31 count])
    {
      v14 = 0;
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = [v31 objectAtIndex:v14];
        v15 += [v17 bw];

        v14 = v16;
        v18 = [v31 count] > v16++;
      }

      while (v18);
    }

    else
    {
      v15 = 0;
    }

    if (v15 < self->mMaxCellAggregateBw)
    {
      v19 = objc_alloc_init(NSMutableArray);
      if ([mCellularSccFreqList count])
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = objc_alloc_init(FreqRangeInfo);
          v23 = [mCellularSccFreqList objectAtIndex:v20];
          [(FreqRangeInfo *)v22 setFreqWithObj:v23];

          [(FreqRangeInfo *)v22 applyBwLimitFromRight:v13];
          [v19 addObject:v22];

          v20 = v21;
          v18 = [mCellularSccFreqList count] > v21++;
        }

        while (v18);
      }

      [(WCM_SacManager *)self sacScreenAllFreq:v19];
      if ([v19 count])
      {
        v24 = 0;
        while (1)
        {
          v25 = [v19 objectAtIndex:v24];
          v26 = [v25 bw];
          mMaxCellAggregateBw = self->mMaxCellAggregateBw;
          v28 = mMaxCellAggregateBw - v15;
          if (mMaxCellAggregateBw == v15 || v24 >= v12)
          {
            break;
          }

          v30 = v26;
          if (v26 > v28)
          {
            [v25 applyBwLimitFromRight:mMaxCellAggregateBw - v15];
            v30 = v28;
          }

          [v31 addObject:v25];
          v15 += v30;

          if ([v19 count] <= ++v24)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_27:
    }

    infoCopy = v31;
  }
}

- (void)sacProcessCellularMeasFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v41 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    idCopy = id;
    v9 = [mCellularFreqSet objectAtIndex:id];
    mCellularNeighborFreqList = [v9 mCellularNeighborFreqList];

    mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
    v12 = [mCellularFreqSet2 objectAtIndex:idCopy];
    mCellularSearchFreqList = [v12 mCellularSearchFreqList];

    mCellularFreqSet3 = [(WCM_SacManager *)self mCellularFreqSet];
    v15 = [mCellularFreqSet3 objectAtIndex:idCopy];
    mCellularRPLMNFreqList = [v15 mCellularRPLMNFreqList];

    if (self->mMeasurementFreqIncluded)
    {
      if ([v41 count])
      {
        v17 = 0;
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = [v41 objectAtIndex:v17];
          v18 += [v20 bw];

          v17 = v19;
          v21 = [v41 count] > v19++;
        }

        while (v21);
      }

      else
      {
        v18 = 0;
      }

      if (v18 < self->mMaxCellAggregateBw)
      {
        v22 = objc_alloc_init(NSMutableArray);
        if ([mCellularNeighborFreqList count])
        {
          v23 = 0;
          v24 = 1;
          do
          {
            v25 = [mCellularNeighborFreqList objectAtIndex:v23];
            v26 = objc_alloc_init(FreqRangeInfo);
            [(FreqRangeInfo *)v26 setFreqWithObj:v25];
            [(FreqRangeInfo *)v26 applyBwLimitFromCenter:5000000];
            [v22 addObject:v26];

            v23 = v24;
            v21 = [mCellularNeighborFreqList count] > v24++;
          }

          while (v21);
        }

        if ([mCellularSearchFreqList count])
        {
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = [mCellularSearchFreqList objectAtIndex:v27];
            v30 = objc_alloc_init(FreqRangeInfo);
            [(FreqRangeInfo *)v30 setFreqWithObj:v29];
            [(FreqRangeInfo *)v30 applyBwLimitFromCenter:5000000];
            [v22 addObject:v30];

            v27 = v28;
            v21 = [mCellularSearchFreqList count] > v28++;
          }

          while (v21);
        }

        if ([mCellularRPLMNFreqList count])
        {
          v31 = 0;
          v32 = 1;
          do
          {
            v33 = [mCellularRPLMNFreqList objectAtIndex:v31];
            v34 = objc_alloc_init(FreqRangeInfo);
            [(FreqRangeInfo *)v34 setFreqWithObj:v33];
            [(FreqRangeInfo *)v34 applyBwLimitFromCenter:5000000];
            [v22 addObject:v34];

            v31 = v32;
            v21 = [mCellularRPLMNFreqList count] > v32++;
          }

          while (v21);
        }

        [(WCM_SacManager *)self sacScreenAllFreq:v22];
        if ([v22 count])
        {
          v35 = 0;
          v36 = 1;
          while (1)
          {
            v37 = [v22 objectAtIndex:v35];
            v38 = [v37 bw];
            mMaxCellAggregateBw = self->mMaxCellAggregateBw;
            v40 = mMaxCellAggregateBw - v18;
            if (mMaxCellAggregateBw == v18)
            {
              break;
            }

            if (v38 > v40)
            {
              [v37 applyBwLimitFromCenter:mMaxCellAggregateBw - v18];
              v38 = v40;
            }

            v18 += v38;
            [v41 addObject:v37];

            v35 = v36;
            v21 = [v22 count] > v36++;
            if (!v21)
            {
              goto LABEL_27;
            }
          }
        }

LABEL_27:
      }
    }

    infoCopy = v41;
  }
}

- (void)sacUpdateWiFiFreqInfo:(unint64_t)info Bandwidth:(unint64_t)bandwidth
{
  mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
  if (mWifiFreqList)
  {
    v8 = mWifiFreqList;
    mWifiFreqList2 = [(WCM_SacManager *)self mWifiFreqList];
    v10 = [mWifiFreqList2 count];

    if (v10)
    {
      mWifiFreqList3 = [(WCM_SacManager *)self mWifiFreqList];
      [mWifiFreqList3 removeAllObjects];
    }
  }

  v14 = [[FreqRangeInfo alloc] initWithFreq:info Bw:bandwidth];
  logPrint = [(FreqRangeInfo *)v14 logPrint];
  [WCM_Logging logLevel:3 message:@"SAC Update WiFi Freq:%@", logPrint];

  if (info && bandwidth)
  {
    mWifiFreqList4 = [(WCM_SacManager *)self mWifiFreqList];
    [mWifiFreqList4 addObject:v14];
  }
}

- (void)sacProcessWiFiFreqInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v8 = infoCopy;
    mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
    v6 = [mWifiFreqList objectAtIndex:0];

    if ([v6 centerFreq] <= 0x94B6ADC0 && self->mReportWiFi2G || objc_msgSend(v6, "centerFreq") >= 0x12BCFB580 && objc_msgSend(v6, "centerFreq") < 0x162F216C0 && self->mReportWiFi5G || objc_msgSend(v6, "centerFreq") > 0x162F216BFLL && self->mReportWiFiEnh)
    {
      v7 = objc_alloc_init(FreqRangeInfo);
      [(FreqRangeInfo *)v7 setFreqWithObj:v6];
      [(FreqRangeInfo *)v7 applyBwLimitFromCenter:20000000];
      [v8 addObject:v7];
    }

    infoCopy = v8;
  }
}

- (void)sacUpdateGnssFreqInfo:(id)info L5Freq:(id)freq
{
  infoCopy = info;
  freqCopy = freq;
  if (infoCopy)
  {
    v7 = [infoCopy count] != 0;
    if (freqCopy)
    {
LABEL_3:
      v8 = [freqCopy count] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (freqCopy)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  mGnssL1FreqList = [(WCM_SacManager *)self mGnssL1FreqList];
  [mGnssL1FreqList removeAllObjects];

  mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
  [mGnssL5FreqList removeAllObjects];

  if (!v7)
  {
    v15 = 0;
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if ([infoCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [infoCopy objectAtIndex:v11];
      logPrint = [v12 logPrint];
      [WCM_Logging logLevel:3 message:@"SAC receive update of GNSS L1 Freq[%d]:%@", v11, logPrint];

      ++v11;
    }

    while ([infoCopy count] > v11);
  }

  mGnssL1FreqList2 = [(WCM_SacManager *)self mGnssL1FreqList];
  [mGnssL1FreqList2 addObjectsFromArray:infoCopy];

  v15 = 1;
  if (v8)
  {
LABEL_13:
    if ([freqCopy count])
    {
      v16 = 0;
      do
      {
        v17 = [freqCopy objectAtIndex:v16];
        logPrint2 = [v17 logPrint];
        [WCM_Logging logLevel:3 message:@"SAC receive update of GNSS L5 Freq[%d]:%@", v16, logPrint2];

        ++v16;
      }

      while ([freqCopy count] > v16);
    }

    v15 |= 2u;
    mGnssL5FreqList2 = [(WCM_SacManager *)self mGnssL5FreqList];
    [mGnssL5FreqList2 addObjectsFromArray:freqCopy];
  }

LABEL_17:
  self->mGnssL1StateChanged = (self->mGnssState ^ v15) & 1;
  self->mGnssState = v15;
}

- (void)sacProcessGnssFreqInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    if (self->mGnssState)
    {
      if (!self->mReportGnssL1 || (v7 = infoCopy, -[WCM_SacManager mGnssL1FreqList](self, "mGnssL1FreqList"), v5 = objc_claimAutoreleasedReturnValue(), [v7 addObjectsFromArray:v5], v5, infoCopy = v7, (self->mGnssState & 1) != 0))
      {
        if (self->mReportGnssL5)
        {
          v8 = infoCopy;
          mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
          [v8 addObjectsFromArray:mGnssL5FreqList];

          infoCopy = v8;
        }
      }
    }
  }
}

- (unsigned)sacCreateRawFreqList:(id)list bufferSize:(unsigned int)size buffer:(__AppleBasebandVictimFreq *)buffer
{
  listCopy = list;
  v8 = listCopy;
  LODWORD(sizeCopy) = 0;
  if (listCopy && buffer)
  {
    v10 = [listCopy count];
    if (v10 >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = v10;
    }

    if (sizeCopy)
    {
      v11 = 0;
      p_var2 = &buffer->var2;
      do
      {
        v13 = [v8 objectAtIndex:v11];
        *(p_var2 - 3) = [v13 centerFreq];
        *(p_var2 - 1) = ([v13 bw] >> 1);

        ++v11;
        p_var2 += 4;
      }

      while (sizeCopy != v11);
    }
  }

  return sizeCopy;
}

- (void)sacRemoveAllWifiFreq
{
  [WCM_Logging logLevel:2 message:@"SAC Coex Manager removed all Wifi frequency from SAC and local cache"];
  [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:1 action:0];
  [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:2 action:0];
  mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
  [mWifiFreqList removeAllObjects];
}

- (void)removeFreqFromArray:(id)array centerFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v13 = arrayCopy;
    v7 = [arrayCopy count];
    v8 = v13;
    if (v7)
    {
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = [v8 objectAtIndex:v9];
        if ([v11 centerFreq] == freq)
        {
          break;
        }

        v9 = v10;
        v12 = [v13 count] > v10++;
        v8 = v13;
        if (!v12)
        {
          goto LABEL_8;
        }
      }

      [v13 removeObjectAtIndex:v9];
    }
  }

LABEL_8:

  _objc_release_x1();
}

- (void)frequencyToolGetJasperResult:(id)result generalSacResult:(id)sacResult client:(int)client
{
  resultCopy = result;
  sacResultCopy = sacResult;
  if (resultCopy && sacResultCopy)
  {
    [resultCopy removeAllObjects];
    [sacResultCopy removeAllObjects];
    if (client)
    {
      if (client == 2)
      {
        mCacheGnssReportedReducedList = [(WCM_SacManager *)self mCacheGnssReportedReducedList];
        v12 = resultCopy;
      }

      else
      {
        if (client == 1)
        {
          mCacheWifiReportedReducedList = [(WCM_SacManager *)self mCacheWifiReportedReducedList];
          [resultCopy addObjectsFromArray:mCacheWifiReportedReducedList];

          mCacheWifiReportedFullList = [(WCM_SacManager *)self mCacheWifiReportedFullList];
LABEL_11:
          v18 = mCacheWifiReportedFullList;
          [sacResultCopy addObjectsFromArray:mCacheWifiReportedFullList];

          goto LABEL_12;
        }

        mCacheCellularReportedReducedList = [(WCM_SacManager *)self mCacheCellularReportedReducedList];
        [resultCopy addObjectsFromArray:mCacheCellularReportedReducedList];

        mCacheWifiReportedReducedList2 = [(WCM_SacManager *)self mCacheWifiReportedReducedList];
        [resultCopy addObjectsFromArray:mCacheWifiReportedReducedList2];

        mCacheGnssReportedReducedList2 = [(WCM_SacManager *)self mCacheGnssReportedReducedList];
        [resultCopy addObjectsFromArray:mCacheGnssReportedReducedList2];

        mCacheCellularReportedFullList = [(WCM_SacManager *)self mCacheCellularReportedFullList];
        [sacResultCopy addObjectsFromArray:mCacheCellularReportedFullList];

        mCacheGnssReportedReducedList = [(WCM_SacManager *)self mCacheWifiReportedFullList];
        v12 = sacResultCopy;
      }

      [v12 addObjectsFromArray:mCacheGnssReportedReducedList];

      mCacheWifiReportedFullList = [(WCM_SacManager *)self mCacheGnssReportedFullList];
      goto LABEL_11;
    }

    mCacheCellularReportedReducedList2 = [(WCM_SacManager *)self mCacheCellularReportedReducedList];
    [resultCopy addObjectsFromArray:mCacheCellularReportedReducedList2];

    mCacheWifiReportedFullList = [(WCM_SacManager *)self mCacheCellularReportedFullList];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_SacManager;
  [(WCM_SacManager *)&v2 dealloc];
}

@end