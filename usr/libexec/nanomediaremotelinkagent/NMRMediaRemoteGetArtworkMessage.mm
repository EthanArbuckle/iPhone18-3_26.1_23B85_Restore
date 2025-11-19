@interface NMRMediaRemoteGetArtworkMessage
+ (id)messageWithOriginIdentifier:(id)a3;
- (NMRMediaRemoteGetArtworkMessage)initWithProtobufData:(id)a3;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)_initWithOriginIdentifier:(id)a3;
- (id)protobufData;
@end

@implementation NMRMediaRemoteGetArtworkMessage

+ (id)messageWithOriginIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithOriginIdentifier:v4];

  return v5;
}

- (id)_initWithOriginIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NMRMediaRemoteGetArtworkMessage;
  v5 = [(NMRMediaRemoteGetArtworkMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    -[_NMRMediaRemoteGetArtworkMessage setOriginIdentifier:](v5->_protobuf, "setOriginIdentifier:", [v4 intValue]);
  }

  return v5;
}

- (NSDate)serializationDate
{
  if ([(_NMRMediaRemoteGetArtworkMessage *)self->_protobuf hasTimestamp])
  {
    [(_NMRMediaRemoteGetArtworkMessage *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRMediaRemoteGetArtworkMessage *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRMediaRemoteGetArtworkMessage *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NMRMediaRemoteGetArtworkMessage)initWithProtobufData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NMRMediaRemoteGetArtworkMessage;
  v5 = [(NMRMediaRemoteGetArtworkMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRMediaRemoteGetArtworkMessage alloc] initWithData:v4];
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
  [(_NMRMediaRemoteGetArtworkMessage *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRMediaRemoteGetArtworkMessage *)v5 data];
}

@end