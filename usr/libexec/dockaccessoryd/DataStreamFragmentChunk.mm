@interface DataStreamFragmentChunk
- (BOOL)isEqual:(id)equal;
- (DataStreamFragmentChunk)initWithData:(id)data sequenceNumber:(id)number fragmentSequenceNumber:(id)sequenceNumber type:(id)type isLast:(BOOL)last;
- (DataStreamFragmentChunk)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation DataStreamFragmentChunk

- (DataStreamFragmentChunk)initWithData:(id)data sequenceNumber:(id)number fragmentSequenceNumber:(id)sequenceNumber type:(id)type isLast:(BOOL)last
{
  dataCopy = data;
  numberCopy = number;
  sequenceNumberCopy = sequenceNumber;
  typeCopy = type;
  if (!dataCopy)
  {
    sub_1001F7A6C();
    goto LABEL_9;
  }

  if (!numberCopy)
  {
LABEL_9:
    sub_1001F7A54();
    goto LABEL_10;
  }

  if (!sequenceNumberCopy)
  {
LABEL_10:
    sub_1001F7EA4();
    goto LABEL_11;
  }

  v17 = typeCopy;
  if (!typeCopy)
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
    objc_storeStrong(&v18->_data, data);
    v20 = [numberCopy copy];
    sequenceNumber = v19->_sequenceNumber;
    v19->_sequenceNumber = v20;

    v22 = [sequenceNumberCopy copy];
    fragmentSequenceNumber = v19->_fragmentSequenceNumber;
    v19->_fragmentSequenceNumber = v22;

    v24 = [v17 copy];
    type = v19->_type;
    v19->_type = v24;

    v19->_last = last;
  }

  return v19;
}

