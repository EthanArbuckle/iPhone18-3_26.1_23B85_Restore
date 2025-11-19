@interface SDHotspotRequestRecord
- (SDHotspotRequestRecord)initWithHotspotDevice:(id)a3 startTime:(id)a4 requestID:(id)a5;
@end

@implementation SDHotspotRequestRecord

- (SDHotspotRequestRecord)initWithHotspotDevice:(id)a3 startTime:(id)a4 requestID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SDHotspotRequestRecord;
  v12 = [(SDHotspotRequestRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_remoteHotspotDevice, a3);
    objc_storeStrong(&v13->_startTime, a4);
    objc_storeStrong(&v13->_requestID, a5);
  }

  return v13;
}

@end