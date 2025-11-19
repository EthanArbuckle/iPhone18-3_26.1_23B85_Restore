@interface APPBAdBatchResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)errorAsString:(int)a3;
- (int)StringAsError:(id)a3;
- (int)error;
- (unint64_t)hash;
- (void)addAd:(id)a3;
- (void)addAdUpdates:(id)a3;
- (void)addAdsToEvict:(id)a3;
- (void)addTagTransformations:(id)a3;
- (void)addURLsToEvict:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasClearCache:(BOOL)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasErrorDetails:(BOOL)a3;
- (void)setHasLocationGridSpacing:(BOOL)a3;
- (void)setHasPrefetchInterval:(BOOL)a3;
- (void)setHasPrefetchThreshold:(BOOL)a3;
- (void)setHasSupplyMetrics:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdBatchResponse

- (int)error
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_error;
  }

  else
  {
    return 1;
  }
}

- (void)setHasError:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)errorAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"NO_QUALIFIED";
  }

  else if (a3 == 2)
  {
    v4 = @"CONFIGURATION_ERROR";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsError:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"NO_QUALIFIED"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"CONFIGURATION_ERROR"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addAd:(id)a3
{
  v4 = a3;
  ads = self->_ads;
  v8 = v4;
  if (!ads)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_ads;
    self->_ads = v6;

    v4 = v8;
    ads = self->_ads;
  }

  [(NSMutableArray *)ads addObject:v4];
}

- (void)setHasSupplyMetrics:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasLocationGridSpacing:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasErrorDetails:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addAdsToEvict:(id)a3
{
  v4 = a3;
  adsToEvicts = self->_adsToEvicts;
  v8 = v4;
  if (!adsToEvicts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_adsToEvicts;
    self->_adsToEvicts = v6;

    v4 = v8;
    adsToEvicts = self->_adsToEvicts;
  }

  [(NSMutableArray *)adsToEvicts addObject:v4];
}

- (void)addURLsToEvict:(id)a3
{
  v4 = a3;
  uRLsToEvicts = self->_uRLsToEvicts;
  v8 = v4;
  if (!uRLsToEvicts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_uRLsToEvicts;
    self->_uRLsToEvicts = v6;

    v4 = v8;
    uRLsToEvicts = self->_uRLsToEvicts;
  }

  [(NSMutableArray *)uRLsToEvicts addObject:v4];
}

- (void)addAdUpdates:(id)a3
{
  v4 = a3;
  adUpdates = self->_adUpdates;
  v8 = v4;
  if (!adUpdates)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_adUpdates;
    self->_adUpdates = v6;

    v4 = v8;
    adUpdates = self->_adUpdates;
  }

  [(NSMutableArray *)adUpdates addObject:v4];
}

- (void)addTagTransformations:(id)a3
{
  v4 = a3;
  tagTransformations = self->_tagTransformations;
  v8 = v4;
  if (!tagTransformations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tagTransformations;
    self->_tagTransformations = v6;

    v4 = v8;
    tagTransformations = self->_tagTransformations;
  }

  [(NSMutableArray *)tagTransformations addObject:v4];
}