- (DataStreamFragmentChunk)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy hmf_dataForKey:@"data"];
  if (v5)
  {
    v6 = [representationCopy hmf_dictionaryForKey:@"metadata"];
    selfCopy6 = v6;
    if (v6)
    {
      selfCopy5 = [(DataStreamFragmentChunk *)v6 hmf_numberForKey:@"dataChunkSequenceNumber"];
      if (selfCopy5)
      {
        selfCopy4 = [(DataStreamFragmentChunk *)selfCopy6 hmf_numberForKey:@"dataSequenceNumber"];
        if (selfCopy4)
        {
          selfCopy3 = [(DataStreamFragmentChunk *)selfCopy6 hmf_stringForKey:@"dataType"];
          if (selfCopy3)
          {
            v11 = [(DataStreamFragmentChunk *)selfCopy6 hmf_numberForKey:@"isLastDataChunk"];
            selfCopy2 = v11;
            if (v11)
            {
              selfCopy = [(DataStreamFragmentChunk *)self initWithData:v5 sequenceNumber:selfCopy5 fragmentSequenceNumber:selfCopy4 type:selfCopy3 isLast:[(DataStreamFragmentChunk *)v11 BOOLValue]];
              v14 = selfCopy;
            }

            else
            {
              selfCopy = self;
              v21 = sub_10007FAA0();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v23 = sub_10007FAFC(selfCopy);
                *buf = 138543874;
                v25 = v23;
                v26 = 2112;
                v27 = @"isLastDataChunk";
                v28 = 2112;
                v29 = representationCopy;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not determine isLast (key=%@) from stream data dictionary: %@", buf, 0x20u);
              }

              v14 = 0;
            }
          }

          else
          {
            selfCopy2 = self;
            v19 = sub_10007FAA0();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = sub_10007FAFC(selfCopy2);
              *buf = 138543874;
              v25 = v20;
              v26 = 2112;
              v27 = @"dataType";
              v28 = 2112;
              v29 = representationCopy;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not determine type (key=%@) from stream data dictionary: %@", buf, 0x20u);
            }

            v14 = 0;
            selfCopy = selfCopy2;
          }
        }

        else
        {
          selfCopy3 = self;
          selfCopy2 = sub_10007FAA0();
          if (os_log_type_enabled(selfCopy2, OS_LOG_TYPE_ERROR))
          {
            v18 = sub_10007FAFC(selfCopy3);
            *buf = 138543874;
            v25 = v18;
            v26 = 2112;
            v27 = @"dataSequenceNumber";
            v28 = 2112;
            v29 = representationCopy;
            _os_log_impl(&_mh_execute_header, selfCopy2, OS_LOG_TYPE_ERROR, "%{public}@Could not determine fragment sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
          }

          v14 = 0;
          selfCopy = selfCopy3;
        }
      }

      else
      {
        selfCopy4 = self;
        selfCopy3 = sub_10007FAA0();
        if (os_log_type_enabled(selfCopy3, OS_LOG_TYPE_ERROR))
        {
          v17 = sub_10007FAFC(selfCopy4);
          *buf = 138543874;
          v25 = v17;
          v26 = 2112;
          v27 = @"dataChunkSequenceNumber";
          v28 = 2112;
          v29 = representationCopy;
          _os_log_impl(&_mh_execute_header, selfCopy3, OS_LOG_TYPE_ERROR, "%{public}@Could not determine sequence number (key=%@) from stream data dictionary: %@", buf, 0x20u);
        }

        v14 = 0;
        selfCopy = selfCopy4;
      }
    }

    else
    {
      selfCopy5 = self;
      selfCopy4 = sub_10007FAA0();
      if (os_log_type_enabled(selfCopy4, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_10007FAFC(selfCopy5);
        *buf = 138543874;
        v25 = v16;
        v26 = 2112;
        v27 = @"metadata";
        v28 = 2112;
        v29 = representationCopy;
        _os_log_impl(&_mh_execute_header, selfCopy4, OS_LOG_TYPE_ERROR, "%{public}@Could not determine metadata (key=%@) from stream data dictionary: %@", buf, 0x20u);
      }

      v14 = 0;
      selfCopy = selfCopy5;
    }
  }

  else
  {
    selfCopy6 = self;
    selfCopy5 = sub_10007FAA0();
    if (os_log_type_enabled(selfCopy5, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy6);
      *buf = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = @"data";
      v28 = 2112;
      v29 = representationCopy;
      _os_log_impl(&_mh_execute_header, selfCopy5, OS_LOG_TYPE_ERROR, "%{public}@Could not determine data (key=%@) from stream data dictionary: %@", buf, 0x20u);
    }

    v14 = 0;
    selfCopy = selfCopy6;
  }

  return v14;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[0] = @"metadata";
  v11[0] = @"dataChunkSequenceNumber";
  sequenceNumber = [(DataStreamFragmentChunk *)self sequenceNumber];
  v12[0] = sequenceNumber;
  v11[1] = @"dataSequenceNumber";
  fragmentSequenceNumber = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
  v12[1] = fragmentSequenceNumber;
  v11[2] = @"dataType";
  type = [(DataStreamFragmentChunk *)self type];
  v12[2] = type;
  v11[3] = @"isLastDataChunk";
  v6 = [NSNumber numberWithBool:[(DataStreamFragmentChunk *)self isLast]];
  v12[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[1] = @"data";
  v14[0] = v7;
  data = [(DataStreamFragmentChunk *)self data];
  v14[1] = data;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v9;
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  data = [(DataStreamFragmentChunk *)self data];
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [data length]);
  v4 = [v3 initWithName:@"Data Length" value:v19];
  v21[0] = v4;
  v5 = [HMFAttributeDescription alloc];
  sequenceNumber = [(DataStreamFragmentChunk *)self sequenceNumber];
  v7 = [v5 initWithName:@"Sequence Number" value:sequenceNumber];
  v21[1] = v7;
  v8 = [HMFAttributeDescription alloc];
  fragmentSequenceNumber = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
  v10 = [v8 initWithName:@"Fragment Sequence Number" value:fragmentSequenceNumber];
  v21[2] = v10;
  v11 = [HMFAttributeDescription alloc];
  type = [(DataStreamFragmentChunk *)self type];
  v13 = [v11 initWithName:@"Type" value:type];
  v21[3] = v13;
  v14 = [HMFAttributeDescription alloc];
  [(DataStreamFragmentChunk *)self isLast];
  v15 = HMFBooleanToString();
  v16 = [v14 initWithName:@"Is Last" value:v15];
  v21[4] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:5];

  return v17;
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
    data2 = [(DataStreamFragmentChunk *)self data];
    if ([data isEqualToData:data2])
    {
      sequenceNumber = [v7 sequenceNumber];
      sequenceNumber2 = [(DataStreamFragmentChunk *)self sequenceNumber];
      if ([sequenceNumber isEqualToNumber:sequenceNumber2])
      {
        fragmentSequenceNumber = [v7 fragmentSequenceNumber];
        fragmentSequenceNumber2 = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
        if ([fragmentSequenceNumber isEqualToNumber:fragmentSequenceNumber2])
        {
          type = [v7 type];
          type2 = [(DataStreamFragmentChunk *)self type];
          v21 = type;
          v16 = type;
          v17 = type2;
          if ([v16 isEqualToString:type2])
          {
            isLast = [v7 isLast];
            v18 = isLast ^ [(DataStreamFragmentChunk *)self isLast]^ 1;
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
  data = [(DataStreamFragmentChunk *)self data];
  v4 = [data hash];

  sequenceNumber = [(DataStreamFragmentChunk *)self sequenceNumber];
  v6 = [sequenceNumber hash] ^ v4;

  fragmentSequenceNumber = [(DataStreamFragmentChunk *)self fragmentSequenceNumber];
  v8 = [fragmentSequenceNumber hash];

  type = [(DataStreamFragmentChunk *)self type];
  v10 = v6 ^ v8 ^ [type hash];

  return v10 ^ [(DataStreamFragmentChunk *)self isLast];
}

@end