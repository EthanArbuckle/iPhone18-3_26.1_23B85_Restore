@interface NMRMediaRemoteGetStateMessage
+ (id)messageWithNowPlayingInfoDigest:(id)a3 applicationInfoDigest:(id)a4 supportedCommandsDigest:(id)a5 playbackQueueDigest:(id)a6 originIdentifier:(id)a7;
- (NMRMediaRemoteGetStateMessage)initWithProtobufData:(id)a3;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)_initWithNowPlayingInfoDigest:(id)a3 applicationInfoDigest:(id)a4 supportedCommandsDigest:(id)a5 playbackQueueDigest:(id)a6 originIdentifier:(id)a7;
- (id)protobufData;
@end

@implementation NMRMediaRemoteGetStateMessage

+ (id)messageWithNowPlayingInfoDigest:(id)a3 applicationInfoDigest:(id)a4 supportedCommandsDigest:(id)a5 playbackQueueDigest:(id)a6 originIdentifier:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithNowPlayingInfoDigest:v16 applicationInfoDigest:v15 supportedCommandsDigest:v14 playbackQueueDigest:v13 originIdentifier:v12];

  return v17;
}

- (id)_initWithNowPlayingInfoDigest:(id)a3 applicationInfoDigest:(id)a4 supportedCommandsDigest:(id)a5 playbackQueueDigest:(id)a6 originIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = NMRMediaRemoteGetStateMessage;
  v17 = [(NMRMediaRemoteGetStateMessage *)&v21 init];
  if (v17)
  {
    v18 = objc_opt_new();
    protobuf = v17->_protobuf;
    v17->_protobuf = v18;

    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setNowPlayingInfoDigest:v12];
    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setApplicationInfoDigest:v13];
    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setSupportedCommandsDigest:v14];
    [(_NMRMediaRemoteGetStateMessageProfobuf *)v17->_protobuf setPlaybackQueueDigest:v15];
    -[_NMRMediaRemoteGetStateMessageProfobuf setOriginIdentifier:](v17->_protobuf, "setOriginIdentifier:", [v16 intValue]);
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

- (NMRMediaRemoteGetStateMessage)initWithProtobufData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NMRMediaRemoteGetStateMessage;
  v5 = [(NMRMediaRemoteGetStateMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRMediaRemoteGetStateMessageProfobuf alloc] initWithData:v4];
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