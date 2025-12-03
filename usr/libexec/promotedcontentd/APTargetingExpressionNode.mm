@interface APTargetingExpressionNode
- (APExpressionNodeProtocol)parent;
- (APTargetingExpressionNode)initWithParent:(id)parent identifier:(id)identifier expressionOrReference:(id)reference subExpressions:(id)expressions data:(id)data error:(id *)error;
- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error;
- (id)_evaluatableChildNode:(unint64_t)node error:(id *)error;
- (id)_initWithExpression:(id)expression subExpressions:(id)expressions data:(id)data error:(id *)error;
- (id)_initWithReference:(id)reference subExpressions:(id)expressions data:(id)data error:(id *)error;
- (id)createChildrenFromExpression:(id)expression subExpressions:(id)expressions data:(id)data error:(id *)error;
- (int)level;
@end

@implementation APTargetingExpressionNode

- (APTargetingExpressionNode)initWithParent:(id)parent identifier:(id)identifier expressionOrReference:(id)reference subExpressions:(id)expressions data:(id)data error:(id *)error
{
  parentCopy = parent;
  identifierCopy = identifier;
  referenceCopy = reference;
  expressionsCopy = expressions;
  dataCopy = data;
  v27.receiver = self;
  v27.super_class = APTargetingExpressionNode;
  v19 = [(APTargetingExpressionNode *)&v27 init];
  p_isa = &v19->super.isa;
  if (!v19)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v19->_identifier, identifier);
  objc_storeWeak(p_isa + 1, parentCopy);
  if ([p_isa level] < 6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [p_isa _initWithExpression:referenceCopy subExpressions:expressionsCopy data:dataCopy error:error];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          goto LABEL_11;
        }

        p_isa = [NSString stringWithFormat:@"Unknown expression type in %@", p_isa];
        v28 = NSLocalizedDescriptionKey;
        v29 = p_isa;
        v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1122 userInfo:v26];

        goto LABEL_5;
      }

      v23 = [p_isa _initWithReference:referenceCopy subExpressions:expressionsCopy data:dataCopy error:error];
    }

    p_isa = v23;
    error = p_isa;
    goto LABEL_11;
  }

  if (error)
  {
    v21 = [NSString stringWithFormat:@"Exceeded maximum nesting level of %d", 5];
    v30 = NSLocalizedDescriptionKey;
    v31 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1111 userInfo:v22];

LABEL_5:
    error = 0;
  }

LABEL_11:

  return error;
}

- (id)_initWithExpression:(id)expression subExpressions:(id)expressions data:(id)data error:(id *)error
{
  expressionCopy = expression;
  expressionsCopy = expressions;
  dataCopy = data;
  if (expressionCopy && [expressionCopy count] > 1)
  {
    v15 = opTokens();
    v16 = [expressionCopy objectAtIndexedSubscript:0];
    expressionCopy2 = [v15 objectForKey:v16];

    if (expressionCopy2)
    {
      integerValue = [expressionCopy2 integerValue];
      if (integerValue)
      {
        [(APTargetingExpressionNode *)self setOperator:integerValue];
        error = [(APTargetingExpressionNode *)self createChildrenFromExpression:expressionCopy subExpressions:expressionsCopy data:dataCopy error:error];
LABEL_14:

        goto LABEL_15;
      }

      if (!error)
      {
        goto LABEL_14;
      }

      expressionCopy = [NSString stringWithFormat:@"Unknown operator in expression %@", expressionCopy];
      v22 = NSLocalizedDescriptionKey;
      v23 = expressionCopy;
      v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v20 = -1110;
    }

    else
    {
      if (!error)
      {
        goto LABEL_14;
      }

      expressionCopy = [NSString stringWithFormat:@"Operator expected.\n%@", expressionCopy];
      v24 = NSLocalizedDescriptionKey;
      v25 = expressionCopy;
      v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v20 = -1114;
    }

    *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:v20 userInfo:v19];

    goto LABEL_13;
  }

  if (error)
  {
    expressionCopy2 = [NSString stringWithFormat:@"Expression requires at least 2 elements.\n%@", expressionCopy];
    v26 = NSLocalizedDescriptionKey;
    v27 = expressionCopy2;
    v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1114 userInfo:v14];

LABEL_13:
    error = 0;
    goto LABEL_14;
  }

LABEL_15:

  return error;
}

- (id)_initWithReference:(id)reference subExpressions:(id)expressions data:(id)data error:(id *)error
{
  referenceCopy = reference;
  expressionsCopy = expressions;
  dataCopy = data;
  v14 = [expressionsCopy objectForKey:referenceCopy];
  if (v14)
  {
    self = [(APTargetingExpressionNode *)self _initWithExpression:v14 subExpressions:expressionsCopy data:dataCopy error:error];
  }

  else
  {
    objc_storeStrong(&self->_identifier, reference);
  }

  selfCopy = self;

  return selfCopy;
}

