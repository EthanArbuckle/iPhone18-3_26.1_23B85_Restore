@interface DataStreamFragmentAssembler
- (BOOL)addFragmentChunk:(id)a3 error:(id *)a4;
- (DataStreamFragmentAssembler)initWithSequenceNumber:(id)a3 type:(id)a4;
- (id)attributeDescriptions;
@end

@implementation DataStreamFragmentAssembler

- (DataStreamFragmentAssembler)initWithSequenceNumber:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_1001F7A54();
LABEL_9:
    sub_1001F7A3C();
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v21.receiver = self;
  v21.super_class = DataStreamFragmentAssembler;
  v10 = [(DataStreamFragmentAssembler *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sequenceNumber, a3);
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
      v25 = v7;
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
  v20 = [(DataStreamFragmentAssembler *)self sequenceNumber];
  v19 = [v3 initWithName:@"Sequence Number" value:v20];
  v21[0] = v19;
  v4 = [HMFAttributeDescription alloc];
  v5 = [(DataStreamFragmentAssembler *)self type];
  v6 = [v4 initWithName:@"Type" value:v5];
  v21[1] = v6;
  v7 = [HMFAttributeDescription alloc];
  v8 = [(DataStreamFragmentAssembler *)self data];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 length]);
  v10 = [v7 initWithName:@"Data Length" value:v9];
  v21[2] = v10;
  v11 = [HMFAttributeDescription alloc];
  v12 = [(DataStreamFragmentAssembler *)self currentChunkSequenceNumber];
  v13 = [v11 initWithName:@"Current Chunk Sequence Number" value:v12];
  v21[3] = v13;
  v14 = [HMFAttributeDescription alloc];
  v15 = [(DataStreamFragmentAssembler *)self assembledFragment];
  v16 = [v14 initWithName:@"Assembled Fragment" value:v15];
  v21[4] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:5];

  return v17;
}

- (BOOL)addFragmentChunk:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10007FAA0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10007FAFC(v7);
    v36 = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Adding chunk: %@", &v36, 0x16u);
  }

  v10 = [(DataStreamFragmentAssembler *)v7 assembledFragment];

  if (v10)
  {
    v11 = v7;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(v11);
      v36 = 138543618;
      v37 = v13;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Asked to add fragment chunk %@ but the last data chunk has already been received", &v36, 0x16u);
    }

    if (a4)
    {
      v14 = 1;
LABEL_18:
      [NSError errorWithDomain:@"DataStreamFragmentAssemblerErrorDomain" code:v14 userInfo:0];
      *a4 = v27 = 0;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = [(DataStreamFragmentAssembler *)v7 currentChunkSequenceNumber];
  v16 = [v15 unsignedLongLongValue];

  v17 = [v6 sequenceNumber];
  v18 = [v17 unsignedLongLongValue];

  if (v18 != v16 + 1)
  {
    v28 = v7;
    v29 = sub_10007FAA0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_10007FAFC(v28);
      v31 = [(DataStreamFragmentAssembler *)v28 currentChunkSequenceNumber];
      v36 = 138543874;
      v37 = v30;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@Asked to add fragment chunk %@ with non-sequential sequence number compared to current stream data chunk sequence number %@", &v36, 0x20u);
    }

    if (a4)
    {
      v14 = 2;
      goto LABEL_18;
    }

LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  if (v18 == -1 && ([v6 isLast] & 1) == 0)
  {
    v32 = v7;
    v33 = sub_10007FAA0();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = sub_10007FAFC(v32);
      v36 = 138543618;
      v37 = v34;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@Asked to add non-last fragment chunk with maximum allowed sequence number: %@", &v36, 0x16u);
    }

    if (a4)
    {
      v14 = 3;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  v19 = [v6 sequenceNumber];
  [(DataStreamFragmentAssembler *)v7 setCurrentChunkSequenceNumber:v19];

  v20 = [(DataStreamFragmentAssembler *)v7 data];
  v21 = [v6 data];
  [v20 appendData:v21];

  if ([v6 isLast])
  {
    v22 = [DataStreamFragment alloc];
    v23 = [(DataStreamFragmentAssembler *)v7 data];
    v24 = [(DataStreamFragmentAssembler *)v7 sequenceNumber];
    v25 = [(DataStreamFragmentAssembler *)v7 type];
    v26 = [(DataStreamFragment *)v22 initWithData:v23 sequenceNumber:v24 type:v25];
    [(DataStreamFragmentAssembler *)v7 setAssembledFragment:v26];
  }

  v27 = 1;
LABEL_24:

  return v27;
}

@end