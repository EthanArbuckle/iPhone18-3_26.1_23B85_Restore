@interface APBiomeDataAdaptor
- (BOOL)_validateParameters:(id *)parameters;
- (BOOL)addData:(id)data;
- (void)_run:(id)_run;
- (void)clearDataWithPredicate:(id)predicate;
@end

@implementation APBiomeDataAdaptor

- (BOOL)_validateParameters:(id *)parameters
{
  v29.receiver = self;
  v29.super_class = APBiomeDataAdaptor;
  if ([(APDataAdaptor *)&v29 _validateParameters:?])
  {
    parameters = [(APDataAdaptor *)self parameters];
    v6 = [parameters objectForKeyedSubscript:@"startDate"];
    if (v6)
    {
      parameters2 = [(APDataAdaptor *)self parameters];
      v8 = [parameters2 objectForKeyedSubscript:@"startDate"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = 1;
      }

      else
      {
        parameters3 = [(APDataAdaptor *)self parameters];
        v12 = [parameters3 objectForKeyedSubscript:@"startDate"];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass() & 1;
      }
    }

    else
    {
      v9 = 1;
    }

    parameters4 = [(APDataAdaptor *)self parameters];
    v14 = [parameters4 objectForKeyedSubscript:@"endDate"];
    if (v14)
    {
      parameters5 = [(APDataAdaptor *)self parameters];
      v16 = [parameters5 objectForKeyedSubscript:@"endDate"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        parameters6 = [(APDataAdaptor *)self parameters];
        v18 = [parameters6 objectForKeyedSubscript:@"endDate"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
        }
      }
    }

    parameters7 = [(APDataAdaptor *)self parameters];
    v20 = [parameters7 objectForKeyedSubscript:@"maxEvents"];
    v21 = [(APDataAdaptor *)self _checkClassType:v20 name:@"maxEvents" expectedClass:objc_opt_class() error:parameters];
    if (v9)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    parameters8 = [(APDataAdaptor *)self parameters];
    v24 = [parameters8 objectForKeyedSubscript:@"lastN"];
    v25 = [(APDataAdaptor *)self _checkClassType:v24 name:@"lastN" expectedClass:objc_opt_class() error:parameters];

    parameters9 = [(APDataAdaptor *)self parameters];
    v27 = [parameters9 objectForKeyedSubscript:@"reverse"];
    v10 = v22 & v25 & [(APDataAdaptor *)self _checkClassType:v27 name:@"reverse" expectedClass:objc_opt_class() error:parameters];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_run:(id)_run
{
  _runCopy = _run;
  v4 = objc_retainBlock(_runCopy);
  handler = self->_handler;
  self->_handler = v4;

  parameters = [(APDataAdaptor *)self parameters];
  v7 = [parameters objectForKeyedSubscript:@"startDate"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  parameters2 = [(APDataAdaptor *)self parameters];
  v10 = [parameters2 objectForKeyedSubscript:@"startDate"];

  if (isKindOfClass)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (isKindOfClass)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  parameters3 = [(APDataAdaptor *)self parameters];
  v14 = [parameters3 objectForKeyedSubscript:@"endDate"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  parameters4 = [(APDataAdaptor *)self parameters];
  v17 = [parameters4 objectForKeyedSubscript:@"endDate"];
  if (v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  parameters5 = [(APDataAdaptor *)self parameters];
  v21 = [parameters5 objectForKeyedSubscript:@"maxEvents"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  unsignedIntValue = 0;
  if (v22)
  {
    parameters6 = [(APDataAdaptor *)self parameters];
    v25 = [parameters6 objectForKeyedSubscript:@"maxEvents"];
    unsignedIntValue = [v25 unsignedIntValue];
  }

  parameters7 = [(APDataAdaptor *)self parameters];
  v27 = [parameters7 objectForKeyedSubscript:@"lastN"];
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    parameters8 = [(APDataAdaptor *)self parameters];
    v30 = [parameters8 objectForKeyedSubscript:@"lastN"];
    unsignedIntValue2 = [v30 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = 0;
  }

  parameters9 = [(APDataAdaptor *)self parameters];
  v32 = [parameters9 objectForKeyedSubscript:@"reverse"];
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (v33)
  {
    parameters10 = [(APDataAdaptor *)self parameters];
    v35 = [parameters10 objectForKeyedSubscript:@"reverse"];
    bOOLValue = [v35 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  if (!(v11 | v18))
  {
    v37 = 0;
    goto LABEL_36;
  }

  v37 = objc_alloc_init(NSDateFormatter);
  [v37 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (v11)
  {
    v38 = [v37 dateFromString:v11];

    if (v38)
    {
      v40 = 0;
      v12 = v38;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v40 = sub_100218D1C(v39, v11);
      v12 = 0;
      if (!v18)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v40 = 0;
    if (!v18)
    {
LABEL_32:
      if (v40)
      {
        goto LABEL_33;
      }

LABEL_36:
      _biomeStream = [(APBiomeDataAdaptor *)self _biomeStream];
      [(APBiomeDataAdaptor *)self setStream:_biomeStream];

      stream = [(APBiomeDataAdaptor *)self stream];

      if (stream)
      {
        v48 = [[BMPublisherOptions alloc] initWithStartDate:v12 endDate:v19 maxEvents:unsignedIntValue lastN:v56 reversed:bOOLValue];
        stream2 = [(APBiomeDataAdaptor *)self stream];
        v50 = [stream2 publisherWithOptions:v48];

        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100218E10;
        v60[3] = &unk_1004791C0;
        v60[4] = self;
        v44 = _runCopy;
        v61 = _runCopy;
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_100218F8C;
        v58[3] = &unk_100479208;
        v59 = v61;
        v51 = [v50 sinkWithCompletion:v60 receiveInput:v58];

        v40 = 0;
        goto LABEL_41;
      }

      v62 = NSLocalizedDescriptionKey;
      v63 = @"Biome stream must not be nil.";
      v52 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v40 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5200 userInfo:v52];

      handler = [(APBiomeDataAdaptor *)self handler];

      if (handler)
      {
        handler2 = [(APBiomeDataAdaptor *)self handler];
        (handler2)[2](handler2, 0, 0, v40);
      }

LABEL_40:
      v44 = _runCopy;
      goto LABEL_41;
    }
  }

  v41 = [v37 dateFromString:v18];

  if (v41)
  {
    v19 = v41;
    goto LABEL_32;
  }

  v45 = sub_100218D1C(v42, v18);

  v19 = 0;
  v40 = v45;
  if (!v45)
  {
    goto LABEL_36;
  }

LABEL_33:
  handler3 = [(APBiomeDataAdaptor *)self handler];

  if (!handler3)
  {
    goto LABEL_40;
  }

  v44 = _runCopy;
  (*(_runCopy + 2))(_runCopy, 0, 0, v40);
LABEL_41:
}

- (BOOL)addData:(id)data
{
  dataCopy = data;
  _biomeStream = [(APBiomeDataAdaptor *)self _biomeStream];
  [(APBiomeDataAdaptor *)self setStream:_biomeStream];

  stream = [(APBiomeDataAdaptor *)self stream];

  if (!stream)
  {
    source = APLogForCategory();
    if (os_log_type_enabled(source, OS_LOG_TYPE_ERROR))
    {
      v22 = 138477827;
      v23 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, source, OS_LOG_TYPE_ERROR, "Error creating stream %{private}@", &v22, 0xCu);
    }

    goto LABEL_15;
  }

  stream2 = [(APBiomeDataAdaptor *)self stream];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v12 = objc_opt_class();
    source = NSStringFromClass(v12);
    stream3 = [(APBiomeDataAdaptor *)self stream];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      stream4 = [(APBiomeDataAdaptor *)self stream];
      identifier = [stream4 identifier];

      source = identifier;
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = source;
    }

    goto LABEL_15;
  }

  stream5 = [(APBiomeDataAdaptor *)self stream];
  source = [stream5 source];

  if (!source)
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Stream for %@ does not have a source", &v22, 0xCu);
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  [source sendEvent:dataCopy];
  v11 = 1;
LABEL_16:

  return v11;
}

- (void)clearDataWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100219594;
  block[3] = &unk_1004790A8;
  block[4] = self;
  if (qword_1004DF620 != -1)
  {
    dispatch_once(&qword_1004DF620, block);
  }

  stream = [(APBiomeDataAdaptor *)self stream];
  pruner = [stream pruner];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    stream2 = [(APBiomeDataAdaptor *)self stream];
    pruner2 = [stream2 pruner];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100219614;
    v10[3] = &unk_100479270;
    v11 = predicateCopy;
    [pruner2 deleteEventsPassingTest:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = APBiomeDataAdaptor;
    [(APDataAdaptor *)&v12 clearAllData];
  }
}

@end