@interface NEKReminderChangeTrackingState
- (NEKReminderChangeTrackingState)initWithChangeTracking:(id)a3 lastChangeToken:(id)a4;
- (id)description;
@end

@implementation NEKReminderChangeTrackingState

- (NEKReminderChangeTrackingState)initWithChangeTracking:(id)a3 lastChangeToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NEKReminderChangeTrackingState;
  v8 = [(NEKReminderChangeTrackingState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NEKReminderChangeTrackingState *)v8 setChangeTracking:v6];
    [(NEKReminderChangeTrackingState *)v9 setLastChangeToken:v7];
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(NEKReminderChangeTrackingState *)self changeTracking];
  v5 = [(NEKReminderChangeTrackingState *)self lastChangeToken];
  v6 = [NSString stringWithFormat:@"<%@: %p: %@, %@>", v3, self, v4, v5];

  return v6;
}

@end