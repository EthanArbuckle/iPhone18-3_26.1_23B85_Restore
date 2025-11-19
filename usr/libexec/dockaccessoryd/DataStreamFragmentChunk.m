@interface DataStreamFragmentChunk
- (BOOL)isEqual:(id)a3;
- (DataStreamFragmentChunk)initWithData:(id)a3 sequenceNumber:(id)a4 fragmentSequenceNumber:(id)a5 type:(id)a6 isLast:(BOOL)a7;
- (DataStreamFragmentChunk)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation DataStreamFragmentChunk

- (DataStreamFragmentChunk)initWithData:(id)a3 sequenceNumber:(id)a4 fragmentSequenceNumber:(id)a5 type:(id)a6 isLast:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!v13)
  {
    sub_1001F7A6C();
    goto LABEL_9;
  }

  if (!v14)
  {
LABEL_9:
    sub_1001F7A54();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    sub_1001F7EA4();
    goto LABEL_11;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_11:
    v27 = sub_1001F7A3C();
    return [(DataStreamFragmentChunk *)v27 initWithDictionaryRepresentation:v28, v29];
  }

  v30.receiver = self;
  v30.super_class = DataStreamFragmentChunk;
  v18 = [(DataStreamFragmentChunk *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, a3);
    v20 = [v14 copy];
    sequenceNumber = v19->_sequenceNumber;
    v19->_sequenceNumber = v20;

    v22 = [v15 copy];
    fragmentSequenceNumber = v19->_fragmentSequenceNumber;
    v19->_fragmentSequenceNumber = v22;

    v24 = [v17 copy];
    type = v19->_type;
    v19->_type = v24;

    v19->_last = a7;
  }

  return v19;
}

