@interface APDataSourceNode
- (APDataSourceNode)initWithParent:(id)a3 identifier:(id)a4 dataSource:(id)a5 error:(id *)a6;
- (APExpressionNodeProtocol)parent;
- (BOOL)evaluateUsingLibrary:(id)a3 error:(id *)a4;
@end

@implementation APDataSourceNode

- (APDataSourceNode)initWithParent:(id)a3 identifier:(id)a4 dataSource:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = APDataSourceNode;
  v13 = [(APDataSourceNode *)&v20 init];
  if (!v13)
  {
    a6 = 0;
    goto LABEL_13;
  }

  v14 = [v12 objectForKeyedSubscript:@"adaptor"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_adaptorIdentifier, v14);
      v15 = [v12 objectForKeyedSubscript:@"inputs"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        objc_storeStrong(&v13->_identifier, a4);
        objc_storeStrong(&v13->_inputs, v15);
        objc_storeWeak(&v13->_parent, v10);
        a6 = v13;
LABEL_10:

        goto LABEL_11;
      }

      if (!a6)
      {
        goto LABEL_10;
      }

      v18 = [NSString stringWithFormat:@"Adaptor '%@' specifies inputs which are not a dictionary.", v14];
      v21 = NSLocalizedDescriptionKey;
      v22 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a6 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v19];

LABEL_9:
      a6 = 0;
      goto LABEL_10;
    }
  }

  if (a6)
  {
    v15 = [NSString stringWithFormat:@"Adaptor name '%@' is nil or an invalid type.", v14];
    v23 = NSLocalizedDescriptionKey;
    v24 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *a6 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v16];

    goto LABEL_9;
  }

LABEL_11:

LABEL_13:
  return a6;
}

- (BOOL)evaluateUsingLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[APDataAdaptorRepository sharedRepository];
  v8 = [(APDataSourceNode *)self adaptorIdentifier];
  v9 = [v7 adaptorWithIdentifier:v8];

  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v11 = [(APDataSourceNode *)self adaptorIdentifier];
    v12 = [NSString stringWithFormat:@"Adaptor '%@' is not registered.", v11];

    v27 = NSLocalizedDescriptionKey;
    v28 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1130 userInfo:v13];

LABEL_8:
    LOBYTE(a4) = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v14 = [(APDataSourceNode *)self adaptorIdentifier];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [NSString stringWithFormat:@"Adaptor '%@' is of unsupported type '%@'.", v14, v16];

    v25 = NSLocalizedDescriptionKey;
    v26 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5203 userInfo:v18];

    goto LABEL_8;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v10 = [(APDataSourceNode *)self inputs];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10021C754;
  v20[3] = &unk_1004792E8;
  v20[5] = &v21;
  v20[6] = a4;
  v20[4] = self;
  [v9 runWithParametersSync:v10 handler:v20];

  LOBYTE(a4) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
LABEL_9:

  return a4 & 1;
}

- (APExpressionNodeProtocol)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end