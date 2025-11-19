@interface WCM_CellularRc1PolicyManager
- (BOOL)isNBDynamicPolicyUpdateRequired:(id)a3;
- (WCM_CellularRc1PolicyManager)init;
- (id)calculateNBDynamicPolicy;
- (void)handleCellularNetworkUpdate;
- (void)handleCellularPowerState:(BOOL)a3;
- (void)sendRc1Message:(id)a3;
- (void)updateCellularR1CoexBandStatus;
- (void)updateControllerSession:(id)a3 ofId:(int)a4;
- (void)updateRc1ChannelNumber:(unsigned int)a3 NbChannelBitmask:(unsigned int)a4;
- (void)updateRc1OverallConfig;
@end

@implementation WCM_CellularRc1PolicyManager

- (void)handleCellularNetworkUpdate
{
  v31 = [(WCM_CellularRc1PolicyManager *)self cellularController];
  v3 = [(WCM_CellularRc1PolicyManager *)self platformManager];
  v4 = +[WCM_PolicyManager singleton];
  [WCM_Logging logLevel:2 message:@"WCM_CellularRc1PolicyManager handleCellularNetworkUpdate"];
  if (!v31 && v4)
  {
    v31 = [v4 cellularController];
    v5 = [v4 cellularController];
    cellularController = self->_cellularController;
    self->_cellularController = v5;
  }

  v7 = [v3 wcmCellRc1CoexIssueTable];

  if (v7)
  {
    v8 = [v31 bandInfoType];
    v9 = [v4 activeCoexFeatures];
    v10 = [v9 containsObject:@"WatchReportRC1IssueChannel"];

    if (v10)
    {
      [v31 dlCenterFreq];
      v12 = v11;
      [v31 dlBandwidth];
      v14 = (v12 - v13 * 0.5) * 1000000.0;
      [v31 dlCenterFreq];
      v16 = v15;
      [v31 dlBandwidth];
      v18 = (v16 + v17 * 0.5) * 1000000.0;
      [v31 ulCenterFreq];
      v20 = v19;
      [v31 ulBandwidth];
      v22 = (v20 - v21 * 0.5) * 1000000.0;
      [v31 ulCenterFreq];
      v24 = v23;
      [v31 ulBandwidth];
      [(WCM_CellularRc1PolicyManager *)self WatchReportRc1ChannelsForGpioBlankingByCellBandInfoType:v8 CellDlLowFreq:v14 cellDlHighFreq:v18 cellUlLowFreq:v22 cellUlHighFreq:(v24 + v25 * 0.5) * 1000000.0];
    }

    v26 = [v4 activeCoexFeatures];
    v27 = [v26 containsObject:@"UseWCMAriDriver"];

    if (v27)
    {
      v28 = [(WCM_CellularRc1PolicyManager *)self calculateNBDynamicPolicy];
      if (v28 && [(WCM_CellularRc1PolicyManager *)self isNBDynamicPolicyUpdateRequired:v28])
      {
        v29 = +[WCM_AriCoexCommandDriver singleton];
        v30 = v29;
        if (v29)
        {
          [v29 handleRc1DynamicPolicy:v28 SubId:0];
        }
      }
    }

    [(WCM_CellularRc1PolicyManager *)self updateCellularR1CoexBandStatus];
  }
}

