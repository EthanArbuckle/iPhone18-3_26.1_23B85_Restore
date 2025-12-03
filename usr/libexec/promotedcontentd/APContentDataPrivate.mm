@interface APContentDataPrivate
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedCreativeSize;
- (APContentDataPrivate)init;
- (APContentDataPrivate)initWithAdData:(id)data forPlacementType:(int64_t)type;
- (APContentDataPrivate)initWithCoder:(id)coder;
- (APContentDataPrivateDelegate)delegate;
- (BOOL)impressionIsAvailable;
- (BOOL)isClientRenderedAd;
- (BOOL)isVideo;
- (void)encodeWithCoder:(id)coder;
- (void)save;
@end

@implementation APContentDataPrivate

- (APContentDataPrivate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = APContentDataPrivate;
  v5 = [(APContentDataPrivate *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adResponseIdentifier"];
    adResponseIdentifier = v5->_adResponseIdentifier;
    v5->_adResponseIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batchResponseID"];
    batchResponseID = v5->_batchResponseID;
    v5->_batchResponseID = v8;

    v5->_impressionCount = [coderCopy decodeInt32ForKey:@"impressionCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"impressionIdentifier"];
    impressionIdentifier = v5->_impressionIdentifier;
    v5->_impressionIdentifier = v10;

    v5->_selectedCreativeSize.width = [coderCopy decodeInt32ForKey:@"kSelectedCreativeSizeWidth"];
    v5->_selectedCreativeSize.height = [coderCopy decodeInt32ForKey:@"kSelectedCreativeSizeHeight"];
    v5->_sequenceNumber = [coderCopy decodeInt32ForKey:@"sequenceNumber"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusConditionExpression"];
    statusConditionExpression = v5->_statusConditionExpression;
    v5->_statusConditionExpression = v12;

    v5->_consumedImpressions = [coderCopy decodeInt32ForKey:@"consumedImpressions"];
    v5->_isCarouselAd = [coderCopy decodeBoolForKey:@"isCarouselAd"];
    v5->_isOutstreamVideo = [coderCopy decodeBoolForKey:@"isOutstreamVideo"];
    v5->_isPrerollVideo = [coderCopy decodeBoolForKey:@"isPrerollVideo"];
    v5->_isNativeAd = [coderCopy decodeBoolForKey:@"isNativeAd"];
    v5->_isSponsorshipAd = [coderCopy decodeBoolForKey:@"isSponsorshipAd"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  adResponseIdentifier = [(APContentDataPrivate *)self adResponseIdentifier];
  [coderCopy encodeObject:adResponseIdentifier forKey:@"adResponseIdentifier"];

  batchResponseID = [(APContentDataPrivate *)self batchResponseID];
  [coderCopy encodeObject:batchResponseID forKey:@"batchResponseID"];

  [coderCopy encodeInt32:-[APContentDataPrivate impressionCount](self forKey:{"impressionCount"), @"impressionCount"}];
  impressionIdentifier = [(APContentDataPrivate *)self impressionIdentifier];
  [coderCopy encodeObject:impressionIdentifier forKey:@"impressionIdentifier"];

  [(APContentDataPrivate *)self selectedCreativeSize];
  [coderCopy encodeInt32:v7 forKey:@"kSelectedCreativeSizeWidth"];
  [(APContentDataPrivate *)self selectedCreativeSize];
  [coderCopy encodeInt32:v8 forKey:@"kSelectedCreativeSizeHeight"];
  [coderCopy encodeInt32:-[APContentDataPrivate sequenceNumber](self forKey:{"sequenceNumber"), @"sequenceNumber"}];
  statusConditionExpression = [(APContentDataPrivate *)self statusConditionExpression];
  [coderCopy encodeObject:statusConditionExpression forKey:@"statusConditionExpression"];

  [coderCopy encodeInt32:-[APContentDataPrivate consumedImpressions](self forKey:{"consumedImpressions"), @"consumedImpressions"}];
  [coderCopy encodeBool:-[APContentDataPrivate isOutstreamVideo](self forKey:{"isOutstreamVideo"), @"isOutstreamVideo"}];
  [coderCopy encodeBool:-[APContentDataPrivate isPrerollVideo](self forKey:{"isPrerollVideo"), @"isPrerollVideo"}];
  [coderCopy encodeBool:-[APContentDataPrivate isNativeAd](self forKey:{"isNativeAd"), @"isNativeAd"}];
  [coderCopy encodeBool:-[APContentDataPrivate isCarouselAd](self forKey:{"isCarouselAd"), @"isCarouselAd"}];
  [coderCopy encodeBool:-[APContentDataPrivate isSponsorshipAd](self forKey:{"isSponsorshipAd"), @"isSponsorshipAd"}];
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

- (APContentDataPrivate)initWithAdData:(id)data forPlacementType:(int64_t)type
{
  dataCopy = data;
  v7 = [(APContentDataPrivate *)self init];
  if (v7)
  {
    if ([dataCopy hasAdDataResponseIdentifier])
    {
      adDataResponseIdentifier = [dataCopy adDataResponseIdentifier];
      adResponseIdentifier = v7->_adResponseIdentifier;
      v7->_adResponseIdentifier = adDataResponseIdentifier;
    }

    if ([dataCopy hasExpressionToEvaluate])
    {
      expressionToEvaluate = [dataCopy expressionToEvaluate];
      statusConditionExpression = v7->_statusConditionExpression;
      v7->_statusConditionExpression = expressionToEvaluate;
    }

    if ([dataCopy hasImpressionIdentifierData])
    {
      impressionIdentifierData = [dataCopy impressionIdentifierData];
      impressionIdentifier = v7->_impressionIdentifier;
      v7->_impressionIdentifier = impressionIdentifierData;
    }

    v7->_impressionCount = [dataCopy impressionCount];
    if ([dataCopy hasAdTagContentString])
    {
      adTagContentString = [dataCopy adTagContentString];
      v15 = [adTagContentString length] == 0;
    }

    else
    {
      v15 = 1;
    }

    if ([dataCopy hasMediaFiles])
    {
      mediaFiles = [dataCopy mediaFiles];
      v17 = [mediaFiles mediaAssetsCount] == 0;

      if (!type && !v17 && !v15)
      {
        v18 = 8;
LABEL_26:
        *(&v7->super.isa + v18) = 1;
        goto LABEL_27;
      }
    }

    switch(type)
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

    if (type)
    {
      if (type == 7)
      {
        v18 = 12;
        goto LABEL_26;
      }
    }

    else if ([dataCopy adLayoutDatasCount])
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
  delegate = [(APContentDataPrivate *)self delegate];
  [delegate privateDataDidChange];
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