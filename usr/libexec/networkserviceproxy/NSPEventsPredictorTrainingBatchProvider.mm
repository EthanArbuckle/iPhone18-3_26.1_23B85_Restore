@interface NSPEventsPredictorTrainingBatchProvider
- (id)featuresAtIndex:(int64_t)a3;
- (id)init:(id)a3 inputShape:(id)a4 targetShape:(id)a5;
@end

@implementation NSPEventsPredictorTrainingBatchProvider

- (id)featuresAtIndex:(int64_t)a3
{
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134217984;
    v17 = a3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "featureAtIndex: %ld Begin", &v16, 0xCu);
  }

  v6 = [(NSArray *)self->_inputShape objectAtIndexedSubscript:1];
  v7 = [v6 unsignedIntValue];

  v8 = [NSPCoreData prepareMLData:self->_trainingData startAt:a3 dataShape:self->_inputShape];
  if (v8)
  {
    [NSPCoreData printMLMultiArray:v8];
    v9 = [NSPCoreData normalizeData:v8];
    if (v9)
    {
      [NSPCoreData printMLMultiArray:v9];
      v10 = [NSPCoreData prepareMLData:self->_trainingData startAt:v7 + a3 dataShape:self->_targetShape];
      [NSPCoreData printMLMultiArray:v10];
      v11 = [NSPCoreData normalizeData:v10];
      if (v11)
      {
        [NSPCoreData printMLMultiArray:v11];
        v12 = nplog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134217984;
          v17 = a3;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "featureAtIndex: %ld End ", &v16, 0xCu);
        }

        v13 = [[NSPEventsPredictorTrainingInput alloc] initWithLstm_input:v9 sequential_TimeDistributedDense_dense_BiasAdd_true:v11];
      }

      else
      {
        v15 = nplog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v16 = 136315138;
          v17 = "[NSPEventsPredictorTrainingBatchProvider featuresAtIndex:]";
          _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s called with null normalizedNextEvent", &v16, 0xCu);
        }

        v13 = 0;
      }
    }

    else
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v16 = 136315138;
        v17 = "[NSPEventsPredictorTrainingBatchProvider featuresAtIndex:]";
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null normalizedPrevEvents", &v16, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "[NSPEventsPredictorTrainingBatchProvider featuresAtIndex:]";
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null prevEvents", &v16, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)init:(id)a3 inputShape:(id)a4 targetShape:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  if (v11 == [v10 count])
  {
    v12 = [v9 lastObject];
    v13 = [v10 lastObject];

    if (v12 != v13)
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v9 lastObject];
        v16 = [v10 lastObject];
        *buf = 138412546;
        v30 = v15;
        v31 = 2112;
        v32 = v16;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "The targetShape and inputShape not compatible (%@ vs %@)", buf, 0x16u);
      }

      goto LABEL_6;
    }

    v19 = [v8 count];
    v20 = [v9 objectAtIndexedSubscript:1];
    v21 = [v20 unsignedIntValue] + 1;

    if (v19 != v21)
    {
      v28.receiver = self;
      v28.super_class = NSPEventsPredictorTrainingBatchProvider;
      v25 = [(NSPEventsPredictorTrainingBatchProvider *)&v28 init];
      [(NSPEventsPredictorTrainingBatchProvider *)v25 setTrainingData:v8];
      [(NSPEventsPredictorTrainingBatchProvider *)v25 setInputShape:v9];
      [(NSPEventsPredictorTrainingBatchProvider *)v25 setTargetShape:v10];
      v26 = [v8 count];
      v27 = [v9 objectAtIndexedSubscript:1];
      -[NSPEventsPredictorTrainingBatchProvider setCount:](v25, "setCount:", &v26[~[v27 unsignedIntValue]]);

      self = v25;
      v17 = self;
      goto LABEL_7;
    }

    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v30 = [v8 count];
      v22 = "Insufficient number of NSP events for training %lu";
      v23 = v14;
      v24 = 12;
LABEL_13:
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    }
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v30 = [v9 count];
      v31 = 2048;
      v32 = [v10 count];
      v22 = "The targetShape dimensions not same as inputShape dimensions. (%lu vs %lu)";
      v23 = v14;
      v24 = 22;
      goto LABEL_13;
    }
  }

LABEL_6:

  v17 = 0;
LABEL_7:

  return v17;
}

@end