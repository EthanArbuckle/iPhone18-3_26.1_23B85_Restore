@interface APExternalReferenceNode
- (APExpressionNodeProtocol)parent;
- (APExternalReferenceNode)initWithIdentifier:(id)identifier;
- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error;
@end

@implementation APExternalReferenceNode

- (APExternalReferenceNode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = APExternalReferenceNode;
  v6 = [(APExternalReferenceNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  identifier = [(APExternalReferenceNode *)self identifier];
  v8 = [libraryCopy referenceFromIdentifier:identifier error:error];

  if (v8)
  {
    v9 = [v8 evaluateUsingLibrary:libraryCopy error:error];
  }

  else
  {
    identifier2 = [(APExternalReferenceNode *)self identifier];
    v11 = [NSString stringWithFormat:@"Unable to resolve node with identifier '%@'", identifier2];

    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (error)
    {
      v15 = NSLocalizedDescriptionKey;
      v16 = v11;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1131 userInfo:v13];
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