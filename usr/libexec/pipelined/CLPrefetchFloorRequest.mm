@interface CLPrefetchFloorRequest
+ (id)prefetchRequestForFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 locationContext:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (CLPrefetchFloorRequest)initWithCoder:(id)a3;
- (CLPrefetchFloorRequest)initWithFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 hasCompleteFloor:(BOOL)a6 allowCellularDownload:(BOOL)a7 locationContext:(int64_t)a8 ranking:(int64_t)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLPrefetchFloorRequest

+ (id)prefetchRequestForFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 locationContext:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[CLPrefetchFloorRequest alloc] initWithFloor:v9 inVenue:v10 lastRelevant:v11 locationContext:a6];

  return v12;
}

- (CLPrefetchFloorRequest)initWithFloor:(id)a3 inVenue:(id)a4 lastRelevant:(id)a5 hasCompleteFloor:(BOOL)a6 allowCellularDownload:(BOOL)a7 locationContext:(int64_t)a8 ranking:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v23.receiver = self;
  v23.super_class = CLPrefetchFloorRequest;
  v19 = [(CLPrefetchFloorRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_floorUuid, a3);
    objc_storeStrong(&v20->_venueUuid, a4);
    objc_storeStrong(&v20->_relevancy, a5);
    v20->_hasCompleteFloor = a6;
    v20->_allowCellularDownload = a7;
    v20->_locationContext = a8;
    v20->_priority = a9;
    v21 = v20;
  }

  return v20;
}

- (CLPrefetchFloorRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"floorUuid"];
  if (!v5)
  {
    v5 = [v4 decodeObjectForKey:@"floorUuid"];
  }

  v6 = [v4 decodeObjectForKey:@"venueUuid"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"mismatch between pipelined/CoreIndoor.framework";
  }

  [v4 decodeDoubleForKey:@"relevancy"];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v9 = -[CLPrefetchFloorRequest initWithFloor:inVenue:lastRelevant:hasCompleteFloor:allowCellularDownload:locationContext:priority:](self, "initWithFloor:inVenue:lastRelevant:hasCompleteFloor:allowCellularDownload:locationContext:priority:", v5, v7, v8, [v4 decodeBoolForKey:@"hasCompleteFloor"], objc_msgSend(v4, "decodeBoolForKey:", @"allowCellularDownload"), objc_msgSend(v4, "decodeIntegerForKey:", @"locationContext"), objc_msgSend(v4, "decodeIntegerForKey:", @"priority"));

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_floorUuid forKey:@"floorUuid"];
  [v4 encodeObject:self->_floorUuid forKey:@"floorUuid"];
  [v4 encodeObject:self->_venueUuid forKey:@"venueUuid"];
  [(NSDate *)self->_relevancy timeIntervalSinceReferenceDate];
  [v4 encodeDouble:@"relevancy" forKey:?];
  [v4 encodeBool:self->_hasCompleteFloor forKey:@"hasCompleteFloor"];
  [v4 encodeBool:self->_allowCellularDownload forKey:@"allowCellularDownload"];
  [v4 encodeInteger:self->_locationContext forKey:@"locationContext"];
  [v4 encodeInteger:self->_priority forKey:@"priority"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_floorUuid isEqualToString:v4];
  }

  else
  {
    v5 = [(CLPrefetchFloorRequest *)self isEqualToRequest:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqualToRequest:(id)a3
{
  floorUuid = self->_floorUuid;
  v4 = [a3 floorUuid];
  LOBYTE(floorUuid) = [(NSString *)floorUuid isEqualToString:v4];

  return floorUuid;
}

@end