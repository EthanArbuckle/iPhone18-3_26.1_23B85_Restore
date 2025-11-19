@interface UARPMetaDataTLVBackDeploy
+ (id)metaDataTable;
+ (id)tlvFromKey:(id)a3 value:(id)a4;
- (UARPMetaDataTLVBackDeploy)init;
- (UARPMetaDataTLVBackDeploy)initWithType:(unsigned int)a3 length:(unsigned int)a4 value:(void *)a5;
- (id)generateTLV;
@end

@implementation UARPMetaDataTLVBackDeploy

- (UARPMetaDataTLVBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (UARPMetaDataTLVBackDeploy)initWithType:(unsigned int)a3 length:(unsigned int)a4 value:(void *)a5
{
  v13.receiver = self;
  v13.super_class = UARPMetaDataTLVBackDeploy;
  v8 = [(UARPMetaDataTLVBackDeploy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvType = a3;
    v8->_tlvLength = a4;
    v10 = [NSData dataWithBytes:a5 length:a4];
    tlvValue = v9->_tlvValue;
    v9->_tlvValue = v10;
  }

  return v9;
}

+ (id)tlvFromKey:(id)a3 value:(id)a4
{
  v5 = a3;
  v19 = a4;
  v6 = +[UARPMetaDataTLVBackDeploy metaDataTable];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"Name"];
        if (![v5 caseInsensitiveCompare:v13])
        {
          v14 = [v12 objectForKeyedSubscript:@"Value"];
          v15 = [v14 unsignedLongValue] + 2001563392;
          if (v15 <= 0x35 && ((0x3F036601FFFFFFuLL >> v15) & 1) != 0)
          {
            v16 = [(__objc2_class *)*off_10009BAE8[v15] tlvFromPropertyListValue:v19];
            v17 = v9;
            v9 = v16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)metaDataTable
{
  if (metaDataTable_once != -1)
  {
    +[UARPMetaDataTLVBackDeploy metaDataTable];
  }

  v3 = metaDataTable_table;

  return v3;
}

void __42__UARPMetaDataTLVBackDeploy_metaDataTable__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = +[UARPTLVPersonalizationRequiredBackDeploy metaDataTableEntry];
  [v1 addObject:v2];

  v3 = +[UARPTLVPersonalizationPayloadTagBackDeploy metaDataTableEntry];
  [v1 addObject:v3];

  v4 = +[UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy metaDataTableEntry];
  [v1 addObject:v4];

  v5 = +[UARPTLVPersonalizationManifestPrefixBackDeploy metaDataTableEntry];
  [v1 addObject:v5];

  v6 = +[UARPTLVPersonalizationBoardIDBackDeploy metaDataTableEntry];
  [v1 addObject:v6];

  v7 = +[UARPTLVPersonalizationChipIDBackDeploy metaDataTableEntry];
  [v1 addObject:v7];

  v8 = +[UARPTLVPersonalizationECIDBackDeploy metaDataTableEntry];
  [v1 addObject:v8];

  v9 = +[UARPTLVPersonalizationECIDDataBackDeploy metaDataTableEntry];
  [v1 addObject:v9];

  v10 = +[UARPTLVPersonalizationNonceBackDeploy metaDataTableEntry];
  [v1 addObject:v10];

  v11 = +[UARPTLVPersonalizationNonceHashBackDeploy metaDataTableEntry];
  [v1 addObject:v11];

  v12 = +[UARPTLVPersonalizationSecurityDomainBackDeploy metaDataTableEntry];
  [v1 addObject:v12];

  v13 = +[UARPTLVPersonalizationSecurityModeBackDeploy metaDataTableEntry];
  [v1 addObject:v13];

  v14 = +[UARPTLVPersonalizationProductionModeBackDeploy metaDataTableEntry];
  [v1 addObject:v14];

  v15 = +[UARPTLVPersonalizationChipEpochBackDeploy metaDataTableEntry];
  [v1 addObject:v15];

  v16 = +[UARPTLVPersonalizationEnableMixMatchBackDeploy metaDataTableEntry];
  [v1 addObject:v16];

  v17 = +[UARPTLVPersonalizationSuperBinaryPayloadIndexBackDeploy metaDataTableEntry];
  [v1 addObject:v17];

  v18 = +[UARPTLVPersonalizationChipRevisionBackDeploy metaDataTableEntry];
  [v1 addObject:v18];

  v19 = +[UARPTLVPersonalizationFTABSubfileTagBackDeploy metaDataTableEntry];
  [v1 addObject:v19];

  v20 = +[UARPTLVPersonalizationFTABSubfileLongnameBackDeploy metaDataTableEntry];
  [v1 addObject:v20];

  v21 = +[UARPTLVPersonalizationFTABSubfileDigestBackDeploy metaDataTableEntry];
  [v1 addObject:v21];

  v22 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithmBackDeploy metaDataTableEntry];
  [v1 addObject:v22];

  v23 = +[UARPTLVPersonalizationFTABSubfileESECBackDeploy metaDataTableEntry];
  [v1 addObject:v23];

  v24 = +[UARPTLVPersonalizationFTABSubfileEPROBackDeploy metaDataTableEntry];
  [v1 addObject:v24];

  v25 = +[UARPTLVPersonalizationFTABSubfileTrustedBackDeploy metaDataTableEntry];
  [v1 addObject:v25];

  v26 = +[UARPTLVPersonalizationSoCLiveNonceBackDeploy metaDataTableEntry];
  [v1 addObject:v26];

  v27 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v27];

  v28 = +[UARPTLVPersonalizationSuffixNeedsLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v28];

  v29 = +[UARPTLVPersonalizationLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v29];

  v30 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v30];

  v31 = +[UARPTLVHostPersonalizationRequiredBackDeploy metaDataTableEntry];
  [v1 addObject:v31];

  v32 = +[UARPTLVRequiredPersonalizationOptionBackDeploy metaDataTableEntry];
  [v1 addObject:v32];

  v33 = +[UARPTLVPersonalizationFTABPayloadBackDeploy metaDataTableEntry];
  [v1 addObject:v33];

  v34 = +[UARPTLVPersonalizedManifestBackDeploy metaDataTableEntry];
  [v1 addObject:v34];

  v35 = +[UARPTLVPersonalizationLifeBackDeploy metaDataTableEntry];
  [v1 addObject:v35];

  v36 = +[UARPTLVPersonalizationProvisioningBackDeploy metaDataTableEntry];
  [v1 addObject:v36];

  v37 = +[UARPTLVPersonalizationManifestEpochBackDeploy metaDataTableEntry];
  [v1 addObject:v37];

  v38 = +[UARPTLVPersonalizationManifestSuffixBackDeploy metaDataTableEntry];
  [v1 addObject:v38];

  v39 = [NSArray arrayWithArray:v1];
  v40 = metaDataTable_table;
  metaDataTable_table = v39;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(NSMutableData);
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  v6 = uarpHtonl(self->_tlvLength);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_tlvValue];
  v4 = [NSData dataWithData:v3];

  return v4;
}

@end