- (void)updateCellularR1CoexBandStatus
{
  v36 = [(WCM_CellularRc1PolicyManager *)self cellularController];
  v3 = [(WCM_CellularRc1PolicyManager *)self platformManager];
  v4 = [v36 getActiveULCAConfig];
  v5 = [v36 bandInfoType];
  [v36 dlCenterFreq];
  v7 = v6;
  [v36 dlBandwidth];
  v9 = v8;
  [v36 dlCenterFreq];
  v11 = v10;
  [v36 dlBandwidth];
  v13 = v12;
  [v36 ulCenterFreq];
  v15 = v14;
  [v36 ulBandwidth];
  v17 = v16;
  [v36 ulCenterFreq];
  v19 = v18;
  [v36 ulBandwidth];
  if (v4)
  {
    v21 = (v4 + 16);
    v22 = 31;
    do
    {
      v23 = v22;
      v24 = v21[1] * 0.5;
      v25 = (*v21 - v24) * 1000000.0;
      v26 = (*v21 + v24) * 1000000.0;
      v27 = *(v21 - 2);
      v28 = *(v21 - 1) * 0.5;
      v29 = (v27 - v28) * 1000000.0;
      v30 = (v27 + v28) * 1000000.0;
      v31 = [v3 wcmCellRc1CoexIssueTable];
      v32 = [v31 isCellularInRc1CoexBand:v5 CellDlLowFreq:self->Rc1Channel cellDlHighFreq:v25 cellUlLowFreq:v26 cellUlHighFreq:v29 RC1ChannelBitmask:v30];

      if (v32)
      {
        break;
      }

      v22 = v23 - 1;
      v21 += 9;
    }

    while (v23);
  }

  else
  {
    v33 = (v19 + v20 * 0.5) * 1000000.0;
    v34 = [v3 wcmCellRc1CoexIssueTable];
    v32 = [v34 isCellularInRc1CoexBand:v5 CellDlLowFreq:self->Rc1Channel cellDlHighFreq:(v7 - v9 * 0.5) * 1000000.0 cellUlLowFreq:(v11 + v13 * 0.5) * 1000000.0 cellUlHighFreq:(v15 - v17 * 0.5) * 1000000.0 RC1ChannelBitmask:v33];
  }

  if (self->isCellInRc1CoexBand != v32)
  {
    [WCM_Logging logLevel:3 message:@"Cell RC1 policy manager: cellular in RC1 Coex band: %d", v32];
    self->isCellInRc1CoexBand = v32;
    v35 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v35, "kWCMHToRCU1Cellularband", v32);
    [(WCM_CellularRc1PolicyManager *)self sendRc1Message:v35];
  }
}

- (WCM_CellularRc1PolicyManager)init
{
  v6.receiver = self;
  v6.super_class = WCM_CellularRc1PolicyManager;
  v2 = [(WCM_CellularRc1PolicyManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->Rc1Channel = 0;
    *&v2->isCellInRc1CoexBand = 0;
    *&v2->WatchRc1IssueNbChannelIndex_begin = -1;
    v2->WatchRc1IssueChannel = 0;
    cachedNBDynamicPolicy = v2->cachedNBDynamicPolicy;
    v2->cachedNBDynamicPolicy = 0;
  }

  return v3;
}

- (void)updateControllerSession:(id)a3 ofId:(int)a4
{
  v7 = a3;
  if (a4 == 29)
  {
    v8 = v7;
    objc_storeStrong(&self->_rcu1Controller, a3);
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_6;
    }

    v8 = v7;
    objc_storeStrong(&self->_cellularController, a3);
    [WCM_Logging logLevel:2 message:@"RC1 Policy manager update Cellular Controller = %p", self->_cellularController];
  }

  v7 = v8;
LABEL_6:
}

- (BOOL)isNBDynamicPolicyUpdateRequired:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 count];
  }

  else
  {
    v6 = 0;
  }

  cachedNBDynamicPolicy = self->cachedNBDynamicPolicy;
  if (cachedNBDynamicPolicy)
  {
    LODWORD(cachedNBDynamicPolicy) = [(NSMutableArray *)cachedNBDynamicPolicy count];
  }

  if (v6 != cachedNBDynamicPolicy)
  {
LABEL_25:
    v22 = v5;
    v10 = self->cachedNBDynamicPolicy;
    self->cachedNBDynamicPolicy = v22;
    v21 = 1;
    goto LABEL_26;
  }

  v8 = [[NSSet alloc] initWithArray:v5];
  v25 = self;
  v9 = [[NSSet alloc] initWithArray:self->cachedNBDynamicPolicy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v8;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    v24 = v5;
    while (1)
    {
      v14 = 0;
LABEL_10:
      if (*v31 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v30 + 1) + 8 * v14);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v9;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = *v27;
LABEL_14:
      v20 = 0;
      while (1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([v15 isEqual:{*(*(&v26 + 1) + 8 * v20), v24}])
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v18)
          {
            goto LABEL_14;
          }

          goto LABEL_24;
        }
      }

      if (++v14 != v12)
      {
        goto LABEL_10;
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v5 = v24;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

LABEL_24:

    v5 = v24;
    self = v25;
    goto LABEL_25;
  }

LABEL_23:

  v21 = 0;
LABEL_26:

  return v21;
}

