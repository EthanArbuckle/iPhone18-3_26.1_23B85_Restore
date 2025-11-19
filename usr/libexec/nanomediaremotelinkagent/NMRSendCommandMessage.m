@interface NMRSendCommandMessage
- (NMRSendCommandMessage)initWithCommand:(unsigned int)a3 bundleID:(id)a4 options:(id)a5 originIdentifier:(id)a6;
- (NMRSendCommandMessage)initWithProtobufData:(id)a3;
- (NSDate)serializationDate;
- (NSDictionary)options;
- (NSNumber)originIdentifier;
- (id)protobufData;
- (unsigned)command;
@end

@implementation NMRSendCommandMessage

- (NMRSendCommandMessage)initWithCommand:(unsigned int)a3 bundleID:(id)a4 options:(id)a5 originIdentifier:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = NMRSendCommandMessage;
  v13 = [(NMRSendCommandMessage *)&v20 init];
  if (v13)
  {
    v14 = objc_opt_new();
    protobuf = v13->_protobuf;
    v13->_protobuf = v14;

    [(_NMRSendCommandMessageProtobuf *)v13->_protobuf setCommand:sub_1000058C8(a3)];
    [(_NMRSendCommandMessageProtobuf *)v13->_protobuf setBundleID:v10];
    v16 = v13->_protobuf;
    v17 = sub_100005E08(v11);
    [(_NMRSendCommandMessageProtobuf *)v16 setOptions:v17];

    -[_NMRSendCommandMessageProtobuf setOriginIdentifier:](v13->_protobuf, "setOriginIdentifier:", [v12 intValue]);
    v18 = v13;
  }

  return v13;
}

- (NMRSendCommandMessage)initWithProtobufData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NMRSendCommandMessage;
  v5 = [(NMRSendCommandMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRSendCommandMessageProtobuf alloc] initWithData:v4];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    v8 = v5;
  }

  return v5;
}

- (unsigned)command
{
  v2 = [(_NMRSendCommandMessageProtobuf *)self->_protobuf command];

  return sub_100005B8C(v2);
}

- (NSDictionary)options
{
  v2 = [(_NMRSendCommandMessageProtobuf *)self->_protobuf options];
  v3 = sub_100005EB0(v2);

  return v3;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRSendCommandMessageProtobuf *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRSendCommandMessageProtobuf *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)protobufData
{
  protobuf = self->_protobuf;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  [(_NMRSendCommandMessageProtobuf *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRSendCommandMessageProtobuf *)v5 data];
}

- (NSDate)serializationDate
{
  if ([(_NMRSendCommandMessageProtobuf *)self->_protobuf hasTimestamp])
  {
    [(_NMRSendCommandMessageProtobuf *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end