- (void)setHasPrefetchInterval:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPrefetchThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasClearCache:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdBatchResponse;
  v3 = [(APPBAdBatchResponse *)&v7 description];
  v4 = [(APPBAdBatchResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    error = self->_error;
    if (error == 1)
    {
      v5 = @"NO_QUALIFIED";
    }

    else if (error == 2)
    {
      v5 = @"CONFIGURATION_ERROR";
    }

    else
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_error];
    }

    [v3 setObject:v5 forKey:@"error"];
  }

  batchId = self->_batchId;
  if (batchId)
  {
    [v3 setObject:batchId forKey:@"batchId"];
  }

  if ([(NSMutableArray *)self->_ads count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_ads, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v9 = self->_ads;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v53;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v53 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"ad"];
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v43 = [NSNumber numberWithBool:self->_supplyMetrics];
  [v3 setObject:v43 forKey:@"supplyMetrics"];

  *&has = self->_has;
  if ((*&has & 0x10) != 0)
  {
LABEL_21:
    *&v7 = self->_locationGridSpacing;
    v16 = [NSNumber numberWithFloat:v7];
    [v3 setObject:v16 forKey:@"locationGridSpacing"];

    *&has = self->_has;
  }

LABEL_22:
  if ((*&has & 8) == 0)
  {
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v42 = [NSNumber numberWithUnsignedInt:self->_errorDetails];
  [v3 setObject:v42 forKey:@"errorDetails"];

  if (*&self->_has)
  {
LABEL_24:
    v17 = [NSNumber numberWithDouble:self->_minimumIntervalBeforeNextRequest];
    [v3 setObject:v17 forKey:@"minimumIntervalBeforeNextRequest"];
  }

LABEL_25:
  adsToEvicts = self->_adsToEvicts;
  if (adsToEvicts)
  {
    [v3 setObject:adsToEvicts forKey:@"adsToEvict"];
  }

  uRLsToEvicts = self->_uRLsToEvicts;
  if (uRLsToEvicts)
  {
    [v3 setObject:uRLsToEvicts forKey:@"URLsToEvict"];
  }

  if ([(NSMutableArray *)self->_adUpdates count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_adUpdates, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = self->_adUpdates;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v49;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v48 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"adUpdates"];
  }

  if ([(NSMutableArray *)self->_tagTransformations count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_tagTransformations, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = self->_tagTransformations;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v44 + 1) + 8 * k) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"tagTransformations"];
  }

  v34 = self->_has;
  if ((v34 & 2) != 0)
  {
    v35 = [NSNumber numberWithDouble:self->_prefetchInterval];
    [v3 setObject:v35 forKey:@"prefetchInterval"];

    v34 = self->_has;
  }

  if ((v34 & 0x20) != 0)
  {
    v36 = [NSNumber numberWithInt:self->_prefetchThreshold];
    [v3 setObject:v36 forKey:@"prefetchThreshold"];
  }

  configVersion = self->_configVersion;
  if (configVersion)
  {
    [v3 setObject:configVersion forKey:@"configVersion"];
  }

  specification = self->_specification;
  if (specification)
  {
    v39 = [(APPBAdSpecification *)specification dictionaryRepresentation];
    [v3 setObject:v39 forKey:@"specification"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v40 = [NSNumber numberWithBool:self->_clearCache];
    [v3 setObject:v40 forKey:@"clearCache"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_batchId)
  {
    PBDataWriterWriteStringField();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = self->_ads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  PBDataWriterWriteBOOLField();
  *&has = self->_has;
  if ((*&has & 0x10) != 0)
  {
LABEL_14:
    PBDataWriterWriteFloatField();
    *&has = self->_has;
  }

LABEL_15:
  if ((*&has & 8) == 0)
  {
    if ((*&has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  PBDataWriterWriteFixed32Field();
  if (*&self->_has)
  {
LABEL_17:
    PBDataWriterWriteDoubleField();
  }

LABEL_18:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = self->_adsToEvicts;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v13);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = self->_uRLsToEvicts;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteStringField();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v18);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = self->_adUpdates;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteSubmessage();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v23);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = self->_tagTransformations;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        PBDataWriterWriteSubmessage();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v28);
  }

  v31 = self->_has;
  if ((v31 & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v31 = self->_has;
  }

  if ((v31 & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_configVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_specification)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[16] = self->_error;
    *(v4 + 108) |= 4u;
  }

  v29 = v4;
  if (self->_batchId)
  {
    [v4 setBatchId:?];
  }

  if ([(APPBAdBatchResponse *)self adsCount])
  {
    [v29 clearAds];
    v5 = [(APPBAdBatchResponse *)self adsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(APPBAdBatchResponse *)self adAtIndex:i];
        [v29 addAd:v8];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    v10 = v29;
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = v29;
  *(v29 + 105) = self->_supplyMetrics;
  *(v29 + 108) |= 0x80u;
  *&has = self->_has;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v10[18] = LODWORD(self->_locationGridSpacing);
    *(v10 + 108) |= 0x10u;
    *&has = self->_has;
  }

LABEL_12:
  if ((*&has & 8) != 0)
  {
    v10[17] = self->_errorDetails;
    *(v10 + 108) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*&has)
  {
LABEL_14:
    *(v10 + 1) = *&self->_minimumIntervalBeforeNextRequest;
    *(v10 + 108) |= 1u;
  }

LABEL_15:
  if ([(APPBAdBatchResponse *)self adsToEvictsCount])
  {
    [v29 clearAdsToEvicts];
    v11 = [(APPBAdBatchResponse *)self adsToEvictsCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(APPBAdBatchResponse *)self adsToEvictAtIndex:j];
        [v29 addAdsToEvict:v14];
      }
    }
  }

  if ([(APPBAdBatchResponse *)self uRLsToEvictsCount])
  {
    [v29 clearURLsToEvicts];
    v15 = [(APPBAdBatchResponse *)self uRLsToEvictsCount];
    if (v15)
    {
      v16 = v15;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(APPBAdBatchResponse *)self uRLsToEvictAtIndex:k];
        [v29 addURLsToEvict:v18];
      }
    }
  }

  if ([(APPBAdBatchResponse *)self adUpdatesCount])
  {
    [v29 clearAdUpdates];
    v19 = [(APPBAdBatchResponse *)self adUpdatesCount];
    if (v19)
    {
      v20 = v19;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(APPBAdBatchResponse *)self adUpdatesAtIndex:m];
        [v29 addAdUpdates:v22];
      }
    }
  }

  if ([(APPBAdBatchResponse *)self tagTransformationsCount])
  {
    [v29 clearTagTransformations];
    v23 = [(APPBAdBatchResponse *)self tagTransformationsCount];
    if (v23)
    {
      v24 = v23;
      for (n = 0; n != v24; ++n)
      {
        v26 = [(APPBAdBatchResponse *)self tagTransformationsAtIndex:n];
        [v29 addTagTransformations:v26];
      }
    }
  }

  v27 = self->_has;
  v28 = v29;
  if ((v27 & 2) != 0)
  {
    *(v29 + 2) = *&self->_prefetchInterval;
    *(v29 + 108) |= 2u;
    v27 = self->_has;
  }

  if ((v27 & 0x20) != 0)
  {
    *(v29 + 19) = self->_prefetchThreshold;
    *(v29 + 108) |= 0x20u;
  }

  if (self->_configVersion)
  {
    [v29 setConfigVersion:?];
    v28 = v29;
  }

  if (self->_specification)
  {
    [v29 setSpecification:?];
    v28 = v29;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v28[104] = self->_clearCache;
    v28[108] |= 0x40u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[16] = self->_error;
    *(v5 + 108) |= 4u;
  }

  v7 = [(NSString *)self->_batchId copyWithZone:a3];
  v8 = v6[6];
  v6[6] = v7;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = self->_ads;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v62 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAd:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v11);
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(v6 + 105) = self->_supplyMetrics;
  *(v6 + 108) |= 0x80u;
  *&has = self->_has;
  if ((*&has & 0x10) != 0)
  {
LABEL_12:
    *(v6 + 18) = LODWORD(self->_locationGridSpacing);
    *(v6 + 108) |= 0x10u;
    *&has = self->_has;
  }

