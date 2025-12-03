@interface APTargetingExpression
- (APExpressionEvaluationProtocol)rootNode;
- (APTargetingExpression)initWithDictionary:(id)dictionary;
- (APTargetingExpression)initWithString:(id)string;
- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error;
@end

@implementation APTargetingExpression

- (APTargetingExpression)initWithString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    v6 = [v5 dataUsingEncoding:4];
    v17 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:4 error:&v17];
    v8 = v17;
    v9 = v17;
    if (v9)
    {
      objc_storeStrong(&self->_error, v8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = [(APTargetingExpression *)self initWithDictionary:v7];
        selfCopy = self;
LABEL_10:

        goto LABEL_11;
      }

      v12 = [NSString stringWithFormat:@"Invalid JSON object type in '%@'", v5];
      v18 = NSLocalizedDescriptionKey;
      v19 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v14 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v13];
      error = self->_error;
      self->_error = v14;
    }

    selfCopy = 0;
    goto LABEL_10;
  }

  v20 = NSLocalizedDescriptionKey;
  v21 = @"Targeting expression is nil or empty.";
  v9 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v10 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1122 userInfo:v9];
  selfCopy = 0;
  v6 = self->_error;
  self->_error = v10;
LABEL_11:

  return selfCopy;
}

- (APTargetingExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = APTargetingExpression;
  v5 = [(APTargetingExpression *)&v39 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  allKeys = [dictionaryCopy allKeys];
  firstObject = [allKeys firstObject];
  identifier = v5->_identifier;
  v5->_identifier = firstObject;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v48 = NSLocalizedDescriptionKey;
    v49 = @"'identifier' must be a string.";
    v24 = &v49;
    v25 = &v48;
LABEL_13:
    v26 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:1];
    v27 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v26];
    error = v5->_error;
    v5->_error = v27;

    v29 = v5;
    goto LABEL_18;
  }

  allValues = [dictionaryCopy allValues];
  firstObject2 = [allValues firstObject];
  expressionDict = v5->_expressionDict;
  v5->_expressionDict = firstObject2;

  expressionDict = [(APTargetingExpression *)v5 expressionDict];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v46 = NSLocalizedDescriptionKey;
    v47 = @"Targeting expression must be a dictionary.";
    v24 = &v47;
    v25 = &v46;
    goto LABEL_13;
  }

  expressionDict2 = [(APTargetingExpression *)v5 expressionDict];
  v15 = [expressionDict2 objectForKeyedSubscript:@"expression"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    expressionDict3 = [(APTargetingExpression *)v5 expressionDict];
    v17 = [expressionDict3 objectForKeyedSubscript:@"subexpressions"];

    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v42 = NSLocalizedDescriptionKey;
      v43 = @"'subExpressions' must be a dictionary.";
      v34 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v35 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v34];
      v36 = v5->_error;
      v5->_error = v35;

      v37 = v5;
    }

    else
    {
      expressionDict4 = [(APTargetingExpression *)v5 expressionDict];
      v19 = [expressionDict4 objectForKeyedSubscript:@"data"];

      if (v19)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v40 = NSLocalizedDescriptionKey;
          v41 = @"'data' must be a dictionary.";
          v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v21 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v20];
          v22 = v5->_error;
          v5->_error = v21;
        }
      }

      v23 = v5;
    }
  }

  else
  {
    v44 = NSLocalizedDescriptionKey;
    v45 = @"'expression' must be an array.";
    v30 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v31 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v30];
    v32 = v5->_error;
    v5->_error = v31;

    v33 = v5;
  }

LABEL_18:
  return v5;
}

- (APExpressionEvaluationProtocol)rootNode
{
  rootNode = self->_rootNode;
  if (!rootNode)
  {
    v4 = [APTargetingExpressionNode alloc];
    identifier = [(APTargetingExpression *)self identifier];
    expressionDict = [(APTargetingExpression *)self expressionDict];
    v7 = [expressionDict objectForKeyedSubscript:@"expression"];
    expressionDict2 = [(APTargetingExpression *)self expressionDict];
    v9 = [expressionDict2 objectForKeyedSubscript:@"subexpressions"];
    expressionDict3 = [(APTargetingExpression *)self expressionDict];
    v11 = [expressionDict3 objectForKeyedSubscript:@"data"];
    v17 = 0;
    v12 = [(APTargetingExpressionNode *)v4 initWithParent:0 identifier:identifier expressionOrReference:v7 subExpressions:v9 data:v11 error:&v17];
    v13 = v17;
    v14 = self->_rootNode;
    self->_rootNode = v12;

    error = self->_error;
    self->_error = v13;

    rootNode = self->_rootNode;
  }

  return rootNode;
}

- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  rootNode = [(APTargetingExpression *)self rootNode];
  LOBYTE(error) = [rootNode evaluateUsingLibrary:libraryCopy error:error];

  return error;
}

@end