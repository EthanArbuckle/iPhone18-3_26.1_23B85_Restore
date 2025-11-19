@interface NMRNowPlayingApplicationInfo
- (NMRNowPlayingApplicationInfo)init;
- (NMRNowPlayingApplicationInfo)initWithProtobufData:(id)a3;
- (void)setCompanionBundleIdentifier:(id)a3;
- (void)setIconDigest:(id)a3;
- (void)setLocalizedDisplayName:(id)a3;
- (void)setPlaybackState:(unsigned int)a3;
- (void)setWatchBundleIdentifier:(id)a3;
@end

@implementation NMRNowPlayingApplicationInfo

- (NMRNowPlayingApplicationInfo)init
{
  v7.receiver = self;
  v7.super_class = NMRNowPlayingApplicationInfo;
  v2 = [(NMRNowPlayingApplicationInfo *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    protobuf = v2->_protobuf;
    v2->_protobuf = v3;

    v5 = v2;
  }

  return v2;
}

- (void)setCompanionBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setCompanionBundleIdentifier:v4];
  }
}

- (void)setWatchBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setWatchBundleIdentifier:v4];
  }
}

- (void)setLocalizedDisplayName:(id)a3
{
  if (a3)
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setLocalizedDisplayName:?];
  }
}

- (void)setPlaybackState:(unsigned int)a3
{
  if (a3)
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setPlaybackState:?];
  }
}

- (void)setIconDigest:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setIconDigest:v4];
  }
}

- (NMRNowPlayingApplicationInfo)initWithProtobufData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NMRNowPlayingApplicationInfo;
  v5 = [(NMRNowPlayingApplicationInfo *)&v11 init];
  if (v5)
  {
    v6 = [[_NMRNowPlayingApplicationStateProtobuf alloc] initWithData:v4];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    if ([(_NMRNowPlayingApplicationStateProtobuf *)v5->_protobuf hasProcessID])
    {
      v8 = [(_NMRNowPlayingApplicationStateProtobuf *)v5->_protobuf processID];
    }

    else
    {
      v8 = [objc_opt_class() _getNextPlaceholderProcessID];
    }

    v5->_processID = v8;
    v9 = v5;
  }

  return v5;
}

@end