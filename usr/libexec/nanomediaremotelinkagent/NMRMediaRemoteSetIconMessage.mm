@interface NMRMediaRemoteSetIconMessage
+ (id)messageWithIcon:(id)icon originalDigest:(id)digest bundleID:(id)d originIdentifier:(id)identifier;
- (NMRMediaRemoteSetIconMessage)initWithProtobufData:(id)data;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)_initWithIcon:(id)icon originalDigest:(id)digest bundleID:(id)d originIdentifier:(id)identifier;
- (id)protobufData;
@end

@implementation NMRMediaRemoteSetIconMessage

+ (id)messageWithIcon:(id)icon originalDigest:(id)digest bundleID:(id)d originIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  digestCopy = digest;
  iconCopy = icon;
  v14 = [[self alloc] _initWithIcon:iconCopy originalDigest:digestCopy bundleID:dCopy originIdentifier:identifierCopy];

  return v14;
}

- (id)_initWithIcon:(id)icon originalDigest:(id)digest bundleID:(id)d originIdentifier:(id)identifier
{
  iconCopy = icon;
  digestCopy = digest;
  dCopy = d;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = NMRMediaRemoteSetIconMessage;
  v14 = [(NMRMediaRemoteSetIconMessage *)&v18 init];
  if (v14)
  {
    v15 = objc_opt_new();
    protobuf = v14->_protobuf;
    v14->_protobuf = v15;

    [(_NMRMediaRemoteSetIconMessage *)v14->_protobuf setIconData:iconCopy];
    [(_NMRMediaRemoteSetIconMessage *)v14->_protobuf setOriginalDigest:digestCopy];
    [(_NMRMediaRemoteSetIconMessage *)v14->_protobuf setBundleID:dCopy];
    -[_NMRMediaRemoteSetIconMessage setOriginIdentifier:](v14->_protobuf, "setOriginIdentifier:", [identifierCopy intValue]);
  }

  return v14;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRMediaRemoteSetIconMessage *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRMediaRemoteSetIconMessage *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)serializationDate
{
  if ([(_NMRMediaRemoteSetIconMessage *)self->_protobuf hasTimestamp])
  {
    [(_NMRMediaRemoteSetIconMessage *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NMRMediaRemoteSetIconMessage)initWithProtobufData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = NMRMediaRemoteSetIconMessage;
  v5 = [(NMRMediaRemoteSetIconMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRMediaRemoteSetIconMessage alloc] initWithData:dataCopy];
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
  [(_NMRMediaRemoteSetIconMessage *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRMediaRemoteSetIconMessage *)v5 data];
}

@end