@interface APContentDataTransient
- ($F24F406B2B787EFB06265DBA3D28CBD5)clickLocation;
- (APContentDataTransient)init;
- (APContentDataTransient)initWithCoder:(id)a3;
- (APContentDataTransientDelegate)delegate;
- (void)encodeWithCoder:(id)a3;
- (void)save;
@end

@implementation APContentDataTransient

- (APContentDataTransient)init
{
  v7.receiver = self;
  v7.super_class = APContentDataTransient;
  v2 = [(APContentDataTransient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastStatusCode = -1337;
    v2->_interfaceReady = 0;
    v2->_volume = -1.0;
    v2->_videoEventSequence = -1;
    v4 = objc_alloc_init(NSMutableOrderedSet);
    sentStatusCodes = v3->_sentStatusCodes;
    v3->_sentStatusCodes = v4;
  }

  return v3;
}

- (APContentDataTransient)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = APContentDataTransient;
  v5 = [(APContentDataTransient *)&v31 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_lastStatusCode = [v4 decodeInt32ForKey:@"lastStatusCode"];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sentStatusCodes"];
    sentStatusCodes = v5->_sentStatusCodes;
    v5->_sentStatusCodes = v10;

    [v4 decodeDoubleForKey:@"accumulatedVisibilityTime"];
    v5->_accumulatedVisibilityTime = v12;
    [v4 decodeDoubleForKey:@"accumulated50PercentVisibilityTime"];
    v5->_accumulated50PercentVisibilityTime = v13;
    [v4 decodeDoubleForKey:@"carouselVisibleTime"];
    v5->_carouselVisibleTime = v14;
    [v4 decodeDoubleForKey:@"carousel50PercentVisibleTime"];
    v5->_carousel50PercentVisibleTime = v15;
    v5->_carouselFinishedSent = [v4 decodeBoolForKey:@"carouselFinishedSent"];
    [v4 decodeDoubleForKey:@"lastSentEventTime"];
    v5->_lastSentEventTime = v16;
    [v4 decodeDoubleForKey:@"accumulatedPlaybackTime"];
    v5->_accumulatedPlaybackTime = v17;
    [v4 decodeDoubleForKey:@"lastPlaybackTimestamp"];
    v5->_lastPlaybackTimestamp = v18;
    v5->_playbackInProgress = [v4 decodeBoolForKey:@"playbackInProgress"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v19;
    v5->_hasBeenOnScreen = [v4 decodeBoolForKey:@"hasBeenOnScreen"];
    v5->_interfaceReady = [v4 decodeBoolForKey:@"interfaceReady"];
    v5->_interfaceReplaced = [v4 decodeBoolForKey:@"interfaceReplaced"];
    v5->_wasFullyVisible = [v4 decodeBoolForKey:@"wasFullyVisible"];
    v5->_discarded = [v4 decodeBoolForKey:@"discarded"];
    v5->_hasConfirmedImpression = [v4 decodeBoolForKey:@"hasConfirmedImpression"];
    v5->_hasConfirmed50PercentImpression = [v4 decodeBoolForKey:@"hasConfirmed50PercentImpression"];
    v5->_hasConfirmedClick = [v4 decodeBoolForKey:@"hasConfirmedClick"];
    [v4 decodeDoubleForKey:@"lastPosition"];
    v5->_lastPosition = v20;
    v5->_clickedCarouselElement = [v4 decodeInt32ForKey:@"clickedCarouselElement"];
    v5->_clickCount = [v4 decodeInt32ForKey:@"clickCount"];
    [v4 decodeDoubleForKey:@"clickLocationX"];
    v5->_clickLocation.x = v21;
    [v4 decodeDoubleForKey:@"clickLocationY"];
    v5->_clickLocation.y = v22;
    [v4 decodeDoubleForKey:@"clickTime"];
    v5->_clickTime = v23;
    v5->_impressionSequenceNumber = [v4 decodeInt32ForKey:@"impressionSequenceNumber"];
    v5->_videoEventSequence = [v4 decodeInt32ForKey:@"videoEventSequence"];
    v5->_videoUnloadedSent = [v4 decodeBoolForKey:@"videoUnloadedSent"];
    [v4 decodeDoubleForKey:@"volume"];
    v5->_volume = v24;
    v25 = [v4 decodeObjectOfClasses:v9 forKey:@"carouselElementsVisible"];
    carouselElementsVisible = v5->_carouselElementsVisible;
    v5->_carouselElementsVisible = v25;

    v27 = [v4 decodeObjectOfClasses:v9 forKey:@"carouselElementsPartiallyVisible"];
    carouselElementsPartiallyVisible = v5->_carouselElementsPartiallyVisible;
    v5->_carouselElementsPartiallyVisible = v27;

    v5->_pendingConfirmedClick = [v4 decodeBoolForKey:@"pendingConfirmedClick"];
    [v4 decodeDoubleForKey:@"timeSpent"];
    v5->_timeSpent = v29;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInt32:-[APContentDataTransient lastStatusCode](self forKey:{"lastStatusCode"), @"lastStatusCode"}];
  v4 = [(APContentDataTransient *)self sentStatusCodes];
  [v8 encodeObject:v4 forKey:@"sentStatusCodes"];

  [(APContentDataTransient *)self accumulatedVisibilityTime];
  [v8 encodeDouble:@"accumulatedVisibilityTime" forKey:?];
  [(APContentDataTransient *)self accumulated50PercentVisibilityTime];
  [v8 encodeDouble:@"accumulated50PercentVisibilityTime" forKey:?];
  [(APContentDataTransient *)self carouselVisibleTime];
  [v8 encodeDouble:@"carouselVisibleTime" forKey:?];
  [(APContentDataTransient *)self carousel50PercentVisibleTime];
  [v8 encodeDouble:@"carousel50PercentVisibleTime" forKey:?];
  [v8 encodeBool:-[APContentDataTransient carouselFinishedSent](self forKey:{"carouselFinishedSent"), @"carouselFinishedSent"}];
  [(APContentDataTransient *)self lastSentEventTime];
  [v8 encodeDouble:@"lastSentEventTime" forKey:?];
  [(APContentDataTransient *)self accumulatedPlaybackTime];
  [v8 encodeDouble:@"accumulatedPlaybackTime" forKey:?];
  [(APContentDataTransient *)self lastPlaybackTimestamp];
  [v8 encodeDouble:@"lastPlaybackTimestamp" forKey:?];
  [v8 encodeBool:-[APContentDataTransient playbackInProgress](self forKey:{"playbackInProgress"), @"playbackInProgress"}];
  [(APContentDataTransient *)self duration];
  [v8 encodeDouble:@"duration" forKey:?];
  [v8 encodeBool:-[APContentDataTransient hasBeenOnScreen](self forKey:{"hasBeenOnScreen"), @"hasBeenOnScreen"}];
  [v8 encodeBool:-[APContentDataTransient interfaceReady](self forKey:{"interfaceReady"), @"interfaceReady"}];
  [v8 encodeBool:-[APContentDataTransient wasFullyVisible](self forKey:{"wasFullyVisible"), @"wasFullyVisible"}];
  [v8 encodeBool:-[APContentDataTransient interfaceReplaced](self forKey:{"interfaceReplaced"), @"interfaceReplaced"}];
  [v8 encodeBool:-[APContentDataTransient discarded](self forKey:{"discarded"), @"discarded"}];
  [v8 encodeBool:-[APContentDataTransient hasConfirmedImpression](self forKey:{"hasConfirmedImpression"), @"hasConfirmedImpression"}];
  [v8 encodeBool:-[APContentDataTransient hasConfirmed50PercentImpression](self forKey:{"hasConfirmed50PercentImpression"), @"hasConfirmed50PercentImpression"}];
  [v8 encodeBool:-[APContentDataTransient hasConfirmedClick](self forKey:{"hasConfirmedClick"), @"hasConfirmedClick"}];
  [(APContentDataTransient *)self lastPosition];
  [v8 encodeDouble:@"lastPosition" forKey:?];
  [v8 encodeInt32:-[APContentDataTransient clickedCarouselElement](self forKey:{"clickedCarouselElement"), @"clickedCarouselElement"}];
  [v8 encodeInt32:-[APContentDataTransient clickCount](self forKey:{"clickCount"), @"clickCount"}];
  [(APContentDataTransient *)self clickLocation];
  [v8 encodeDouble:@"clickLocationX" forKey:?];
  [(APContentDataTransient *)self clickLocation];
  [v8 encodeDouble:@"clickLocationY" forKey:v5];
  [(APContentDataTransient *)self clickTime];
  [v8 encodeDouble:@"clickTime" forKey:?];
  [v8 encodeInt32:-[APContentDataTransient impressionSequenceNumber](self forKey:{"impressionSequenceNumber"), @"impressionSequenceNumber"}];
  [v8 encodeInt32:-[APContentDataTransient videoEventSequence](self forKey:{"videoEventSequence"), @"videoEventSequence"}];
  [v8 encodeBool:-[APContentDataTransient videoUnloadedSent](self forKey:{"videoUnloadedSent"), @"videoUnloadedSent"}];
  [(APContentDataTransient *)self volume];
  [v8 encodeDouble:@"volume" forKey:?];
  v6 = [(APContentDataTransient *)self carouselElementsVisible];
  [v8 encodeObject:v6 forKey:@"carouselElementsVisible"];

  v7 = [(APContentDataTransient *)self carouselElementsPartiallyVisible];
  [v8 encodeObject:v7 forKey:@"carouselElementsPartiallyVisible"];

  [v8 encodeBool:-[APContentDataTransient pendingConfirmedClick](self forKey:{"pendingConfirmedClick"), @"pendingConfirmedClick"}];
  [(APContentDataTransient *)self timeSpent];
  [v8 encodeDouble:@"timeSpent" forKey:?];
}

- (void)save
{
  v2 = [(APContentDataTransient *)self delegate];
  [v2 transientDataDidChange];
}

- (APContentDataTransientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)clickLocation
{
  objc_copyStruct(v4, &self->_clickLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end