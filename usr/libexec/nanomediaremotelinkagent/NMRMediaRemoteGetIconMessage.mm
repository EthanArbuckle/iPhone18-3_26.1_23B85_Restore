@interface NMRMediaRemoteGetIconMessage
+ (id)messageWithIconWidth:(double)width height:(double)height bundleID:(id)d originIdentifier:(id)identifier;
- (NMRMediaRemoteGetIconMessage)initWithProtobufData:(id)data;
- (NSDate)serializationDate;
- (NSNumber)height;
- (NSNumber)originIdentifier;
- (NSNumber)width;
- (id)_initWithIconWidth:(double)width height:(double)height bundleID:(id)d originIdentifier:(id)identifier;
- (id)protobufData;
@end

@implementation NMRMediaRemoteGetIconMessage

+ (id)messageWithIconWidth:(double)width height:(double)height bundleID:(id)d originIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  v12 = [[self alloc] _initWithIconWidth:dCopy height:identifierCopy bundleID:width originIdentifier:height];

  return v12;
}

- (id)_initWithIconWidth:(double)width height:(double)height bundleID:(id)d originIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = NMRMediaRemoteGetIconMessage;
  v12 = [(NMRMediaRemoteGetIconMessage *)&v16 init];
  if (v12)
  {
    v13 = objc_opt_new();
    protobuf = v12->_protobuf;
    v12->_protobuf = v13;

    [(_NMRMediaRemoteGetIconMessage *)v12->_protobuf setWidth:width];
    [(_NMRMediaRemoteGetIconMessage *)v12->_protobuf setHeight:height];
    [(_NMRMediaRemoteGetIconMessage *)v12->_protobuf setBundleID:dCopy];
    -[_NMRMediaRemoteGetIconMessage setOriginIdentifier:](v12->_protobuf, "setOriginIdentifier:", [identifierCopy intValue]);
  }

  return v12;
}

- (NSNumber)width
{
  [(_NMRMediaRemoteGetIconMessage *)self->_protobuf width];

  return [NSNumber numberWithDouble:?];
}

- (NSNumber)height
{
  [(_NMRMediaRemoteGetIconMessage *)self->_protobuf height];

  return [NSNumber numberWithDouble:?];
}

- (NSNumber)originIdentifier
{
  if ([(_NMRMediaRemoteGetIconMessage *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRMediaRemoteGetIconMessage *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)serializationDate
{
  if ([(_NMRMediaRemoteGetIconMessage *)self->_protobuf hasTimestamp])
  {
    [(_NMRMediaRemoteGetIconMessage *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NMRMediaRemoteGetIconMessage)initWithProtobufData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = NMRMediaRemoteGetIconMessage;
  v5 = [(NMRMediaRemoteGetIconMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRMediaRemoteGetIconMessage alloc] initWithData:dataCopy];
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
  [(_NMRMediaRemoteGetIconMessage *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRMediaRemoteGetIconMessage *)v5 data];
}

@end