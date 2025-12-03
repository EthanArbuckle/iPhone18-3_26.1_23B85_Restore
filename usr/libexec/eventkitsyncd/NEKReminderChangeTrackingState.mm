@interface NEKReminderChangeTrackingState
- (NEKReminderChangeTrackingState)initWithChangeTracking:(id)tracking lastChangeToken:(id)token;
- (id)description;
@end

@implementation NEKReminderChangeTrackingState

- (NEKReminderChangeTrackingState)initWithChangeTracking:(id)tracking lastChangeToken:(id)token
{
  trackingCopy = tracking;
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = NEKReminderChangeTrackingState;
  v8 = [(NEKReminderChangeTrackingState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NEKReminderChangeTrackingState *)v8 setChangeTracking:trackingCopy];
    [(NEKReminderChangeTrackingState *)v9 setLastChangeToken:tokenCopy];
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  changeTracking = [(NEKReminderChangeTrackingState *)self changeTracking];
  lastChangeToken = [(NEKReminderChangeTrackingState *)self lastChangeToken];
  v6 = [NSString stringWithFormat:@"<%@: %p: %@, %@>", v3, self, changeTracking, lastChangeToken];

  return v6;
}

@end