@interface NMRMediaRemoteSetArtworkMessage
+ (id)messageWithJPEGArtwork:(id)artwork originalDigest:(id)digest originIdentifier:(id)identifier;
- (NMRMediaRemoteSetArtworkMessage)initWithProtobufData:(id)data;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)_initWithJPEGArtwork:(id)artwork originalDigest:(id)digest originIdentifier:(id)identifier;
- (id)protobufData;
@end

@implementation NMRMediaRemoteSetArtworkMessage

+ (id)messageWithJPEGArtwork:(id)artwork originalDigest:(id)digest originIdentifier:(id)identifier
{
  identifierCopy = identifier;
  digestCopy = digest;
  artworkCopy = artwork;
  v11 = [[self alloc] _initWithJPEGArtwork:artworkCopy originalDigest:digestCopy originIdentifier:identifierCopy];

  return v11;
}

- (id)_initWithJPEGArtwork:(id)artwork originalDigest:(id)digest originIdentifier:(id)identifier
{
  artworkCopy = artwork;
  digestCopy = digest;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = NMRMediaRemoteSetArtworkMessage;
  v11 = [(NMRMediaRemoteSetArtworkMessage *)&v15 init];
  if (v11)
  {
    v12 = objc_opt_new();
    protobuf = v11->_protobuf;
    v11->_protobuf = v12;

    [(_NMRMediaRemoteSetArtworkMessage *)v11->_protobuf setJpegData:artworkCopy];
    [(_NMRMediaRemoteSetArtworkMessage *)v11->_protobuf setOriginalDigest:digestCopy];
    -[_NMRMediaRemoteSetArtworkMessage setOriginIdentifier:](v11->_protobuf, "setOriginIdentifier:", [identifierCopy intValue]);
  }

  return v11;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRMediaRemoteSetArtworkMessage *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRMediaRemoteSetArtworkMessage *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)serializationDate
{
  if ([(_NMRMediaRemoteSetArtworkMessage *)self->_protobuf hasTimestamp])
  {
    [(_NMRMediaRemoteSetArtworkMessage *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NMRMediaRemoteSetArtworkMessage)initWithProtobufData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = NMRMediaRemoteSetArtworkMessage;
  v5 = [(NMRMediaRemoteSetArtworkMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRMediaRemoteSetArtworkMessage alloc] initWithData:dataCopy];
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
  [(_NMRMediaRemoteSetArtworkMessage *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRMediaRemoteSetArtworkMessage *)v5 data];
}

@end