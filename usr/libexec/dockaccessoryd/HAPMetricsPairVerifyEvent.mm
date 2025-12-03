@interface HAPMetricsPairVerifyEvent
- (HAPMetricsPairVerifyEvent)initWithAccessory:(id)accessory forLinkType:(id)type durationInMS:(unint64_t)s reason:(id)reason pvError:(id)error;
- (id)description;
- (id)serializedEvent;
@end

@implementation HAPMetricsPairVerifyEvent

- (HAPMetricsPairVerifyEvent)initWithAccessory:(id)accessory forLinkType:(id)type durationInMS:(unint64_t)s reason:(id)reason pvError:(id)error
{
  accessoryCopy = accessory;
  typeCopy = type;
  reasonCopy = reason;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = HAPMetricsPairVerifyEvent;
  v16 = [(DKMLogEvent *)&v20 init];
  if (v16)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v16->_accessoryIdentifier;
    v16->_accessoryIdentifier = identifier;

    objc_storeStrong(&v16->_linkType, type);
    v16->_durationInMS = s;
    objc_storeStrong(&v16->_reason, reason);
    [(DKMLogEvent *)v16 setError:errorCopy];
  }

  return v16;
}

- (id)description
{
  accessoryIdentifier = [(HAPMetricsPairVerifyEvent *)self accessoryIdentifier];
  linkType = [(HAPMetricsPairVerifyEvent *)self linkType];
  durationInMS = [(HAPMetricsPairVerifyEvent *)self durationInMS];
  reason = [(HAPMetricsPairVerifyEvent *)self reason];
  error = [(DKMLogEvent *)self error];
  v8 = [NSString stringWithFormat:@"HAPMetricsPairVerifyEvent - Accessory Identifier: %@, linkType: %@, duration: %lu ms, reason: %@, error: %@", accessoryIdentifier, linkType, durationInMS, reason, error];

  return v8;
}

- (id)serializedEvent
{
  v3 = objc_alloc_init(NSMutableDictionary);
  0x3E8 = [NSNumber numberWithUnsignedInteger:[(HAPMetricsPairVerifyEvent *)self durationInMS]/ 0x3E8];
  [v3 setObject:0x3E8 forKeyedSubscript:@"duration"];

  v5 = [NSNumber numberWithUnsignedInteger:[(HAPMetricsPairVerifyEvent *)self durationInMS]];
  [v3 setObject:v5 forKeyedSubscript:@"durationInMS"];

  linkType = [(HAPMetricsPairVerifyEvent *)self linkType];
  [v3 setObject:linkType forKeyedSubscript:@"linkType"];

  reason = [(HAPMetricsPairVerifyEvent *)self reason];
  [v3 setObject:reason forKeyedSubscript:@"reason"];

  v8 = [v3 copy];

  return v8;
}

@end