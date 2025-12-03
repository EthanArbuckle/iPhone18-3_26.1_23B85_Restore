@interface NMRNowPlayingApplicationInfo
- (NMRNowPlayingApplicationInfo)init;
- (NMRNowPlayingApplicationInfo)initWithProtobufData:(id)data;
- (void)setCompanionBundleIdentifier:(id)identifier;
- (void)setIconDigest:(id)digest;
- (void)setLocalizedDisplayName:(id)name;
- (void)setPlaybackState:(unsigned int)state;
- (void)setWatchBundleIdentifier:(id)identifier;
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

- (void)setCompanionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setCompanionBundleIdentifier:identifierCopy];
  }
}

- (void)setWatchBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setWatchBundleIdentifier:identifierCopy];
  }
}

- (void)setLocalizedDisplayName:(id)name
{
  if (name)
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setLocalizedDisplayName:?];
  }
}

- (void)setPlaybackState:(unsigned int)state
{
  if (state)
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setPlaybackState:?];
  }
}

- (void)setIconDigest:(id)digest
{
  digestCopy = digest;
  if ([digestCopy length])
  {
    [(_NMRNowPlayingApplicationStateProtobuf *)self->_protobuf setIconDigest:digestCopy];
  }
}

- (NMRNowPlayingApplicationInfo)initWithProtobufData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = NMRNowPlayingApplicationInfo;
  v5 = [(NMRNowPlayingApplicationInfo *)&v11 init];
  if (v5)
  {
    v6 = [[_NMRNowPlayingApplicationStateProtobuf alloc] initWithData:dataCopy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    if ([(_NMRNowPlayingApplicationStateProtobuf *)v5->_protobuf hasProcessID])
    {
      processID = [(_NMRNowPlayingApplicationStateProtobuf *)v5->_protobuf processID];
    }

    else
    {
      processID = [objc_opt_class() _getNextPlaceholderProcessID];
    }

    v5->_processID = processID;
    v9 = v5;
  }

  return v5;
}

@end