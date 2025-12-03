@interface DataStreamFragment
- (BOOL)isEqual:(id)equal;
- (BOOL)isInitial;
- (DataStreamFragment)initWithData:(id)data sequenceNumber:(id)number type:(id)type;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation DataStreamFragment

- (DataStreamFragment)initWithData:(id)data sequenceNumber:(id)number type:(id)type
{
  dataCopy = data;
  numberCopy = number;
  typeCopy = type;
  if (!dataCopy)
  {
    sub_1001F7A6C();
    goto LABEL_8;
  }

  if (!numberCopy)
  {
LABEL_8:
    sub_1001F7A54();
    goto LABEL_9;
  }

  v12 = typeCopy;
  if (!typeCopy)
  {
LABEL_9:
    v20 = sub_1001F7A3C();
    return [(DataStreamFragment *)v20 attributeDescriptions];
  }

  v22.receiver = self;
  v22.super_class = DataStreamFragment;
  v13 = [(DataStreamFragment *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_data, data);
    v15 = [numberCopy copy];
    sequenceNumber = v14->_sequenceNumber;
    v14->_sequenceNumber = v15;

    v17 = [v12 copy];
    type = v14->_type;
    v14->_type = v17;
  }

  return v14;
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  data = [(DataStreamFragment *)self data];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [data length]);
  v6 = [v3 initWithName:@"Data Length" value:v5];
  v7 = [HMFAttributeDescription alloc];
  sequenceNumber = [(DataStreamFragment *)self sequenceNumber];
  v9 = [v7 initWithName:@"Sequence Number" value:sequenceNumber];
  v15[1] = v9;
  v10 = [HMFAttributeDescription alloc];
  type = [(DataStreamFragment *)self type];
  v12 = [v10 initWithName:@"Type" value:type];
  v15[2] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:3];

  return v13;
}

- (BOOL)isInitial
{
  sequenceNumber = [(DataStreamFragment *)self sequenceNumber];
  v3 = [sequenceNumber unsignedLongLongValue] == 1;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    data = [v6 data];
    data2 = [(DataStreamFragment *)self data];
    if ([data isEqualToData:data2])
    {
      sequenceNumber = [v7 sequenceNumber];
      sequenceNumber2 = [(DataStreamFragment *)self sequenceNumber];
      if ([sequenceNumber isEqualToNumber:sequenceNumber2])
      {
        type = [v7 type];
        type2 = [(DataStreamFragment *)self type];
        v14 = [type isEqualToString:type2];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  data = [(DataStreamFragment *)self data];
  v4 = [data hash];

  sequenceNumber = [(DataStreamFragment *)self sequenceNumber];
  v6 = [sequenceNumber hash] ^ v4;

  type = [(DataStreamFragment *)self type];
  v8 = [type hash];

  return v6 ^ v8;
}

@end