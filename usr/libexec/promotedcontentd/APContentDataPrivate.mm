@interface APContentDataPrivate
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedCreativeSize;
- (APContentDataPrivate)init;
- (APContentDataPrivate)initWithAdData:(id)a3 forPlacementType:(int64_t)a4;
- (APContentDataPrivate)initWithCoder:(id)a3;
- (APContentDataPrivateDelegate)delegate;
- (BOOL)impressionIsAvailable;
- (BOOL)isClientRenderedAd;
- (BOOL)isVideo;
- (void)encodeWithCoder:(id)a3;
- (void)save;
@end

@implementation APContentDataPrivate

- (APContentDataPrivate)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = APContentDataPrivate;
  v5 = [(APContentDataPrivate *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adResponseIdentifier"];
    adResponseIdentifier = v5->_adResponseIdentifier;
    v5->_adResponseIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchResponseID"];
    batchResponseID = v5->_batchResponseID;
    v5->_batchResponseID = v8;

    v5->_impressionCount = [v4 decodeInt32ForKey:@"impressionCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"impressionIdentifier"];
    impressionIdentifier = v5->_impressionIdentifier;
    v5->_impressionIdentifier = v10;

    v5->_selectedCreativeSize.width = [v4 decodeInt32ForKey:@"kSelectedCreativeSizeWidth"];
    v5->_selectedCreativeSize.height = [v4 decodeInt32ForKey:@"kSelectedCreativeSizeHeight"];
    v5->_sequenceNumber = [v4 decodeInt32ForKey:@"sequenceNumber"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusConditionExpression"];
    statusConditionExpression = v5->_statusConditionExpression;
    v5->_statusConditionExpression = v12;

    v5->_consumedImpressions = [v4 decodeInt32ForKey:@"consumedImpressions"];
    v5->_isCarouselAd = [v4 decodeBoolForKey:@"isCarouselAd"];
    v5->_isOutstreamVideo = [v4 decodeBoolForKey:@"isOutstreamVideo"];
    v5->_isPrerollVideo = [v4 decodeBoolForKey:@"isPrerollVideo"];
    v5->_isNativeAd = [v4 decodeBoolForKey:@"isNativeAd"];
    v5->_isSponsorshipAd = [v4 decodeBoolForKey:@"isSponsorshipAd"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(APContentDataPrivate *)self adResponseIdentifier];
  [v10 encodeObject:v4 forKey:@"adResponseIdentifier"];

  v5 = [(APContentDataPrivate *)self batchResponseID];
  [v10 encodeObject:v5 forKey:@"batchResponseID"];

  [v10 encodeInt32:-[APContentDataPrivate impressionCount](self forKey:{"impressionCount"), @"impressionCount"}];
  v6 = [(APContentDataPrivate *)self impressionIdentifier];
  [v10 encodeObject:v6 forKey:@"impressionIdentifier"];

  [(APContentDataPrivate *)self selectedCreativeSize];
  [v10 encodeInt32:v7 forKey:@"kSelectedCreativeSizeWidth"];
  [(APContentDataPrivate *)self selectedCreativeSize];
  [v10 encodeInt32:v8 forKey:@"kSelectedCreativeSizeHeight"];
  [v10 encodeInt32:-[APContentDataPrivate sequenceNumber](self forKey:{"sequenceNumber"), @"sequenceNumber"}];
  v9 = [(APContentDataPrivate *)self statusConditionExpression];
  [v10 encodeObject:v9 forKey:@"statusConditionExpression"];

  [v10 encodeInt32:-[APContentDataPrivate consumedImpressions](self forKey:{"consumedImpressions"), @"consumedImpressions"}];
  [v10 encodeBool:-[APContentDataPrivate isOutstreamVideo](self forKey:{"isOutstreamVideo"), @"isOutstreamVideo"}];
  [v10 encodeBool:-[APContentDataPrivate isPrerollVideo](self forKey:{"isPrerollVideo"), @"isPrerollVideo"}];
  [v10 encodeBool:-[APContentDataPrivate isNativeAd](self forKey:{"isNativeAd"), @"isNativeAd"}];
  [v10 encodeBool:-[APContentDataPrivate isCarouselAd](self forKey:{"isCarouselAd"), @"isCarouselAd"}];
  [v10 encodeBool:-[APContentDataPrivate isSponsorshipAd](self forKey:{"isSponsorshipAd"), @"isSponsorshipAd"}];
}

- (APContentDataPrivate)init
{
  v6.receiver = self;
  v6.super_class = APContentDataPrivate;
  v2 = [(APContentDataPrivate *)&v6 init];
  v3 = v2;
  if (v2)
  {
    adResponseIdentifier = v2->_adResponseIdentifier;
    v2->_adResponseIdentifier = @"-2|-2";
  }

  return v3;
}

- (APContentDataPrivate)initWithAdData:(id)a3 forPlacementType:(int64_t)a4
{
  v6 = a3;
  v7 = [(APContentDataPrivate *)self init];
  if (v7)
  {
    if ([v6 hasAdDataResponseIdentifier])
    {
      v8 = [v6 adDataResponseIdentifier];
      adResponseIdentifier = v7->_adResponseIdentifier;
      v7->_adResponseIdentifier = v8;
    }

    if ([v6 hasExpressionToEvaluate])
    {
      v10 = [v6 expressionToEvaluate];
      statusConditionExpression = v7->_statusConditionExpression;
      v7->_statusConditionExpression = v10;
    }

    if ([v6 hasImpressionIdentifierData])
    {
      v12 = [v6 impressionIdentifierData];
      impressionIdentifier = v7->_impressionIdentifier;
      v7->_impressionIdentifier = v12;
    }

    v7->_impressionCount = [v6 impressionCount];
    if ([v6 hasAdTagContentString])
    {
      v14 = [v6 adTagContentString];
      v15 = [v14 length] == 0;
    }

    else
    {
      v15 = 1;
    }

    if ([v6 hasMediaFiles])
    {
      v16 = [v6 mediaFiles];
      v17 = [v16 mediaAssetsCount] == 0;

      if (!a4 && !v17 && !v15)
      {
        v18 = 8;
LABEL_26:
        *(&v7->super.isa + v18) = 1;
        goto LABEL_27;
      }
    }

    switch(a4)
    {
      case 1:
        v18 = 13;
        goto LABEL_26;
      case 3:
        v18 = 10;
        goto LABEL_26;
      case 4:
        v18 = 9;
        goto LABEL_26;
    }

    if (a4)
    {
      if (a4 == 7)
      {
        v18 = 12;
        goto LABEL_26;
      }
    }

    else if ([v6 adLayoutDatasCount])
    {
      v18 = 11;
      goto LABEL_26;
    }
  }

LABEL_27:

  return v7;
}

- (BOOL)impressionIsAvailable
{
  if ([(APContentDataPrivate *)self impressionsRemaining]<= 0)
  {
    return [(APContentDataPrivate *)self impressionCount]>> 31;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isClientRenderedAd
{
  if ([(APContentDataPrivate *)self isNativeAd])
  {
    return 1;
  }

  return [(APContentDataPrivate *)self isPrerollVideo];
}

- (BOOL)isVideo
{
  if ([(APContentDataPrivate *)self isOutstreamVideo])
  {
    return 1;
  }

  return [(APContentDataPrivate *)self isPrerollVideo];
}

- (void)save
{
  v2 = [(APContentDataPrivate *)self delegate];
  [v2 privateDataDidChange];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedCreativeSize
{
  objc_copyStruct(v4, &self->_selectedCreativeSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (APContentDataPrivateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end