- (id)createChildrenFromExpression:(id)expression subExpressions:(id)expressions data:(id)data error:(id *)error
{
  expressionCopy = expression;
  expressionsCopy = expressions;
  dataCopy = data;
  v11 = +[NSMutableArray array];
  if ([expressionCopy count] < 2)
  {
LABEL_23:
    v30 = [v11 copy];
    [(APTargetingExpressionNode *)self setChildren:v30];

    selfCopy = self;
    goto LABEL_24;
  }

  v12 = 1;
  selfCopy2 = self;
  v36 = dataCopy;
  while (1)
  {
    v13 = [expressionCopy objectAtIndexedSubscript:v12];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v15 = [expressionCopy objectAtIndexedSubscript:v12];
    if (isKindOfClass)
    {
      break;
    }

    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v22 = [APTargetingExpressionNode alloc];
      v15 = [expressionCopy objectAtIndexedSubscript:v12];
      v20 = [(APTargetingExpressionNode *)v22 initWithParent:self identifier:0 expressionOrReference:v15 subExpressions:expressionsCopy data:dataCopy error:error];
      goto LABEL_20;
    }

LABEL_22:
    if (++v12 >= [expressionCopy count])
    {
      goto LABEL_23;
    }
  }

  v16 = opTokens();
  v17 = [v16 objectForKeyedSubscript:v15];

  if (!v17)
  {
    v18 = v11;
    v19 = [expressionsCopy objectForKeyedSubscript:v15];
    if (v19)
    {
      v20 = [[APTargetingExpressionNode alloc] initWithParent:self identifier:v15 expressionOrReference:v15 subExpressions:expressionsCopy data:dataCopy error:error];
      if (v20)
      {
LABEL_7:
        [(APTargetingExpressionNode *)v20 setParent:self];
LABEL_19:

        v11 = v18;
LABEL_20:

        if (v20)
        {
          [v11 addObject:v20];
        }

        goto LABEL_22;
      }
    }

    else
    {
      v23 = [dataCopy objectForKeyedSubscript:v15];
      if (v23)
      {
        v24 = [APDataSourceNode alloc];
        v25 = [dataCopy objectForKeyedSubscript:v15];
        v20 = [(APDataSourceNode *)v24 initWithParent:self identifier:v15 dataSource:v25 error:error];

        dataCopy = v36;
      }

      else
      {
        v20 = [[APExternalReferenceNode alloc] initWithIdentifier:v15];
      }

      if (v20)
      {
        goto LABEL_7;
      }
    }

    identifier = [(APTargetingExpressionNode *)self identifier];
    v27 = [NSString stringWithFormat:@"Unable to create child node %@ for node %@. Reference not found.", v15, identifier];

    v28 = APLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (error)
    {
      v39 = NSLocalizedDescriptionKey;
      v40 = v27;
      v29 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1128 userInfo:v29];
    }

    self = selfCopy2;
    dataCopy = v36;
    goto LABEL_19;
  }

  if (error)
  {
    v33 = [NSString stringWithFormat:@"Duplicate operator '%@'", v15];
    v43 = NSLocalizedDescriptionKey;
    v44 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1118 userInfo:v34];
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

- (int)level
{
  parent = [(APTargetingExpressionNode *)self parent];
  if (!parent)
  {
    return 0;
  }

  v3 = parent;
  v4 = 0;
  do
  {
    ++v4;
    parent2 = [v3 parent];

    v3 = parent2;
  }

  while (parent2);
  return v4;
}

- (BOOL)evaluateUsingLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  children = [(APTargetingExpressionNode *)self children];
  if (children)
  {
    v8 = children;
    children2 = [(APTargetingExpressionNode *)self children];
    v10 = [children2 count];

    if (v10)
    {
      v11 = [(APTargetingExpressionNode *)self _evaluatableChildNode:0 error:error];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 evaluateUsingLibrary:libraryCopy error:error];
        if ([(APTargetingExpressionNode *)self operator]== 4)
        {
          LOBYTE(v13) = v13 ^ 1;
LABEL_22:

          goto LABEL_23;
        }

        children3 = [(APTargetingExpressionNode *)self children];
        v15 = [children3 count];

        if (v15 < 2)
        {
          goto LABEL_22;
        }

        v16 = 1;
        while (1)
        {
          v17 = v12;
          v12 = [(APTargetingExpressionNode *)self _evaluatableChildNode:v16 error:error];

          if (!v12)
          {
            break;
          }

          v18 = [v12 evaluateUsingLibrary:libraryCopy error:error];
          if (error)
          {
            if (*error)
            {
              break;
            }
          }

          operator = [(APTargetingExpressionNode *)self operator];
          if (operator == 3)
          {
            v13 |= v18;
          }

          else if (operator == 2)
          {
            v13 &= v18;
          }

          else if (error)
          {
            [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1110 userInfo:0];
            *error = v13 = 0;
          }

          else
          {
            v13 = 0;
          }

          ++v16;
          children4 = [(APTargetingExpressionNode *)self children];
          v21 = [children4 count];

          if (v16 >= v21)
          {
            goto LABEL_22;
          }
        }
      }

      LOBYTE(v13) = 0;
      goto LABEL_22;
    }
  }

  LOBYTE(v13) = 0;
LABEL_23:

  return v13 & 1;
}

- (id)_evaluatableChildNode:(unint64_t)node error:(id *)error
{
  children = [(APTargetingExpressionNode *)self children];
  if (children && (v8 = children, -[APTargetingExpressionNode children](self, "children"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8, v10 > node))
  {
    children2 = [(APTargetingExpressionNode *)self children];
    v12 = [children2 objectAtIndexedSubscript:node];

    if ([v12 conformsToProtocol:&OBJC_PROTOCOL___APExpressionEvaluationProtocol])
    {
      v13 = v12;
    }

    else
    {
      node = [NSString stringWithFormat:@"Child node %lu does not conform to APExpressionEvaluationProtocol.", node];
      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = node;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (error)
      {
        v18 = NSLocalizedDescriptionKey;
        v19 = node;
        v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1121 userInfo:v16];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (APExpressionNodeProtocol)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end