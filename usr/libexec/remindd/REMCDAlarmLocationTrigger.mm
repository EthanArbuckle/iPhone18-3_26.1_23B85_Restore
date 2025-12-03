@interface REMCDAlarmLocationTrigger
- (id)modelObject;
@end

@implementation REMCDAlarmLocationTrigger

- (id)modelObject
{
  v3 = objc_alloc_init(REMStructuredLocation);
  title = [(REMCDAlarmLocationTrigger *)self title];
  [v3 setTitle:title];

  [(REMCDAlarmLocationTrigger *)self latitude];
  [v3 setLatitude:?];
  [(REMCDAlarmLocationTrigger *)self longitude];
  [v3 setLongitude:?];
  [(REMCDAlarmLocationTrigger *)self radius];
  [v3 setRadius:?];
  referenceFrameString = [(REMCDAlarmLocationTrigger *)self referenceFrameString];
  [v3 setReferenceFrameString:referenceFrameString];

  v6 = [[REMAlarmLocationTrigger alloc] initWithStructuredLocation:v3 proximity:{-[REMCDAlarmLocationTrigger proximity](self, "proximity")}];

  return v6;
}

@end