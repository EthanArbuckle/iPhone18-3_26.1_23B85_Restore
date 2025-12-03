@interface APContentDataTransient
- ($F24F406B2B787EFB06265DBA3D28CBD5)clickLocation;
- (APContentDataTransient)init;
- (APContentDataTransient)initWithCoder:(id)coder;
- (APContentDataTransientDelegate)delegate;
- (void)encodeWithCoder:(id)coder;
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

- (APContentDataTransient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = APContentDataTransient;
  v5 = [(APContentDataTransient *)&v31 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_lastStatusCode = [coderCopy decodeInt32ForKey:@"lastStatusCode"];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sentStatusCodes"];
    sentStatusCodes = v5->_sentStatusCodes;
    v5->_sentStatusCodes = v10;

    [coderCopy decodeDoubleForKey:@"accumulatedVisibilityTime"];
    v5->_accumulatedVisibilityTime = v12;
    [coderCopy decodeDoubleForKey:@"accumulated50PercentVisibilityTime"];
    v5->_accumulated50PercentVisibilityTime = v13;
    [coderCopy decodeDoubleForKey:@"carouselVisibleTime"];
    v5->_carouselVisibleTime = v14;
    [coderCopy decodeDoubleForKey:@"carousel50PercentVisibleTime"];
    v5->_carousel50PercentVisibleTime = v15;
    v5->_carouselFinishedSent = [coderCopy decodeBoolForKey:@"carouselFinishedSent"];
    [coderCopy decodeDoubleForKey:@"lastSentEventTime"];
    v5->_lastSentEventTime = v16;
    [coderCopy decodeDoubleForKey:@"accumulatedPlaybackTime"];
    v5->_accumulatedPlaybackTime = v17;
    [coderCopy decodeDoubleForKey:@"lastPlaybackTimestamp"];
    v5->_lastPlaybackTimestamp = v18;
    v5->_playbackInProgress = [coderCopy decodeBoolForKey:@"playbackInProgress"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v19;
    v5->_hasBeenOnScreen = [coderCopy decodeBoolForKey:@"hasBeenOnScreen"];
    v5->_interfaceReady = [coderCopy decodeBoolForKey:@"interfaceReady"];
    v5->_interfaceReplaced = [coderCopy decodeBoolForKey:@"interfaceReplaced"];
    v5->_wasFullyVisible = [coderCopy decodeBoolForKey:@"wasFullyVisible"];
    v5->_discarded = [coderCopy decodeBoolForKey:@"discarded"];
    v5->_hasConfirmedImpression = [coderCopy decodeBoolForKey:@"hasConfirmedImpression"];
    v5->_hasConfirmed50PercentImpression = [coderCopy decodeBoolForKey:@"hasConfirmed50PercentImpression"];
    v5->_hasConfirmedClick = [coderCopy decodeBoolForKey:@"hasConfirmedClick"];
    [coderCopy decodeDoubleForKey:@"lastPosition"];
    v5->_lastPosition = v20;
    v5->_clickedCarouselElement = [coderCopy decodeInt32ForKey:@"clickedCarouselElement"];
    v5->_clickCount = [coderCopy decodeInt32ForKey:@"clickCount"];
    [coderCopy decodeDoubleForKey:@"clickLocationX"];
    v5->_clickLocation.x = v21;
    [coderCopy decodeDoubleForKey:@"clickLocationY"];
    v5->_clickLocation.y = v22;
    [coderCopy decodeDoubleForKey:@"clickTime"];
    v5->_clickTime = v23;
    v5->_impressionSequenceNumber = [coderCopy decodeInt32ForKey:@"impressionSequenceNumber"];
    v5->_videoEventSequence = [coderCopy decodeInt32ForKey:@"videoEventSequence"];
    v5->_videoUnloadedSent = [coderCopy decodeBoolForKey:@"videoUnloadedSent"];
    [coderCopy decodeDoubleForKey:@"volume"];
    v5->_volume = v24;
    v25 = [coderCopy decodeObjectOfClasses:v9 forKey:@"carouselElementsVisible"];
    carouselElementsVisible = v5->_carouselElementsVisible;
    v5->_carouselElementsVisible = v25;

    v27 = [coderCopy decodeObjectOfClasses:v9 forKey:@"carouselElementsPartiallyVisible"];
    carouselElementsPartiallyVisible = v5->_carouselElementsPartiallyVisible;
    v5->_carouselElementsPartiallyVisible = v27;

    v5->_pendingConfirmedClick = [coderCopy decodeBoolForKey:@"pendingConfirmedClick"];
    [coderCopy decodeDoubleForKey:@"timeSpent"];
    v5->_timeSpent = v29;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[APContentDataTransient lastStatusCode](self forKey:{"lastStatusCode"), @"lastStatusCode"}];
  sentStatusCodes = [(APContentDataTransient *)self sentStatusCodes];
  [coderCopy encodeObject:sentStatusCodes forKey:@"sentStatusCodes"];

  [(APContentDataTransient *)self accumulatedVisibilityTime];
  [coderCopy encodeDouble:@"accumulatedVisibilityTime" forKey:?];
  [(APContentDataTransient *)self accumulated50PercentVisibilityTime];
  [coderCopy encodeDouble:@"accumulated50PercentVisibilityTime" forKey:?];
  [(APContentDataTransient *)self carouselVisibleTime];
  [coderCopy encodeDouble:@"carouselVisibleTime" forKey:?];
  [(APContentDataTransient *)self carousel50PercentVisibleTime];
  [coderCopy encodeDouble:@"carousel50PercentVisibleTime" forKey:?];
  [coderCopy encodeBool:-[APContentDataTransient carouselFinishedSent](self forKey:{"carouselFinishedSent"), @"carouselFinishedSent"}];
  [(APContentDataTransient *)self lastSentEventTime];
  [coderCopy encodeDouble:@"lastSentEventTime" forKey:?];
  [(APContentDataTransient *)self accumulatedPlaybackTime];
  [coderCopy encodeDouble:@"accumulatedPlaybackTime" forKey:?];
  [(APContentDataTransient *)self lastPlaybackTimestamp];
  [coderCopy encodeDouble:@"lastPlaybackTimestamp" forKey:?];
  [coderCopy encodeBool:-[APContentDataTransient playbackInProgress](self forKey:{"playbackInProgress"), @"playbackInProgress"}];
  [(APContentDataTransient *)self duration];
  [coderCopy encodeDouble:@"duration" forKey:?];
  [coderCopy encodeBool:-[APContentDataTransient hasBeenOnScreen](self forKey:{"hasBeenOnScreen"), @"hasBeenOnScreen"}];
  [coderCopy encodeBool:-[APContentDataTransient interfaceReady](self forKey:{"interfaceReady"), @"interfaceReady"}];
  [coderCopy encodeBool:-[APContentDataTransient wasFullyVisible](self forKey:{"wasFullyVisible"), @"wasFullyVisible"}];
  [coderCopy encodeBool:-[APContentDataTransient interfaceReplaced](self forKey:{"interfaceReplaced"), @"interfaceReplaced"}];
  [coderCopy encodeBool:-[APContentDataTransient discarded](self forKey:{"discarded"), @"discarded"}];
  [coderCopy encodeBool:-[APContentDataTransient hasConfirmedImpression](self forKey:{"hasConfirmedImpression"), @"hasConfirmedImpression"}];
  [coderCopy encodeBool:-[APContentDataTransient hasConfirmed50PercentImpression](self forKey:{"hasConfirmed50PercentImpression"), @"hasConfirmed50PercentImpression"}];
  [coderCopy encodeBool:-[APContentDataTransient hasConfirmedClick](self forKey:{"hasConfirmedClick"), @"hasConfirmedClick"}];
  [(APContentDataTransient *)self lastPosition];
  [coderCopy encodeDouble:@"lastPosition" forKey:?];
  [coderCopy encodeInt32:-[APContentDataTransient clickedCarouselElement](self forKey:{"clickedCarouselElement"), @"clickedCarouselElement"}];
  [coderCopy encodeInt32:-[APContentDataTransient clickCount](self forKey:{"clickCount"), @"clickCount"}];
  [(APContentDataTransient *)self clickLocation];
  [coderCopy encodeDouble:@"clickLocationX" forKey:?];
  [(APContentDataTransient *)self clickLocation];
  [coderCopy encodeDouble:@"clickLocationY" forKey:v5];
  [(APContentDataTransient *)self clickTime];
  [coderCopy encodeDouble:@"clickTime" forKey:?];
  [coderCopy encodeInt32:-[APContentDataTransient impressionSequenceNumber](self forKey:{"impressionSequenceNumber"), @"impressionSequenceNumber"}];
  [coderCopy encodeInt32:-[APContentDataTransient videoEventSequence](self forKey:{"videoEventSequence"), @"videoEventSequence"}];
  [coderCopy encodeBool:-[APContentDataTransient videoUnloadedSent](self forKey:{"videoUnloadedSent"), @"videoUnloadedSent"}];
  [(APContentDataTransient *)self volume];
  [coderCopy encodeDouble:@"volume" forKey:?];
  carouselElementsVisible = [(APContentDataTransient *)self carouselElementsVisible];
  [coderCopy encodeObject:carouselElementsVisible forKey:@"carouselElementsVisible"];

  carouselElementsPartiallyVisible = [(APContentDataTransient *)self carouselElementsPartiallyVisible];
  [coderCopy encodeObject:carouselElementsPartiallyVisible forKey:@"carouselElementsPartiallyVisible"];

  [coderCopy encodeBool:-[APContentDataTransient pendingConfirmedClick](self forKey:{"pendingConfirmedClick"), @"pendingConfirmedClick"}];
  [(APContentDataTransient *)self timeSpent];
  [coderCopy encodeDouble:@"timeSpent" forKey:?];
}

- (void)save
{
  delegate = [(APContentDataTransient *)self delegate];
  [delegate transientDataDidChange];
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