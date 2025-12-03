@interface AntBlockPowerLimitPolicyClientNB
- (id)getPolicy;
- (void)extractPolicy:(id)policy;
- (void)extractPolicyEntries:(id)entries;
@end

@implementation AntBlockPowerLimitPolicyClientNB

- (void)extractPolicyEntries:(id)entries
{
  entriesCopy = entries;
  v5 = entriesCopy;
  if (entriesCopy)
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Extracted %lu policies for client NB-MMS", [entriesCopy count]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = objc_alloc_init(AntBlockPowerLimitNBPolicy);
          [(AntBlockPowerLimitNBPolicy *)v12 extractPolicy:v11];
          mPolicy = [(AntBlockPowerLimitPolicyClient *)self mPolicy];

          if (v12)
          {
            v14 = mPolicy == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            mPolicy2 = [(AntBlockPowerLimitPolicyClient *)self mPolicy];
            [mPolicy2 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"No policies found for client NB-MMS"];
  }
}

- (void)extractPolicy:(id)policy
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitPolicyClientNB;
  [(AntBlockPowerLimitPolicyClient *)&v3 extractPolicy:policy];
}

- (id)getPolicy
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mPolicy = [(AntBlockPowerLimitPolicyClient *)self mPolicy];
  v5 = [mPolicy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mPolicy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = objc_alloc_init(WCM_Rc1NbDynamicPolicy);
        -[WCM_Rc1NbDynamicPolicy setCellBand:](v10, "setCellBand:", [v9 mCellularBand]);
        -[WCM_Rc1NbDynamicPolicy setBandInfoType:](v10, "setBandInfoType:", [v9 mCellularCoexTech]);
        [(WCM_Rc1NbDynamicPolicy *)v10 setDownlinkLowFreq_Hz:0];
        [(WCM_Rc1NbDynamicPolicy *)v10 setDownlinkHighFreq_Hz:0];
        -[WCM_Rc1NbDynamicPolicy setUplinkLowFreq_Hz:](v10, "setUplinkLowFreq_Hz:", 1000 * ([v9 mCellularFrequencyKHz] - (objc_msgSend(v9, "mCellularBandwidthKHz") >> 1)));
        -[WCM_Rc1NbDynamicPolicy setUplinkHighFreq_Hz:](v10, "setUplinkHighFreq_Hz:", 1000 * ([v9 mCellularFrequencyKHz] + (objc_msgSend(v9, "mCellularBandwidthKHz") >> 1)));
        -[WCM_Rc1NbDynamicPolicy setRc1IssueChannel:](v10, "setRc1IssueChannel:", [v9 mNbChannelBand]);
        -[WCM_Rc1NbDynamicPolicy setRc1AntBitmap:](v10, "setRc1AntBitmap:", [v9 mNbAntennaBitmap]);
        -[WCM_Rc1NbDynamicPolicy setRc1PriorityBitmap:](v10, "setRc1PriorityBitmap:", [v9 mNbPrioirtyBitmap]);
        -[WCM_Rc1NbDynamicPolicy setCellTxPowerCap_16th_dBm:](v10, "setCellTxPowerCap_16th_dBm:", [v9 mCellularTxPowerCap]);
        -[WCM_Rc1NbDynamicPolicy setCellAgressorAntBitmap:](v10, "setCellAgressorAntBitmap:", [v9 mCellularAntBitmap]);
        -[WCM_Rc1NbDynamicPolicy setMitigationType:](v10, "setMitigationType:", [v9 mMitigationType]);
        -[WCM_Rc1NbDynamicPolicy setNbChannelToAvoidStart:](v10, "setNbChannelToAvoidStart:", [v9 mNbChannelStart]);
        -[WCM_Rc1NbDynamicPolicy setNbChannelToAvoidEnd:](v10, "setNbChannelToAvoidEnd:", [v9 mNbChannelEnd]);
        [v3 addObject:v10];
      }

      v6 = [mPolicy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end