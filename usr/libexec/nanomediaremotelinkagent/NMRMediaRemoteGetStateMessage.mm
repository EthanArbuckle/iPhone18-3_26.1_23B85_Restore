@interface NMRMediaRemoteGetStateMessage
+ (id)messageWithNowPlayingInfoDigest:(id)digest applicationInfoDigest:(id)infoDigest supportedCommandsDigest:(id)commandsDigest playbackQueueDigest:(id)queueDigest originIdentifier:(id)identifier;
- (NMRMediaRemoteGetStateMessage)initWithProtobufData:(id)data;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)_initWithNowPlayingInfoDigest:(id)digest applicationInfoDigest:(id)infoDigest supportedCommandsDigest:(id)commandsDigest playbackQueueDigest:(id)queueDigest originIdentifier:(id)identifier;
- (id)protobufData;
@end

@implementation NMRMediaRemoteGetStateMessage

+ (id)messageWithNowPlayingInfoDigest:(id)digest applicationInfoDigest:(id)infoDigest supportedCommandsDigest:(id)commandsDigest playbackQueueDigest:(id)queueDigest originIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queueDigestCopy = queueDigest;
  commandsDigestCopy = commandsDigest;
  infoDigestCopy = infoDigest;
  digestCopy = digest;
  v17 = [[self alloc] _initWithNowPlayingInfoDigest:digestCopy applicationInfoDigest:infoDigestCopy supportedCommandsDigest:commandsDigestCopy playbackQueueDigest:queueDigestCopy originIdentifier:identifierCopy];

  return v17;
}

- (id)_initWithNowPlayingInfoDigest:(id)digest applicationInfoDigest:(id)infoDigest supportedCommandsDigest:(id)commandsDigest playbackQueueDigest:(id)queueDigest originIdentifier:(id)identifier
{
  digestCopy = digest;
  infoDigestCopy = infoDigest;
  commandsDigestCopy = commandsDigest;
  queueDigestCopy = queueDigest;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = NMRMediaRemoteGetStateMessage;
  v17 = [(NMRMediaRemoteGetStateMessage *)&v21 init];
  if (v17)
  {
    v18 = objc_opt_new();
    protobuf = v17->_protobuf;
    v17->_protobuf = v18;

    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setNowPlayingInfoDigest:digestCopy];
    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setApplicationInfoDigest:infoDigestCopy];
    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setSupportedCommandsDigest:commandsDigestCopy];
    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setPlaybackQueueDigest:queueDigestCopy];
    -[_NMRMediaRemoteGetStateMessageProfobuf setOriginIdentifier:](v17->_protobuf, "setOriginIdentifier:", [identifierCopy intValue]);
  }

  return v17;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRMediaRemoteGetStateMessageProfobuf *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRMediaRemoteGetStateMessageProfobuf *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)serializationDate
{
  if ([(_NMRMediaRemoteGetStateMessageProfobuf *)self->_protobuf hasTimestamp])
  {
    [(_NMRMediaRemoteGetStateMessageProfobuf *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NMRMediaRemoteGetStateMessage)initWithProtobufData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = NMRMediaRemoteGetStateMessage;
  v5 = [(NMRMediaRemoteGetStateMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRMediaRemoteGetStateMessageProfobuf alloc] initWithData:dataCopy];
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
  [(_NMRMediaRemoteGetStateMessageProfobuf *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRMediaRemoteGetStateMessageProfobuf *)v5 data];
}

@end