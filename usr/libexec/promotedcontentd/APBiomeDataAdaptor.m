@interface APBiomeDataAdaptor
- (BOOL)_validateParameters:(id *)a3;
- (BOOL)addData:(id)a3;
- (void)_run:(id)a3;
- (void)clearDataWithPredicate:(id)a3;
@end

@implementation APBiomeDataAdaptor

- (BOOL)_validateParameters:(id *)a3
{
  v29.receiver = self;
  v29.super_class = APBiomeDataAdaptor;
  if ([(APDataAdaptor *)&v29 _validateParameters:?])
  {
    v5 = [(APDataAdaptor *)self parameters];
    v6 = [v5 objectForKeyedSubscript:@"startDate"];
    if (v6)
    {
      v7 = [(APDataAdaptor *)self parameters];
      v8 = [v7 objectForKeyedSubscript:@"startDate"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = 1;
      }

      else
      {
        v11 = [(APDataAdaptor *)self parameters];
        v12 = [v11 objectForKeyedSubscript:@"startDate"];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass() & 1;
      }
    }

    else
    {
      v9 = 1;
    }

    v13 = [(APDataAdaptor *)self parameters];
    v14 = [v13 objectForKeyedSubscript:@"endDate"];
    if (v14)
    {
      v15 = [(APDataAdaptor *)self parameters];
      v16 = [v15 objectForKeyedSubscript:@"endDate"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = [(APDataAdaptor *)self parameters];
        v18 = [v17 objectForKeyedSubscript:@"endDate"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
        }
      }
    }

    v19 = [(APDataAdaptor *)self parameters];
    v20 = [v19 objectForKeyedSubscript:@"maxEvents"];
    v21 = [(APDataAdaptor *)self _checkClassType:v20 name:@"maxEvents" expectedClass:objc_opt_class() error:a3];
    if (v9)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(APDataAdaptor *)self parameters];
    v24 = [v23 objectForKeyedSubscript:@"lastN"];
    v25 = [(APDataAdaptor *)self _checkClassType:v24 name:@"lastN" expectedClass:objc_opt_class() error:a3];

    v26 = [(APDataAdaptor *)self parameters];
    v27 = [v26 objectForKeyedSubscript:@"reverse"];
    v10 = v22 & v25 & [(APDataAdaptor *)self _checkClassType:v27 name:@"reverse" expectedClass:objc_opt_class() error:a3];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_run:(id)a3
{
  v57 = a3;
  v4 = objc_retainBlock(v57);
  handler = self->_handler;
  self->_handler = v4;

  v6 = [(APDataAdaptor *)self parameters];
  v7 = [v6 objectForKeyedSubscript:@"startDate"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [(APDataAdaptor *)self parameters];
  v10 = [v9 objectForKeyedSubscript:@"startDate"];

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

  v13 = [(APDataAdaptor *)self parameters];
  v14 = [v13 objectForKeyedSubscript:@"endDate"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  v16 = [(APDataAdaptor *)self parameters];
  v17 = [v16 objectForKeyedSubscript:@"endDate"];
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

  v20 = [(APDataAdaptor *)self parameters];
  v21 = [v20 objectForKeyedSubscript:@"maxEvents"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  v23 = 0;
  if (v22)
  {
    v24 = [(APDataAdaptor *)self parameters];
    v25 = [v24 objectForKeyedSubscript:@"maxEvents"];
    v23 = [v25 unsignedIntValue];
  }

  v26 = [(APDataAdaptor *)self parameters];
  v27 = [v26 objectForKeyedSubscript:@"lastN"];
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    v29 = [(APDataAdaptor *)self parameters];
    v30 = [v29 objectForKeyedSubscript:@"lastN"];
    v55 = [v30 unsignedIntValue];
  }

  else
  {
    v55 = 0;
  }

  v31 = [(APDataAdaptor *)self parameters];
  v32 = [v31 objectForKeyedSubscript:@"reverse"];
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (v33)
  {
    v34 = [(APDataAdaptor *)self parameters];
    v35 = [v34 objectForKeyedSubscript:@"reverse"];
    v36 = [v35 BOOLValue];
  }

  else
  {
    v36 = 0;
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
      v46 = [(APBiomeDataAdaptor *)self _biomeStream];
      [(APBiomeDataAdaptor *)self setStream:v46];

      v47 = [(APBiomeDataAdaptor *)self stream];

      if (v47)
      {
        v48 = [[BMPublisherOptions alloc] initWithStartDate:v12 endDate:v19 maxEvents:v23 lastN:v56 reversed:v36];
        v49 = [(APBiomeDataAdaptor *)self stream];
        v50 = [v49 publisherWithOptions:v48];

        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100218E10;
        v60[3] = &unk_1004791C0;
        v60[4] = self;
        v44 = v57;
        v61 = v57;
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

      v53 = [(APBiomeDataAdaptor *)self handler];

      if (v53)
      {
        v54 = [(APBiomeDataAdaptor *)self handler];
        (v54)[2](v54, 0, 0, v40);
      }

LABEL_40:
      v44 = v57;
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
  v43 = [(APBiomeDataAdaptor *)self handler];

  if (!v43)
  {
    goto LABEL_40;
  }

  v44 = v57;
  (*(v57 + 2))(v57, 0, 0, v40);
LABEL_41:
}

- (BOOL)addData:(id)a3
{
  v4 = a3;
  v5 = [(APBiomeDataAdaptor *)self _biomeStream];
  [(APBiomeDataAdaptor *)self setStream:v5];

  v6 = [(APBiomeDataAdaptor *)self stream];

  if (!v6)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = 138477827;
      v23 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error creating stream %{private}@", &v22, 0xCu);
    }

    goto LABEL_15;
  }

  v7 = [(APBiomeDataAdaptor *)self stream];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v12 = objc_opt_class();
    v10 = NSStringFromClass(v12);
    v13 = [(APBiomeDataAdaptor *)self stream];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(APBiomeDataAdaptor *)self stream];
      v16 = [v15 identifier];

      v10 = v16;
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v10;
    }

    goto LABEL_15;
  }

  v9 = [(APBiomeDataAdaptor *)self stream];
  v10 = [v9 source];

  if (!v10)
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

  [v10 sendEvent:v4];
  v11 = 1;
LABEL_16:

  return v11;
}

- (void)clearDataWithPredicate:(id)a3
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100219594;
  block[3] = &unk_1004790A8;
  block[4] = self;
  if (qword_1004DF620 != -1)
  {
    dispatch_once(&qword_1004DF620, block);
  }

  v5 = [(APBiomeDataAdaptor *)self stream];
  v6 = [v5 pruner];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(APBiomeDataAdaptor *)self stream];
    v9 = [v8 pruner];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100219614;
    v10[3] = &unk_100479270;
    v11 = v4;
    [v9 deleteEventsPassingTest:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = APBiomeDataAdaptor;
    [(APDataAdaptor *)&v12 clearAllData];
  }
}

@end