@interface DataStreamFragment
- (BOOL)isEqual:(id)a3;
- (BOOL)isInitial;
- (DataStreamFragment)initWithData:(id)a3 sequenceNumber:(id)a4 type:(id)a5;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation DataStreamFragment

- (DataStreamFragment)initWithData:(id)a3 sequenceNumber:(id)a4 type:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    sub_1001F7A6C();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    sub_1001F7A54();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
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
    objc_storeStrong(&v13->_data, a3);
    v15 = [v10 copy];
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
  v4 = [(DataStreamFragment *)self data];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 length]);
  v6 = [v3 initWithName:@"Data Length" value:v5];
  v7 = [HMFAttributeDescription alloc];
  v8 = [(DataStreamFragment *)self sequenceNumber];
  v9 = [v7 initWithName:@"Sequence Number" value:v8];
  v15[1] = v9;
  v10 = [HMFAttributeDescription alloc];
  v11 = [(DataStreamFragment *)self type];
  v12 = [v10 initWithName:@"Type" value:v11];
  v15[2] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:3];

  return v13;
}

- (BOOL)isInitial
{
  v2 = [(DataStreamFragment *)self sequenceNumber];
  v3 = [v2 unsignedLongLongValue] == 1;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 data];
    v9 = [(DataStreamFragment *)self data];
    if ([v8 isEqualToData:v9])
    {
      v10 = [v7 sequenceNumber];
      v11 = [(DataStreamFragment *)self sequenceNumber];
      if ([v10 isEqualToNumber:v11])
      {
        v12 = [v7 type];
        v13 = [(DataStreamFragment *)self type];
        v14 = [v12 isEqualToString:v13];
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
  v3 = [(DataStreamFragment *)self data];
  v4 = [v3 hash];

  v5 = [(DataStreamFragment *)self sequenceNumber];
  v6 = [v5 hash] ^ v4;

  v7 = [(DataStreamFragment *)self type];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end