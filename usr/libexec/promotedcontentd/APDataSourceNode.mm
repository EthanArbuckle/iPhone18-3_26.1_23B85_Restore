@interface APDataSourceNode
- (APDataSourceNode)initWithParent:(id)parent identifier:(id)identifier dataSource:(id)source error:(id *)error;
- (APExpressionNodeProtocol)parent;
- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error;
@end

@implementation APDataSourceNode

- (APDataSourceNode)initWithParent:(id)parent identifier:(id)identifier dataSource:(id)source error:(id *)error
{
  parentCopy = parent;
  identifierCopy = identifier;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = APDataSourceNode;
  v13 = [(APDataSourceNode *)&v20 init];
  if (!v13)
  {
    error = 0;
    goto LABEL_13;
  }

  v14 = [sourceCopy objectForKeyedSubscript:@"adaptor"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_adaptorIdentifier, v14);
      v15 = [sourceCopy objectForKeyedSubscript:@"inputs"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        objc_storeStrong(&v13->_identifier, identifier);
        objc_storeStrong(&v13->_inputs, v15);
        objc_storeWeak(&v13->_parent, parentCopy);
        error = v13;
LABEL_10:

        goto LABEL_11;
      }

      if (!error)
      {
        goto LABEL_10;
      }

      v18 = [NSString stringWithFormat:@"Adaptor '%@' specifies inputs which are not a dictionary.", v14];
      v21 = NSLocalizedDescriptionKey;
      v22 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v19];

LABEL_9:
      error = 0;
      goto LABEL_10;
    }
  }

  if (error)
  {
    v15 = [NSString stringWithFormat:@"Adaptor name '%@' is nil or an invalid type.", v14];
    v23 = NSLocalizedDescriptionKey;
    v24 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v16];

    goto LABEL_9;
  }

LABEL_11:

LABEL_13:
  return error;
}

- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v7 = +[APDataAdaptorRepository sharedRepository];
  adaptorIdentifier = [(APDataSourceNode *)self adaptorIdentifier];
  v9 = [v7 adaptorWithIdentifier:adaptorIdentifier];

  if (!v9)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    adaptorIdentifier2 = [(APDataSourceNode *)self adaptorIdentifier];
    v12 = [NSString stringWithFormat:@"Adaptor '%@' is not registered.", adaptorIdentifier2];

    v27 = NSLocalizedDescriptionKey;
    v28 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1130 userInfo:v13];

LABEL_8:
    LOBYTE(error) = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    adaptorIdentifier3 = [(APDataSourceNode *)self adaptorIdentifier];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [NSString stringWithFormat:@"Adaptor '%@' is of unsupported type '%@'.", adaptorIdentifier3, v16];

    v25 = NSLocalizedDescriptionKey;
    v26 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5203 userInfo:v18];

    goto LABEL_8;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  inputs = [(APDataSourceNode *)self inputs];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10021C754;
  v20[3] = &unk_1004792E8;
  v20[5] = &v21;
  v20[6] = error;
  v20[4] = self;
  [v9 runWithParametersSync:inputs handler:v20];

  LOBYTE(error) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
LABEL_9:

  return error & 1;
}

- (APExpressionNodeProtocol)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end