@interface APExternalReferenceNode
- (APExpressionNodeProtocol)parent;
- (APExternalReferenceNode)initWithIdentifier:(id)a3;
- (BOOL)evaluateUsingLibrary:(id)a3 error:(id *)a4;
@end

@implementation APExternalReferenceNode

- (APExternalReferenceNode)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APExternalReferenceNode;
  v6 = [(APExternalReferenceNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (BOOL)evaluateUsingLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(APExternalReferenceNode *)self identifier];
  v8 = [v6 referenceFromIdentifier:v7 error:a4];

  if (v8)
  {
    v9 = [v8 evaluateUsingLibrary:v6 error:a4];
  }

  else
  {
    v10 = [(APExternalReferenceNode *)self identifier];
    v11 = [NSString stringWithFormat:@"Unable to resolve node with identifier '%@'", v10];

    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (a4)
    {
      v15 = NSLocalizedDescriptionKey;
      v16 = v11;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1131 userInfo:v13];
    }

    v9 = 0;
  }

  return v9;
}

- (APExpressionNodeProtocol)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end