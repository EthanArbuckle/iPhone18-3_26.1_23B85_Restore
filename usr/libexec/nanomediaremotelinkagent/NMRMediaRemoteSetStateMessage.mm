@interface NMRMediaRemoteSetStateMessage
+ (id)messageWithNowPlayingInfo:(id)info applicationInfo:(id)applicationInfo supportedCommands:(id)commands playbackQueue:(id)queue originIdentifier:(id)identifier;
- (NMRMediaRemoteSetStateMessage)initWithProtobufData:(id)data;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)_initWithNowPlayingInfo:(id)info applicationInfo:(id)applicationInfo supportedCommands:(id)commands playbackQueue:(id)queue originIdentifier:(id)identifier;
- (id)protobufData;
@end

@implementation NMRMediaRemoteSetStateMessage

- (id)_initWithNowPlayingInfo:(id)info applicationInfo:(id)applicationInfo supportedCommands:(id)commands playbackQueue:(id)queue originIdentifier:(id)identifier
{
  infoCopy = info;
  applicationInfoCopy = applicationInfo;
  commandsCopy = commands;
  queueCopy = queue;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = NMRMediaRemoteSetStateMessage;
  v17 = [(NMRMediaRemoteSetStateMessage *)&v21 init];
  if (v17)
  {
    v18 = objc_opt_new();
    protobuf = v17->_protobuf;
    v17->_protobuf = v18;

    [(_NMRMediaRemoteSetStateMessageProfobuf *)v17->_protobuf setNowPlayingInfo:infoCopy];
    [(_NMRMediaRemoteSetStateMessageProfobuf *)v17->_protobuf setApplicationInfo:applicationInfoCopy];
    [(_NMRMediaRemoteSetStateMessageProfobuf *)v17->_protobuf setSupportedCommands:commandsCopy];
    [(_NMRMediaRemoteSetStateMessageProfobuf *)v17->_protobuf setPlaybackQueue:queueCopy];
    -[_NMRMediaRemoteSetStateMessageProfobuf setOriginIdentifier:](v17->_protobuf, "setOriginIdentifier:", [identifierCopy intValue]);
  }

  return v17;
}

+ (id)messageWithNowPlayingInfo:(id)info applicationInfo:(id)applicationInfo supportedCommands:(id)commands playbackQueue:(id)queue originIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queueCopy = queue;
  commandsCopy = commands;
  applicationInfoCopy = applicationInfo;
  infoCopy = info;
  v17 = [[self alloc] _initWithNowPlayingInfo:infoCopy applicationInfo:applicationInfoCopy supportedCommands:commandsCopy playbackQueue:queueCopy originIdentifier:identifierCopy];

  return v17;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRMediaRemoteSetStateMessageProfobuf *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRMediaRemoteSetStateMessageProfobuf *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)serializationDate
{
  if ([(_NMRMediaRemoteSetStateMessageProfobuf *)self->_protobuf hasTimestamp])
  {
    [(_NMRMediaRemoteSetStateMessageProfobuf *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NMRMediaRemoteSetStateMessage)initWithProtobufData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = NMRMediaRemoteSetStateMessage;
  v5 = [(NMRMediaRemoteSetStateMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRMediaRemoteSetStateMessageProfobuf alloc] initWithData:dataCopy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    v8 = v5;
  }

  return v5;
}

- (id)protobufData
{
  protobuf = self->_protobuf;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  [(_NMRMediaRemoteSetStateMessageProfobuf *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRMediaRemoteSetStateMessageProfobuf *)v5 data];
}

@end