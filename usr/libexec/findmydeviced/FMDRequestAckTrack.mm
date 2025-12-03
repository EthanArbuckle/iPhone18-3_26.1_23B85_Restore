@interface FMDRequestAckTrack
- (BOOL)canReplace:(id)replace;
- (FMDRequestAckTrack)initWithAccount:(id)account trackCommand:(id)command ackURL:(id)l;
- (id)requestBody;
@end

@implementation FMDRequestAckTrack

- (FMDRequestAckTrack)initWithAccount:(id)account trackCommand:(id)command ackURL:(id)l
{
  accountCopy = account;
  commandCopy = command;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = FMDRequestAckTrack;
  v11 = [(FMDRequest *)&v14 initWithAccount:accountCopy];
  v12 = v11;
  if (v11)
  {
    [(FMDRequestAckTrack *)v11 setAccount:accountCopy];
    [(FMDRequestAckTrack *)v12 setTrackCommand:commandCopy];
    [(FMDRequestAckTrack *)v12 setAckURL:lCopy];
  }

  return v12;
}

- (id)requestBody
{
  v11.receiver = self;
  v11.super_class = FMDRequestAckTrack;
  requestBody = [(FMDRequest *)&v11 requestBody];
  v4 = objc_alloc_init(FMDActingRequestDecorator);
  standardDeviceContext = [(FMDActingRequestDecorator *)v4 standardDeviceContext];

  [requestBody fm_safelyMapKey:@"deviceContext" toObject:standardDeviceContext];
  v6 = +[ServerDeviceInfo sharedInstance];
  account = [(FMDRequestAckTrack *)self account];
  v8 = [v6 deviceInfoForAccount:account];
  [requestBody fm_safelyMapKey:@"deviceInfo" toObject:v8];

  [requestBody setObject:&off_1002E7A20 forKeyedSubscript:@"statusCode"];
  trackCommand = [(FMDRequestAckTrack *)self trackCommand];
  [requestBody setObject:trackCommand forKeyedSubscript:@"cmdContext"];

  return requestBody;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = replaceCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      trackCommand = [(FMDRequestAckTrack *)self trackCommand];
      v7 = [trackCommand objectForKeyedSubscript:@"id"];
      trackCommand2 = [v5 trackCommand];
      v9 = [trackCommand2 objectForKeyedSubscript:@"id"];
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