LABEL_13:
  if ((*&has & 8) == 0)
  {
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(v6 + 17) = self->_errorDetails;
  *(v6 + 108) |= 8u;
  if (*&self->_has)
  {
LABEL_15:
    v6[1] = *&self->_minimumIntervalBeforeNextRequest;
    *(v6 + 108) |= 1u;
  }

LABEL_16:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = self->_adsToEvicts;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v58 + 1) + 8 * j) copyWithZone:a3];
        [v6 addAdsToEvict:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v58 objects:v69 count:16];
    }

    while (v18);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v22 = self->_uRLsToEvicts;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v54 + 1) + 8 * k) copyWithZone:a3];
        [v6 addURLsToEvict:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v24);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v28 = self->_adUpdates;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v50 objects:v67 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v51;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v50 + 1) + 8 * m) copyWithZone:a3];
        [v6 addAdUpdates:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v50 objects:v67 count:16];
    }

    while (v30);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = self->_tagTransformations;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v46 objects:v66 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v47;
    do
    {
      for (n = 0; n != v36; n = n + 1)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v46 + 1) + 8 * n) copyWithZone:{a3, v46}];
        [v6 addTagTransformations:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v46 objects:v66 count:16];
    }

    while (v36);
  }

  v40 = self->_has;
  if ((v40 & 2) != 0)
  {
    v6[2] = *&self->_prefetchInterval;
    *(v6 + 108) |= 2u;
    v40 = self->_has;
  }

  if ((v40 & 0x20) != 0)
  {
    *(v6 + 19) = self->_prefetchThreshold;
    *(v6 + 108) |= 0x20u;
  }

  v41 = [(NSString *)self->_configVersion copyWithZone:a3, v46];
  v42 = v6[7];
  v6[7] = v41;

  v43 = [(APPBAdSpecification *)self->_specification copyWithZone:a3];
  v44 = v6[10];
  v6[10] = v43;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v6 + 104) = self->_clearCache;
    *(v6 + 108) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 108) & 4) == 0 || self->_error != *(v4 + 16))
    {
      goto LABEL_59;
    }
  }

  else if ((*(v4 + 108) & 4) != 0)
  {
    goto LABEL_59;
  }

  batchId = self->_batchId;
  if (batchId | *(v4 + 6) && ![(NSString *)batchId isEqual:?])
  {
    goto LABEL_59;
  }

  ads = self->_ads;
  if (ads | *(v4 + 4))
  {
    if (![(NSMutableArray *)ads isEqual:?])
    {
      goto LABEL_59;
    }
  }

  has = self->_has;
  if ((*&has & 0x80000000) != 0)
  {
    if ((*(v4 + 108) & 0x80) == 0)
    {
      goto LABEL_59;
    }

    if (self->_supplyMetrics)
    {
      if ((*(v4 + 105) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(v4 + 105))
    {
      goto LABEL_59;
    }
  }

  else if ((*(v4 + 108) & 0x80) != 0)
  {
    goto LABEL_59;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((*(v4 + 108) & 0x10) == 0 || self->_locationGridSpacing != *(v4 + 18))
    {
      goto LABEL_59;
    }
  }

  else if ((*(v4 + 108) & 0x10) != 0)
  {
    goto LABEL_59;
  }

  if ((*&has & 8) != 0)
  {
    if ((*(v4 + 108) & 8) == 0 || self->_errorDetails != *(v4 + 17))
    {
      goto LABEL_59;
    }
  }

  else if ((*(v4 + 108) & 8) != 0)
  {
    goto LABEL_59;
  }

  if (*&has)
  {
    if ((*(v4 + 108) & 1) == 0 || self->_minimumIntervalBeforeNextRequest != *(v4 + 1))
    {
      goto LABEL_59;
    }
  }

  else if (*(v4 + 108))
  {
    goto LABEL_59;
  }

  adsToEvicts = self->_adsToEvicts;
  if (adsToEvicts | *(v4 + 5) && ![(NSMutableArray *)adsToEvicts isEqual:?])
  {
    goto LABEL_59;
  }

  uRLsToEvicts = self->_uRLsToEvicts;
  if (uRLsToEvicts | *(v4 + 12))
  {
    if (![(NSMutableArray *)uRLsToEvicts isEqual:?])
    {
      goto LABEL_59;
    }
  }

  adUpdates = self->_adUpdates;
  if (adUpdates | *(v4 + 3))
  {
    if (![(NSMutableArray *)adUpdates isEqual:?])
    {
      goto LABEL_59;
    }
  }

  tagTransformations = self->_tagTransformations;
  if (tagTransformations | *(v4 + 11))
  {
    if (![(NSMutableArray *)tagTransformations isEqual:?])
    {
      goto LABEL_59;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 108) & 2) == 0 || self->_prefetchInterval != *(v4 + 2))
    {
      goto LABEL_59;
    }
  }

  else if ((*(v4 + 108) & 2) != 0)
  {
    goto LABEL_59;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 108) & 0x20) == 0 || self->_prefetchThreshold != *(v4 + 19))
    {
      goto LABEL_59;
    }
  }

  else if ((*(v4 + 108) & 0x20) != 0)
  {
    goto LABEL_59;
  }

  configVersion = self->_configVersion;
  if (configVersion | *(v4 + 7) && ![(NSString *)configVersion isEqual:?])
  {
    goto LABEL_59;
  }

  specification = self->_specification;
  if (specification | *(v4 + 10))
  {
    if (![(APPBAdSpecification *)specification isEqual:?])
    {
      goto LABEL_59;
    }
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 108) & 0x40) != 0)
    {
      if (self->_clearCache)
      {
        if ((*(v4 + 104) & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else if (*(v4 + 104))
      {
        goto LABEL_59;
      }

      v14 = 1;
      goto LABEL_60;
    }

LABEL_59:
    v14 = 0;
    goto LABEL_60;
  }

  v14 = (*(v4 + 108) & 0x40) == 0;
LABEL_60:

  return v14;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v33 = 2654435761 * self->_error;
  }

  else
  {
    v33 = 0;
  }

  v32 = [(NSString *)self->_batchId hash];
  v31 = [(NSMutableArray *)self->_ads hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v30 = 2654435761 * self->_supplyMetrics;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v30 = 0;
    if ((*&self->_has & 0x10) == 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_14;
    }
  }

  locationGridSpacing = self->_locationGridSpacing;
  if (locationGridSpacing < 0.0)
  {
    locationGridSpacing = -locationGridSpacing;
  }

  *v3.i32 = floorf(locationGridSpacing + 0.5);
  v7 = (locationGridSpacing - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v3 = vbslq_s8(v8, v4, v3);
  v5 = 2654435761u * *v3.i32;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v5 += v7;
    }
  }

  else
  {
    v5 -= fabsf(v7);
  }

