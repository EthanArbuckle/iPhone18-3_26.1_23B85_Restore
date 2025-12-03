@interface SDHotspotRequestRecord
- (SDHotspotRequestRecord)initWithHotspotDevice:(id)device startTime:(id)time requestID:(id)d;
@end

@implementation SDHotspotRequestRecord

- (SDHotspotRequestRecord)initWithHotspotDevice:(id)device startTime:(id)time requestID:(id)d
{
  deviceCopy = device;
  timeCopy = time;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = SDHotspotRequestRecord;
  v12 = [(SDHotspotRequestRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_remoteHotspotDevice, device);
    objc_storeStrong(&v13->_startTime, time);
    objc_storeStrong(&v13->_requestID, d);
  }

  return v13;
}

@end