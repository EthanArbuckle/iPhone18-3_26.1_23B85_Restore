@interface NMRSendCommandMessage
- (NMRSendCommandMessage)initWithCommand:(unsigned int)command bundleID:(id)d options:(id)options originIdentifier:(id)identifier;
- (NMRSendCommandMessage)initWithProtobufData:(id)data;
- (NSDate)serializationDate;
- (NSDictionary)options;
- (NSNumber)originIdentifier;
- (id)protobufData;
- (unsigned)command;
@end

@implementation NMRSendCommandMessage

- (NMRSendCommandMessage)initWithCommand:(unsigned int)command bundleID:(id)d options:(id)options originIdentifier:(id)identifier
{
  dCopy = d;
  optionsCopy = options;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = NMRSendCommandMessage;
  v13 = [(NMRSendCommandMessage *)&v20 init];
  if (v13)
  {
    v14 = objc_opt_new();
    protobuf = v13->_protobuf;
    v13->_protobuf = v14;

    [(_NMRSendCommandMessageProtobuf *)v13->_protobuf setCommand:sub_1000058C8(command)];
    [(_NMRSendCommandMessageProtobuf *)v13->_protobuf setBundleID:dCopy];
    v16 = v13->_protobuf;
    v17 = sub_100005E08(optionsCopy);
    [(_NMRSendCommandMessageProtobuf *)v16 setOptions:v17];

    -[_NMRSendCommandMessageProtobuf setOriginIdentifier:](v13->_protobuf, "setOriginIdentifier:", [identifierCopy intValue]);
    v18 = v13;
  }

  return v13;
}

- (NMRSendCommandMessage)initWithProtobufData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = NMRSendCommandMessage;
  v5 = [(NMRSendCommandMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRSendCommandMessageProtobuf alloc] initWithData:dataCopy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    v8 = v5;
  }

  return v5;
}

- (unsigned)command
{
  command = [(_NMRSendCommandMessageProtobuf *)self->_protobuf command];

  return sub_100005B8C(command);
}

- (NSDictionary)options
{
  options = [(_NMRSendCommandMessageProtobuf *)self->_protobuf options];
  v3 = sub_100005EB0(options);

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