- (DataStreamFragmentChunk)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_dataForKey:@"data"];
  if (v5)
  {
    v6 = [v4 hmf_dictionaryForKey:@"metadata"];
    v7 = v6;
    if (v6)
    {
      v8 = [(DataStreamFragmentChunk *)v6 hmf_numberForKey:@"dataChunkSequenceNumber"];
      if (v8)
      {
        v9 = [(DataStreamFragmentChunk *)v7 hmf_numberForKey:@"dataSequenceNumber"];
        if (v9)
        {
          v10 = [(DataStreamFragmentChunk *)v7 hmf_stringForKey:@"dataType"];
          if (v10)
          {
            v11 = [(DataStreamFragmentChunk *)v7 hmf_numberForKey:@"isLastDataChunk"];
            v12 = v11;
            if (v11)
            {
              v13 = [(DataStreamFragmentChunk *)self initWithData:v5 sequenceNumber:v8 fragmentSequenceNumber:v9 type:v10 isLast:[(DataStreamFragmentChunk *)v11 BOOLValue]];
              v14 = v13;
            }

            else
            {
              v13 = self;
              v21 = sub_10007FAA0();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v23 = sub_10007FAFC(v13);
                *buf = 138543874;
                v25 = v23;
                v26 = 2112;
                v27 = @"isLastDataChunk";
                v28 = 2112;
                v29 = v4;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not determine isLast (key=%@) from stream data dictionary: %@", buf, 0x20u);
              }

              v14 = 0;
            }
          }

          else
          {
            v12 = self;
            v19 = sub_10007FAA0();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = sub_10007FAFC(v12);
              *buf = 138543874;
              v25 = v20;
              v26 = 2112;
              v27 = @"dataType";
              v28 = 2112;
              v29 = v4;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not determine type (key=%@) from stream data dictionary: %@", buf, 0x20u);
            }

            v14 = 0;
            v13 = v12;
          }
        }

        else
        {
          v10 = self;
          v12 = sub_10007FAA0();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v18 = sub_10007FAFC(v10);
            *buf = 138543874;
            v25 = v18;
            v26 = 2112;
            v27 = @"dataSequenceNumber";
            v28 = 2112;
            v29 = v4;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not determine fragment sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
          }

          v14 = 0;
          v13 = v10;
        }
      }

      else
      {
        v9 = self;
        v10 = sub_10007FAA0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = sub_10007FAFC(v9);
          *buf = 138543874;
          v25 = v17;
          v26 = 2112;
          v27 = @"dataChunkSequenceNumber";
          v28 = 2112;
          v29 = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not determine sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
        }

        v14 = 0;
        v13 = v9;
      }
    }

    else
    {
      v8 = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_10007FAFC(v8);
        *buf = 138543874;
        v25 = v16;
        v26 = 2112;
        v27 = @"metadata";
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not determine metadata (key=%@) from stream data dictionary: %@", buf, 0x20u);
      }

      v14 = 0;
      v13 = v8;
    }
  }

  else
  {
    v7 = self;
    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v7);
      *buf = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = @"data";
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Could not determine data (key=%@) from stream data dictionary: %@", buf, 0x20u);
    }

    v14 = 0;
    v13 = v7;
  }

  return v14;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[0] = @"metadata";
  v11[0] = @"dataChunkSequenceNumber";
  v3 = [(DataStreamFragmentChunk *)self sequenceNumber];
  v12[0] = v3;
  v11[1] = @"dataSequenceNumber";
  v4 = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
  v12[1] = v4;
  v11[2] = @"dataType";
  v5 = [(DataStreamFragmentChunk *)self type];
  v12[2] = v5;
  v11[3] = @"isLastDataChunk";
  v6 = [NSNumber numberWithBool:[(DataStreamFragmentChunk *)self isLast]];
  v12[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[1] = @"data";
  v14[0] = v7;
  v8 = [(DataStreamFragmentChunk *)self data];
  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v9;
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  v20 = [(DataStreamFragmentChunk *)self data];
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 length]);
  v4 = [v3 initWithName:@"Data Length" value:v19];
  v21[0] = v4;
  v5 = [HMFAttributeDescription alloc];
  v6 = [(DataStreamFragmentChunk *)self sequenceNumber];
  v7 = [v5 initWithName:@"Sequence Number" value:v6];
  v21[1] = v7;
  v8 = [HMFAttributeDescription alloc];
  v9 = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
  v10 = [v8 initWithName:@"Fragment Sequence Number" value:v9];
  v21[2] = v10;
  v11 = [HMFAttributeDescription alloc];
  v12 = [(DataStreamFragmentChunk *)self type];
  v13 = [v11 initWithName:@"Type" value:v12];
  v21[3] = v13;
  v14 = [HMFAttributeDescription alloc];
  [(DataStreamFragmentChunk *)self isLast];
  v15 = HMFBooleanToString();
  v16 = [v14 initWithName:@"Is Last" value:v15];
  v21[4] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:5];

  return v17;
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
    v9 = [(DataStreamFragmentChunk *)self data];
    if ([v8 isEqualToData:v9])
    {
      v10 = [v7 sequenceNumber];
      v11 = [(DataStreamFragmentChunk *)self sequenceNumber];
      if ([v10 isEqualToNumber:v11])
      {
        v12 = [v7 fragmentSequenceNumber];
        v13 = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
        if ([v12 isEqualToNumber:v13])
        {
          v14 = [v7 type];
          v15 = [(DataStreamFragmentChunk *)self type];
          v21 = v14;
          v16 = v14;
          v17 = v15;
          if ([v16 isEqualToString:v15])
          {
            v20 = [v7 isLast];
            v18 = v20 ^ [(DataStreamFragmentChunk *)self isLast]^ 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }
        }

        else
        {
          LOBYTE(v18) = 0;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(DataStreamFragmentChunk *)self data];
  v4 = [v3 hash];

  v5 = [(DataStreamFragmentChunk *)self sequenceNumber];
  v6 = [v5 hash] ^ v4;

  v7 = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
  v8 = [v7 hash];

  v9 = [(DataStreamFragmentChunk *)self type];
  v10 = v6 ^ v8 ^ [v9 hash];

  return v10 ^ [(DataStreamFragmentChunk *)self isLast];
}

@end