@interface NSPEventsPredictorTrainingBatchProvider
- (id)featuresAtIndex:(int64_t)index;
- (id)init:(id)init inputShape:(id)shape targetShape:(id)targetShape;
@end

@implementation NSPEventsPredictorTrainingBatchProvider

- (id)featuresAtIndex:(int64_t)index
{
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134217984;
    indexCopy2 = index;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "featureAtIndex: %ld Begin", &v16, 0xCu);
  }

  v6 = [(NSArray *)self->_inputShape objectAtIndexedSubscript:1];
  unsignedIntValue = [v6 unsignedIntValue];

  v8 = [NSPCoreData prepareMLData:self->_trainingData startAt:index dataShape:self->_inputShape];
  if (v8)
  {
    [NSPCoreData printMLMultiArray:v8];
    v9 = [NSPCoreData normalizeData:v8];
    if (v9)
    {
      [NSPCoreData printMLMultiArray:v9];
      v10 = [NSPCoreData prepareMLData:self->_trainingData startAt:unsignedIntValue + index dataShape:self->_targetShape];
      [NSPCoreData printMLMultiArray:v10];
      v11 = [NSPCoreData normalizeData:v10];
      if (v11)
      {
        [NSPCoreData printMLMultiArray:v11];
        v12 = nplog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134217984;
          indexCopy2 = index;
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
          indexCopy2 = "[NSPEventsPredictorTrainingBatchProvider featuresAtIndex:]";
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
        indexCopy2 = "[NSPEventsPredictorTrainingBatchProvider featuresAtIndex:]";
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
      indexCopy2 = "[NSPEventsPredictorTrainingBatchProvider featuresAtIndex:]";
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null prevEvents", &v16, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)init:(id)init inputShape:(id)shape targetShape:(id)targetShape
{
  initCopy = init;
  shapeCopy = shape;
  targetShapeCopy = targetShape;
  v11 = [shapeCopy count];
  if (v11 == [targetShapeCopy count])
  {
    lastObject = [shapeCopy lastObject];
    lastObject2 = [targetShapeCopy lastObject];

    if (lastObject != lastObject2)
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        lastObject3 = [shapeCopy lastObject];
        lastObject4 = [targetShapeCopy lastObject];
        *buf = 138412546;
        v30 = lastObject3;
        v31 = 2112;
        v32 = lastObject4;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "The targetShape and inputShape not compatible (%@ vs %@)", buf, 0x16u);
      }

      goto LABEL_6;
    }

    v19 = [initCopy count];
    v20 = [shapeCopy objectAtIndexedSubscript:1];
    v21 = [v20 unsignedIntValue] + 1;

    if (v19 != v21)
    {
      v28.receiver = self;
      v28.super_class = NSPEventsPredictorTrainingBatchProvider;
      v25 = [(NSPEventsPredictorTrainingBatchProvider *)&v28 init];
      [(NSPEventsPredictorTrainingBatchProvider *)v25 setTrainingData:initCopy];
      [(NSPEventsPredictorTrainingBatchProvider *)v25 setInputShape:shapeCopy];
      [(NSPEventsPredictorTrainingBatchProvider *)v25 setTargetShape:targetShapeCopy];
      v26 = [initCopy count];
      v27 = [shapeCopy objectAtIndexedSubscript:1];
      -[NSPEventsPredictorTrainingBatchProvider setCount:](v25, "setCount:", &v26[~[v27 unsignedIntValue]]);

      self = v25;
      selfCopy = self;
      goto LABEL_7;
    }

    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v30 = [initCopy count];
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
      v30 = [shapeCopy count];
      v31 = 2048;
      v32 = [targetShapeCopy count];
      v22 = "The targetShape dimensions not same as inputShape dimensions. (%lu vs %lu)";
      v23 = v14;
      v24 = 22;
      goto LABEL_13;
    }
  }

LABEL_6:

  selfCopy = 0;
LABEL_7:

  return selfCopy;
}

@end