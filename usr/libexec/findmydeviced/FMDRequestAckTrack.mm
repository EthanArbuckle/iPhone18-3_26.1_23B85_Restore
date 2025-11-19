@interface FMDRequestAckTrack
- (BOOL)canReplace:(id)a3;
- (FMDRequestAckTrack)initWithAccount:(id)a3 trackCommand:(id)a4 ackURL:(id)a5;
- (id)requestBody;
@end

@implementation FMDRequestAckTrack

- (FMDRequestAckTrack)initWithAccount:(id)a3 trackCommand:(id)a4 ackURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FMDRequestAckTrack;
  v11 = [(FMDRequest *)&v14 initWithAccount:v8];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestAckTrack *)v11 setAccount:v8];
    [(FMDRequestAckTrack *)v12 setTrackCommand:v9];
    [(FMDRequestAckTrack *)v12 setAckURL:v10];
  }

  return v12;
}

- (id)requestBody
{
  v11.receiver = self;
  v11.super_class = FMDRequestAckTrack;
  v3 = [(FMDRequest *)&v11 requestBody];
  v4 = objc_alloc_init(FMDActingRequestDecorator);
  v5 = [(FMDActingRequestDecorator *)v4 standardDeviceContext];

  [v3 fm_safelyMapKey:@"deviceContext" toObject:v5];
  v6 = +[ServerDeviceInfo sharedInstance];
  v7 = [(FMDRequestAckTrack *)self account];
  v8 = [v6 deviceInfoForAccount:v7];
  [v3 fm_safelyMapKey:@"deviceInfo" toObject:v8];

  [v3 setObject:&off_1002E7A20 forKeyedSubscript:@"statusCode"];
  v9 = [(FMDRequestAckTrack *)self trackCommand];
  [v3 setObject:v9 forKeyedSubscript:@"cmdContext"];

  return v3;
}

- (BOOL)canReplace:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(FMDRequestAckTrack *)self trackCommand];
      v7 = [v6 objectForKeyedSubscript:@"id"];
      v8 = [v5 trackCommand];
      v9 = [v8 objectForKeyedSubscript:@"id"];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end