- (id)calculateNBDynamicPolicy
{
  v3 = [(WCM_CellularRc1PolicyManager *)self cellularController];
  v4 = [(WCM_CellularRc1PolicyManager *)self platformManager];
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v3 getActiveULCAConfig];
  if (v6)
  {
    [WCM_Logging logLevel:2 message:@"calculateNBDynamicPolicy lte_nr_scell.totalvalidCarriers = %d", v6[576]];
    v7 = v6[576];
    if (v7 <= 0x20)
    {
      v23 = v3;
      if (v7)
      {
        v8 = 0;
        v9 = v6 + 16;
        do
        {
          v10 = *(v9 - 6);
          v11 = *(v9 - 5) * 0.5;
          v12 = (v10 - v11) * 1000000.0;
          v13 = (v10 + v11) * 1000000.0;
          v14 = *(v9 - 8);
          v15 = *(v9 - 7);
          v16 = (v14 - v15 * 0.5) * 1000000.0;
          v17 = (v14 + v15 * 0.5) * 1000000.0;
          [WCM_Logging logLevel:2 message:@"calculateNBDynamicPolicy carrier[%d]: ulCenterFreq_MHz = %f, ulBandwidth=%f", v8, *&v14, *&v15];
          v18 = [v4 wcmCellRc1CoexIssueTable];
          v19 = [v18 createDynamicRc1NbCoexPolicyByCellBandInfoType:*v9 CellDlLowFreq:4 cellDlHighFreq:v12 cellUlLowFreq:v13 cellUlHighFreq:v16 RC1Channel:v17];

          v20 = [v4 wcmCellRc1CoexIssueTable];
          v21 = [v20 createDynamicRc1NbCoexPolicyByCellBandInfoType:*v9 CellDlLowFreq:8 cellDlHighFreq:v12 cellUlLowFreq:v13 cellUlHighFreq:v16 RC1Channel:v17];

          if (v19 && [v19 count])
          {
            [v5 addObjectsFromArray:v19];
          }

          if (v21 && [v21 count])
          {
            [v5 addObjectsFromArray:v21];
          }

          v9 += 18;

          ++v8;
        }

        while (v8 < v6[576]);
      }

      v6 = v5;
      v3 = v23;
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"calculateNBDynamicPolicy lte_nr_scell has invalid total carriers"];
      v6 = 0;
    }
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"calculateNBDynamicPolicy lte_nr_scell is NULL"];
  }

  return v6;
}

- (void)updateRc1ChannelNumber:(unsigned int)a3 NbChannelBitmask:(unsigned int)a4
{
  self->Rc1Channel = 0;
  if (a3 == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
    if (a3 != 9)
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  self->Rc1Channel = v4;
LABEL_6:
  if ((a4 & 0x1F) != 0)
  {
    v5 = v4 & 0xFFFFFFFB | (4 * (a4 & 1));
    if ((a4 & 2) != 0)
    {
      v5 |= 0x18u;
    }

    if ((a4 & 4) != 0)
    {
      v5 |= 0x28u;
    }

    if ((a4 & 8) != 0)
    {
      v5 |= 0x48u;
    }

    if ((a4 & 0x10) != 0)
    {
      v5 |= 0x88u;
    }

    self->Rc1Channel = v5;
  }

  [(WCM_CellularRc1PolicyManager *)self updateCellularR1CoexBandStatus];
}

- (void)sendRc1Message:(id)a3
{
  rcu1Controller = self->_rcu1Controller;
  if (rcu1Controller)
  {
    [(WCM_Controller *)rcu1Controller sendMessage:1500 withArgs:a3];
  }
}

- (void)handleCellularPowerState:(BOOL)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "kWCMHToRCU1CellularStatus", 1);
  self->cellPowerState = 1;
  [(WCM_CellularRc1PolicyManager *)self sendRc1Message:v4];
}

- (void)updateRc1OverallConfig
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(xdict, "kWCMHToRCU1CellularStatus", self->cellPowerState);
  xpc_dictionary_set_BOOL(xdict, "kWCMHToRCU1Cellularband", self->isCellInRc1CoexBand);
  xpc_dictionary_set_uint64(xdict, "kWCMHToRCU1ChannelsToTriggerGPIOBlanking", self->WatchRc1IssueChannel);
  xpc_dictionary_set_uint64(xdict, "kWCMHToRCU1SideChannelsToTriggerGPIOBlanking_ChBegin", self->WatchRc1IssueNbChannelIndex_begin);
  xpc_dictionary_set_uint64(xdict, "kWCMHToRCU1SideChannelsToTriggerGPIOBlanking_ChEnd", self->WatchRc1IssueNbChannelIndex_end);
  [(WCM_CellularRc1PolicyManager *)self sendRc1Message:xdict];
}

@end