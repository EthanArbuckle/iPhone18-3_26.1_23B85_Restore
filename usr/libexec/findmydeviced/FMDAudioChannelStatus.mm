@interface FMDAudioChannelStatus
- (FMDAudioChannelStatus)initWithCoder:(id)a3;
- (FMDAudioChannelStatus)initWithConfiguration:(id)a3;
- (FMDAudioChannelStatus)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryValue;
- (NSNumber)muted;
- (NSNumber)playingSound;
- (NSString)description;
- (unint64_t)availability;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDAudioChannelStatus

- (FMDAudioChannelStatus)initWithConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMDAudioChannelStatus;
  v5 = [(FMDBLEBeacon *)&v8 initWithConfiguration:v4];
  if (v5)
  {
    v6 = [v4 name];
    [(FMDAudioChannelStatus *)v5 setChannelName:v6];

    -[FMDAudioChannelStatus setInEar:](v5, "setInEar:", [v4 inEarStatus]);
    -[FMDAudioChannelStatus setOnHeadStatus:](v5, "setOnHeadStatus:", [v4 onHeadStatus]);
    -[FMDAudioChannelStatus setInCase:](v5, "setInCase:", [v4 inCaseStatus]);
    -[FMDAudioChannelStatus setLidClosed:](v5, "setLidClosed:", [v4 lidClosedStatus]);
    -[FMDAudioChannelStatus setAvailability:](v5, "setAvailability:", [v4 availability]);
    -[FMDAudioChannelStatus setAudioState:](v5, "setAudioState:", [v4 audioStateStatus]);
  }

  return v5;
}

- (FMDAudioChannelStatus)initWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = FMDAudioChannelStatus;
  return [(FMDBLEBeacon *)&v4 init];
}

- (FMDAudioChannelStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDAudioChannelStatus;
  v5 = [(FMDBLEBeacon *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("channelName");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDAudioChannelStatus *)v5 setChannelName:v8];
  }

  return v5;
}

- (unint64_t)availability
{
  if ([(FMDBLEBeacon *)self active])
  {
    return self->_availability;
  }

  else
  {
    return 0;
  }
}

- (NSNumber)playingSound
{
  playingSound = self->_playingSound;
  if (playingSound && [(NSNumber *)playingSound BOOLValue]&& [(FMDAudioChannelStatus *)self availability]== 1)
  {
    v4 = self->_playingSound;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  return v4;
}

- (NSNumber)muted
{
  playingSound = self->_playingSound;
  if (playingSound)
  {
    v4 = [NSNumber numberWithBool:[(NSNumber *)playingSound BOOLValue]^ 1];
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  return v4;
}

- (NSDictionary)dictionaryValue
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDAudioChannelStatus *)self playingSound];
  [v3 fm_safelySetObject:v4 forKey:@"playing"];

  v5 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self availability]];
  [v3 fm_safelySetObject:v5 forKey:@"available"];

  v6 = [(FMDAudioChannelStatus *)self channelName];
  [v3 fm_safelySetObject:v6 forKey:@"name"];

  v7 = [(FMDAudioChannelStatus *)self muted];
  [v3 fm_safeSetObject:v7 forKey:@"muted"];

  v8 = +[FMSystemInfo sharedInstance];
  if ([v8 isInternalBuild])
  {
    v9 = [FMPreferencesUtil BOOLForKey:@"DebugBeaconInfo" inDomain:kFMDNotBackedUpPrefDomain];

    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = [NSNumber numberWithBool:[(FMDBLEBeacon *)self primary]];
    [v3 fm_safelySetObject:v10 forKey:@"primary"];

    v11 = [NSNumber numberWithBool:[(FMDBLEBeacon *)self utpConnected]];
    [v3 fm_safelySetObject:v11 forKey:@"utpConnected"];

    v12 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self inEar]];
    [v3 fm_safelySetObject:v12 forKey:@"In Ear"];

    v13 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self onHeadStatus]];
    [v3 fm_safelySetObject:v13 forKey:@"On Head"];

    v14 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self inCase]];
    [v3 fm_safelySetObject:v14 forKey:@"In Case"];

    v8 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self lidClosed]];
    [v3 fm_safelySetObject:v8 forKey:@"Lid Closed"];
  }

LABEL_5:

  return v3;
}

- (NSString)description
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:[(FMDBLEBeacon *)self primary]];
  [v3 fm_safelySetObject:v4 forKey:@"primary"];

  v5 = [NSNumber numberWithBool:[(FMDBLEBeacon *)self utpConnected]];
  [v3 fm_safelySetObject:v5 forKey:@"utpConnected"];

  v6 = [(FMDAudioChannelStatus *)self playingSound];
  [v3 fm_safelySetObject:v6 forKey:@"playing"];

  v7 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self availability]];
  [v3 fm_safelySetObject:v7 forKey:@"available"];

  v8 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self inEar]];
  [v3 fm_safelySetObject:v8 forKey:@"In Ear"];

  v9 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self onHeadStatus]];
  [v3 fm_safelySetObject:v9 forKey:@"On Head"];

  v10 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self inCase]];
  [v3 fm_safelySetObject:v10 forKey:@"In Case"];

  v11 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self lidClosed]];
  [v3 fm_safelySetObject:v11 forKey:@"Lid Closed"];

  v12 = [(FMDAudioChannelStatus *)self channelName];
  [v3 fm_safelySetObject:v12 forKey:@"name"];

  v13 = [v3 description];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(FMDAudioChannelStatus *)self channelName];
  v5 = NSStringFromSelector("channelName");
  [v4 encodeObject:v6 forKey:v5];
}

@end