@interface FMDAudioChannelStatus
- (FMDAudioChannelStatus)initWithCoder:(id)coder;
- (FMDAudioChannelStatus)initWithConfiguration:(id)configuration;
- (FMDAudioChannelStatus)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (NSNumber)muted;
- (NSNumber)playingSound;
- (NSString)description;
- (unint64_t)availability;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDAudioChannelStatus

- (FMDAudioChannelStatus)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = FMDAudioChannelStatus;
  v5 = [(FMDBLEBeacon *)&v8 initWithConfiguration:configurationCopy];
  if (v5)
  {
    name = [configurationCopy name];
    [(FMDAudioChannelStatus *)v5 setChannelName:name];

    -[FMDAudioChannelStatus setInEar:](v5, "setInEar:", [configurationCopy inEarStatus]);
    -[FMDAudioChannelStatus setOnHeadStatus:](v5, "setOnHeadStatus:", [configurationCopy onHeadStatus]);
    -[FMDAudioChannelStatus setInCase:](v5, "setInCase:", [configurationCopy inCaseStatus]);
    -[FMDAudioChannelStatus setLidClosed:](v5, "setLidClosed:", [configurationCopy lidClosedStatus]);
    -[FMDAudioChannelStatus setAvailability:](v5, "setAvailability:", [configurationCopy availability]);
    -[FMDAudioChannelStatus setAudioState:](v5, "setAudioState:", [configurationCopy audioStateStatus]);
  }

  return v5;
}

- (FMDAudioChannelStatus)initWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = FMDAudioChannelStatus;
  return [(FMDBLEBeacon *)&v4 init];
}

- (FMDAudioChannelStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDAudioChannelStatus;
  v5 = [(FMDBLEBeacon *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("channelName");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
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
  playingSound = [(FMDAudioChannelStatus *)self playingSound];
  [v3 fm_safelySetObject:playingSound forKey:@"playing"];

  v5 = [NSNumber numberWithUnsignedInteger:[(FMDAudioChannelStatus *)self availability]];
  [v3 fm_safelySetObject:v5 forKey:@"available"];

  channelName = [(FMDAudioChannelStatus *)self channelName];
  [v3 fm_safelySetObject:channelName forKey:@"name"];

  muted = [(FMDAudioChannelStatus *)self muted];
  [v3 fm_safeSetObject:muted forKey:@"muted"];

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

  playingSound = [(FMDAudioChannelStatus *)self playingSound];
  [v3 fm_safelySetObject:playingSound forKey:@"playing"];

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

  channelName = [(FMDAudioChannelStatus *)self channelName];
  [v3 fm_safelySetObject:channelName forKey:@"name"];

  v13 = [v3 description];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  channelName = [(FMDAudioChannelStatus *)self channelName];
  v5 = NSStringFromSelector("channelName");
  [coderCopy encodeObject:channelName forKey:v5];
}

@end