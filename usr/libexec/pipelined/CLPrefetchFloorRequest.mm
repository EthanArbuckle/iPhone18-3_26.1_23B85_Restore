@interface CLPrefetchFloorRequest
+ (id)prefetchRequestForFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant locationContext:(int64_t)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (CLPrefetchFloorRequest)initWithCoder:(id)coder;
- (CLPrefetchFloorRequest)initWithFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant hasCompleteFloor:(BOOL)completeFloor allowCellularDownload:(BOOL)download locationContext:(int64_t)context ranking:(int64_t)ranking;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLPrefetchFloorRequest

+ (id)prefetchRequestForFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant locationContext:(int64_t)context
{
  floorCopy = floor;
  venueCopy = venue;
  relevantCopy = relevant;
  v12 = [[CLPrefetchFloorRequest alloc] initWithFloor:floorCopy inVenue:venueCopy lastRelevant:relevantCopy locationContext:context];

  return v12;
}

- (CLPrefetchFloorRequest)initWithFloor:(id)floor inVenue:(id)venue lastRelevant:(id)relevant hasCompleteFloor:(BOOL)completeFloor allowCellularDownload:(BOOL)download locationContext:(int64_t)context ranking:(int64_t)ranking
{
  floorCopy = floor;
  venueCopy = venue;
  relevantCopy = relevant;
  v23.receiver = self;
  v23.super_class = CLPrefetchFloorRequest;
  v19 = [(CLPrefetchFloorRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_floorUuid, floor);
    objc_storeStrong(&v20->_venueUuid, venue);
    objc_storeStrong(&v20->_relevancy, relevant);
    v20->_hasCompleteFloor = completeFloor;
    v20->_allowCellularDownload = download;
    v20->_locationContext = context;
    v20->_priority = ranking;
    v21 = v20;
  }

  return v20;
}

- (CLPrefetchFloorRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"floorUuid"];
  if (!v5)
  {
    v5 = [coderCopy decodeObjectForKey:@"floorUuid"];
  }

  v6 = [coderCopy decodeObjectForKey:@"venueUuid"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"mismatch between pipelined/CoreIndoor.framework";
  }

  [coderCopy decodeDoubleForKey:@"relevancy"];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v9 = -[CLPrefetchFloorRequest initWithFloor:inVenue:lastRelevant:hasCompleteFloor:allowCellularDownload:locationContext:priority:](self, "initWithFloor:inVenue:lastRelevant:hasCompleteFloor:allowCellularDownload:locationContext:priority:", v5, v7, v8, [coderCopy decodeBoolForKey:@"hasCompleteFloor"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"allowCellularDownload"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"locationContext"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"priority"));

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_floorUuid forKey:@"floorUuid"];
  [coderCopy encodeObject:self->_floorUuid forKey:@"floorUuid"];
  [coderCopy encodeObject:self->_venueUuid forKey:@"venueUuid"];
  [(NSDate *)self->_relevancy timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"relevancy" forKey:?];
  [coderCopy encodeBool:self->_hasCompleteFloor forKey:@"hasCompleteFloor"];
  [coderCopy encodeBool:self->_allowCellularDownload forKey:@"allowCellularDownload"];
  [coderCopy encodeInteger:self->_locationContext forKey:@"locationContext"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_floorUuid isEqualToString:equalCopy];
  }

  else
  {
    v5 = [(CLPrefetchFloorRequest *)self isEqualToRequest:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqualToRequest:(id)request
{
  floorUuid = self->_floorUuid;
  floorUuid = [request floorUuid];
  LOBYTE(floorUuid) = [(NSString *)floorUuid isEqualToString:floorUuid];

  return floorUuid;
}

@end