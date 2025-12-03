@interface DataStreamFragmentAssembler
- (BOOL)addFragmentChunk:(id)chunk error:(id *)error;
- (DataStreamFragmentAssembler)initWithSequenceNumber:(id)number type:(id)type;
- (id)attributeDescriptions;
@end

@implementation DataStreamFragmentAssembler

- (DataStreamFragmentAssembler)initWithSequenceNumber:(id)number type:(id)type
{
  numberCopy = number;
  typeCopy = type;
  if (!numberCopy)
  {
    sub_1001F7A54();
LABEL_9:
    sub_1001F7A3C();
  }

  v9 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_9;
  }

  v21.receiver = self;
  v21.super_class = DataStreamFragmentAssembler;
  v10 = [(DataStreamFragmentAssembler *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sequenceNumber, number);
    v12 = [v9 copy];
    type = v11->_type;
    v11->_type = v12;

    v14 = +[NSMutableData data];
    data = v11->_data;
    v11->_data = v14;

    currentChunkSequenceNumber = v11->_currentChunkSequenceNumber;
    v11->_currentChunkSequenceNumber = &off_100282410;

    v17 = v11;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543874;
      v23 = v19;
      v24 = 2112;
      v25 = numberCopy;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@Initialized data chunk assembler with sequence number: %@ type: %@", buf, 0x20u);
    }
  }

  return v11;
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  sequenceNumber = [(DataStreamFragmentAssembler *)self sequenceNumber];
  v19 = [v3 initWithName:@"Sequence Number" value:sequenceNumber];
  v21[0] = v19;
  v4 = [HMFAttributeDescription alloc];
  type = [(DataStreamFragmentAssembler *)self type];
  v6 = [v4 initWithName:@"Type" value:type];
  v21[1] = v6;
  v7 = [HMFAttributeDescription alloc];
  data = [(DataStreamFragmentAssembler *)self data];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [data length]);
  v10 = [v7 initWithName:@"Data Length" value:v9];
  v21[2] = v10;
  v11 = [HMFAttributeDescription alloc];
  currentChunkSequenceNumber = [(DataStreamFragmentAssembler *)self currentChunkSequenceNumber];
  v13 = [v11 initWithName:@"Current Chunk Sequence Number" value:currentChunkSequenceNumber];
  v21[3] = v13;
  v14 = [HMFAttributeDescription alloc];
  assembledFragment = [(DataStreamFragmentAssembler *)self assembledFragment];
  v16 = [v14 initWithName:@"Assembled Fragment" value:assembledFragment];
  v21[4] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:5];

  return v17;
}

- (BOOL)addFragmentChunk:(id)chunk error:(id *)error
{
  chunkCopy = chunk;
  selfCopy = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(selfCopy);
    v36 = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = chunkCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Adding chunk: %@", &v36, 0x16u);
  }

  assembledFragment = [(DataStreamFragmentAssembler *)selfCopy assembledFragment];

  if (assembledFragment)
  {
    v11 = selfCopy;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(v11);
      v36 = 138543618;
      v37 = v13;
      v38 = 2112;
      v39 = chunkCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Asked to add fragment chunk %@ but the last data chunk has already been received", &v36, 0x16u);
    }

    if (error)
    {
      v14 = 1;
LABEL_18:
      [NSError errorWithDomain:@"DataStreamFragmentAssemblerErrorDomain" code:v14 userInfo:0];
      *error = v27 = 0;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  currentChunkSequenceNumber = [(DataStreamFragmentAssembler *)selfCopy currentChunkSequenceNumber];
  unsignedLongLongValue = [currentChunkSequenceNumber unsignedLongLongValue];

  sequenceNumber = [chunkCopy sequenceNumber];
  unsignedLongLongValue2 = [sequenceNumber unsignedLongLongValue];

  if (unsignedLongLongValue2 != unsignedLongLongValue + 1)
  {
    v28 = selfCopy;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_10007FAFC(v28);
      currentChunkSequenceNumber2 = [(DataStreamFragmentAssembler *)v28 currentChunkSequenceNumber];
      v36 = 138543874;
      v37 = v30;
      v38 = 2112;
      v39 = chunkCopy;
      v40 = 2112;
      v41 = currentChunkSequenceNumber2;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@Asked to add fragment chunk %@ with non-sequential sequence number compared to current stream data chunk sequence number %@", &v36, 0x20u);
    }

    if (error)
    {
      v14 = 2;
      goto LABEL_18;
    }

LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  if (unsignedLongLongValue2 == -1 && ([chunkCopy isLast] & 1) == 0)
  {
    v32 = selfCopy;
    v33 = sub_10007FAA0();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = sub_10007FAFC(v32);
      v36 = 138543618;
      v37 = v34;
      v38 = 2112;
      v39 = chunkCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@Asked to add non-last fragment chunk with maximum allowed sequence number: %@", &v36, 0x16u);
    }

    if (error)
    {
      v14 = 3;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  sequenceNumber2 = [chunkCopy sequenceNumber];
  [(DataStreamFragmentAssembler *)selfCopy setCurrentChunkSequenceNumber:sequenceNumber2];

  data = [(DataStreamFragmentAssembler *)selfCopy data];
  data2 = [chunkCopy data];
  [data appendData:data2];

  if ([chunkCopy isLast])
  {
    v22 = [DataStreamFragment alloc];
    data3 = [(DataStreamFragmentAssembler *)selfCopy data];
    sequenceNumber3 = [(DataStreamFragmentAssembler *)selfCopy sequenceNumber];
    type = [(DataStreamFragmentAssembler *)selfCopy type];
    v26 = [(DataStreamFragment *)v22 initWithData:data3 sequenceNumber:sequenceNumber3 type:type];
    [(DataStreamFragmentAssembler *)selfCopy setAssembledFragment:v26];
  }

  v27 = 1;
LABEL_24:

  return v27;
}

@end