LABEL_14:
  if ((*&self->_has & 8) != 0)
  {
    v28 = 2654435761 * self->_errorDetails;
  }

  else
  {
    v28 = 0;
  }

  v29 = v5;
  if (*&self->_has)
  {
    minimumIntervalBeforeNextRequest = self->_minimumIntervalBeforeNextRequest;
    if (minimumIntervalBeforeNextRequest < 0.0)
    {
      minimumIntervalBeforeNextRequest = -minimumIntervalBeforeNextRequest;
    }

    *v3.i64 = floor(minimumIntervalBeforeNextRequest + 0.5);
    v11 = (minimumIntervalBeforeNextRequest - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v4, v3).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v27 = [(NSMutableArray *)self->_adsToEvicts hash];
  v13 = [(NSMutableArray *)self->_uRLsToEvicts hash];
  v14 = [(NSMutableArray *)self->_adUpdates hash];
  v15 = [(NSMutableArray *)self->_tagTransformations hash];
  if ((*&self->_has & 2) != 0)
  {
    prefetchInterval = self->_prefetchInterval;
    if (prefetchInterval < 0.0)
    {
      prefetchInterval = -prefetchInterval;
    }

    *v16.i64 = floor(prefetchInterval + 0.5);
    v20 = (prefetchInterval - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v22 = 2654435761 * self->_prefetchThreshold;
  }

  else
  {
    v22 = 0;
  }

  v23 = [(NSString *)self->_configVersion hash];
  v24 = [(APPBAdSpecification *)self->_specification hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v25 = 2654435761 * self->_clearCache;
  }

  else
  {
    v25 = 0;
  }

  return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v9 ^ v27 ^ v13 ^ v14 ^ v15 ^ v18 ^ v22 ^ v23 ^ v24 ^ v25;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[108] & 4) != 0)
  {
    self->_error = *(v4 + 16);
    *&self->_has |= 4u;
  }

  if (*(v4 + 6))
  {
    [(APPBAdBatchResponse *)self setBatchId:?];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = *(v5 + 4);
  v7 = [v6 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(APPBAdBatchResponse *)self addAd:*(*(&v51 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v8);
  }

  v11 = v5[108];
  if ((v11 & 0x80000000) == 0)
  {
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  self->_supplyMetrics = v5[105];
  *&self->_has |= 0x80u;
  LOBYTE(v11) = v5[108];
  if ((v11 & 0x10) != 0)
  {
LABEL_14:
    self->_locationGridSpacing = *(v5 + 18);
    *&self->_has |= 0x10u;
    LOBYTE(v11) = v5[108];
  }

LABEL_15:
  if ((v11 & 8) == 0)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  self->_errorDetails = *(v5 + 17);
  *&self->_has |= 8u;
  if (v5[108])
  {
LABEL_17:
    self->_minimumIntervalBeforeNextRequest = *(v5 + 1);
    *&self->_has |= 1u;
  }

LABEL_18:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = *(v5 + 5);
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(APPBAdBatchResponse *)self addAdsToEvict:*(*(&v47 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v14);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = *(v5 + 12);
  v18 = [v17 countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v44;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(APPBAdBatchResponse *)self addURLsToEvict:*(*(&v43 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v43 objects:v57 count:16];
    }

    while (v19);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = *(v5 + 3);
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      for (m = 0; m != v24; m = m + 1)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(APPBAdBatchResponse *)self addAdUpdates:*(*(&v39 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v39 objects:v56 count:16];
    }

    while (v24);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = *(v5 + 11);
  v28 = [v27 countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (n = 0; n != v29; n = n + 1)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(APPBAdBatchResponse *)self addTagTransformations:*(*(&v35 + 1) + 8 * n), v35];
      }

      v29 = [v27 countByEnumeratingWithState:&v35 objects:v55 count:16];
    }

    while (v29);
  }

  v32 = v5[108];
  if ((v32 & 2) != 0)
  {
    self->_prefetchInterval = *(v5 + 2);
    *&self->_has |= 2u;
    v32 = v5[108];
  }

  if ((v32 & 0x20) != 0)
  {
    self->_prefetchThreshold = *(v5 + 19);
    *&self->_has |= 0x20u;
  }

  if (*(v5 + 7))
  {
    [(APPBAdBatchResponse *)self setConfigVersion:?];
  }

  specification = self->_specification;
  v34 = *(v5 + 10);
  if (specification)
  {
    if (v34)
    {
      [(APPBAdSpecification *)specification mergeFrom:?];
    }
  }

  else if (v34)
  {
    [(APPBAdBatchResponse *)self setSpecification:?];
  }

  if ((v5[108] & 0x40) != 0)
  {
    self->_clearCache = v5[104];
    *&self->_has |= 0x40u;
  }
}

@end