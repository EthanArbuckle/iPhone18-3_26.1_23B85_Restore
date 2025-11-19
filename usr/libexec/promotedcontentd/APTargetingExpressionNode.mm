@interface APTargetingExpressionNode
- (APExpressionNodeProtocol)parent;
- (APTargetingExpressionNode)initWithParent:(id)a3 identifier:(id)a4 expressionOrReference:(id)a5 subExpressions:(id)a6 data:(id)a7 error:(id *)a8;
- (BOOL)evaluateUsingLibrary:(id)a3 error:(id *)a4;
- (id)_evaluatableChildNode:(unint64_t)a3 error:(id *)a4;
- (id)_initWithExpression:(id)a3 subExpressions:(id)a4 data:(id)a5 error:(id *)a6;
- (id)_initWithReference:(id)a3 subExpressions:(id)a4 data:(id)a5 error:(id *)a6;
- (id)createChildrenFromExpression:(id)a3 subExpressions:(id)a4 data:(id)a5 error:(id *)a6;
- (int)level;
@end

@implementation APTargetingExpressionNode

- (APTargetingExpressionNode)initWithParent:(id)a3 identifier:(id)a4 expressionOrReference:(id)a5 subExpressions:(id)a6 data:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27.receiver = self;
  v27.super_class = APTargetingExpressionNode;
  v19 = [(APTargetingExpressionNode *)&v27 init];
  p_isa = &v19->super.isa;
  if (!v19)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v19->_identifier, a4);
  objc_storeWeak(p_isa + 1, v14);
  if ([p_isa level] < 6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [p_isa _initWithExpression:v16 subExpressions:v17 data:v18 error:a8];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a8)
        {
          goto LABEL_11;
        }

        v25 = [NSString stringWithFormat:@"Unknown expression type in %@", p_isa];
        v28 = NSLocalizedDescriptionKey;
        v29 = v25;
        v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *a8 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1122 userInfo:v26];

        goto LABEL_5;
      }

      v23 = [p_isa _initWithReference:v16 subExpressions:v17 data:v18 error:a8];
    }

    p_isa = v23;
    a8 = p_isa;
    goto LABEL_11;
  }

  if (a8)
  {
    v21 = [NSString stringWithFormat:@"Exceeded maximum nesting level of %d", 5];
    v30 = NSLocalizedDescriptionKey;
    v31 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *a8 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1111 userInfo:v22];

LABEL_5:
    a8 = 0;
  }

LABEL_11:

  return a8;
}

- (id)_initWithExpression:(id)a3 subExpressions:(id)a4 data:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && [v10 count] > 1)
  {
    v15 = opTokens();
    v16 = [v10 objectAtIndexedSubscript:0];
    v13 = [v15 objectForKey:v16];

    if (v13)
    {
      v17 = [v13 integerValue];
      if (v17)
      {
        [(APTargetingExpressionNode *)self setOperator:v17];
        a6 = [(APTargetingExpressionNode *)self createChildrenFromExpression:v10 subExpressions:v11 data:v12 error:a6];
LABEL_14:

        goto LABEL_15;
      }

      if (!a6)
      {
        goto LABEL_14;
      }

      v18 = [NSString stringWithFormat:@"Unknown operator in expression %@", v10];
      v22 = NSLocalizedDescriptionKey;
      v23 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v20 = -1110;
    }

    else
    {
      if (!a6)
      {
        goto LABEL_14;
      }

      v18 = [NSString stringWithFormat:@"Operator expected.\n%@", v10];
      v24 = NSLocalizedDescriptionKey;
      v25 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v20 = -1114;
    }

    *a6 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:v20 userInfo:v19];

    goto LABEL_13;
  }

  if (a6)
  {
    v13 = [NSString stringWithFormat:@"Expression requires at least 2 elements.\n%@", v10];
    v26 = NSLocalizedDescriptionKey;
    v27 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *a6 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1114 userInfo:v14];

LABEL_13:
    a6 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return a6;
}

- (id)_initWithReference:(id)a3 subExpressions:(id)a4 data:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v12 objectForKey:v11];
  if (v14)
  {
    self = [(APTargetingExpressionNode *)self _initWithExpression:v14 subExpressions:v12 data:v13 error:a6];
  }

  else
  {
    objc_storeStrong(&self->_identifier, a3);
  }

  v15 = self;

  return v15;
}

- (id)createChildrenFromExpression:(id)a3 subExpressions:(id)a4 data:(id)a5 error:(id *)a6
{
  v9 = a3;
  v37 = a4;
  v10 = a5;
  v11 = +[NSMutableArray array];
  if ([v9 count] < 2)
  {
LABEL_23:
    v30 = [v11 copy];
    [(APTargetingExpressionNode *)self setChildren:v30];

    v31 = self;
    goto LABEL_24;
  }

  v12 = 1;
  v35 = self;
  v36 = v10;
  while (1)
  {
    v13 = [v9 objectAtIndexedSubscript:v12];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v15 = [v9 objectAtIndexedSubscript:v12];
    if (isKindOfClass)
    {
      break;
    }

    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v22 = [APTargetingExpressionNode alloc];
      v15 = [v9 objectAtIndexedSubscript:v12];
      v20 = [(APTargetingExpressionNode *)v22 initWithParent:self identifier:0 expressionOrReference:v15 subExpressions:v37 data:v10 error:a6];
      goto LABEL_20;
    }

LABEL_22:
    if (++v12 >= [v9 count])
    {
      goto LABEL_23;
    }
  }

  v16 = opTokens();
  v17 = [v16 objectForKeyedSubscript:v15];

  if (!v17)
  {
    v18 = v11;
    v19 = [v37 objectForKeyedSubscript:v15];
    if (v19)
    {
      v20 = [[APTargetingExpressionNode alloc] initWithParent:self identifier:v15 expressionOrReference:v15 subExpressions:v37 data:v10 error:a6];
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
      v23 = [v10 objectForKeyedSubscript:v15];
      if (v23)
      {
        v24 = [APDataSourceNode alloc];
        v25 = [v10 objectForKeyedSubscript:v15];
        v20 = [(APDataSourceNode *)v24 initWithParent:self identifier:v15 dataSource:v25 error:a6];

        v10 = v36;
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

    v26 = [(APTargetingExpressionNode *)self identifier];
    v27 = [NSString stringWithFormat:@"Unable to create child node %@ for node %@. Reference not found.", v15, v26];

    v28 = APLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (a6)
    {
      v39 = NSLocalizedDescriptionKey;
      v40 = v27;
      v29 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *a6 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1128 userInfo:v29];
    }

    self = v35;
    v10 = v36;
    goto LABEL_19;
  }

  if (a6)
  {
    v33 = [NSString stringWithFormat:@"Duplicate operator '%@'", v15];
    v43 = NSLocalizedDescriptionKey;
    v44 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    *a6 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1118 userInfo:v34];
  }

  v31 = 0;
LABEL_24:

  return v31;
}

- (int)level
{
  v2 = [(APTargetingExpressionNode *)self parent];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    ++v4;
    v5 = [v3 parent];

    v3 = v5;
  }

  while (v5);
  return v4;
}

- (BOOL)evaluateUsingLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(APTargetingExpressionNode *)self children];
  if (v7)
  {
    v8 = v7;
    v9 = [(APTargetingExpressionNode *)self children];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [(APTargetingExpressionNode *)self _evaluatableChildNode:0 error:a4];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 evaluateUsingLibrary:v6 error:a4];
        if ([(APTargetingExpressionNode *)self operator]== 4)
        {
          LOBYTE(v13) = v13 ^ 1;
LABEL_22:

          goto LABEL_23;
        }

        v14 = [(APTargetingExpressionNode *)self children];
        v15 = [v14 count];

        if (v15 < 2)
        {
          goto LABEL_22;
        }

        v16 = 1;
        while (1)
        {
          v17 = v12;
          v12 = [(APTargetingExpressionNode *)self _evaluatableChildNode:v16 error:a4];

          if (!v12)
          {
            break;
          }

          v18 = [v12 evaluateUsingLibrary:v6 error:a4];
          if (a4)
          {
            if (*a4)
            {
              break;
            }
          }

          v19 = [(APTargetingExpressionNode *)self operator];
          if (v19 == 3)
          {
            v13 |= v18;
          }

          else if (v19 == 2)
          {
            v13 &= v18;
          }

          else if (a4)
          {
            [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1110 userInfo:0];
            *a4 = v13 = 0;
          }

          else
          {
            v13 = 0;
          }

          ++v16;
          v20 = [(APTargetingExpressionNode *)self children];
          v21 = [v20 count];

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

- (id)_evaluatableChildNode:(unint64_t)a3 error:(id *)a4
{
  v7 = [(APTargetingExpressionNode *)self children];
  if (v7 && (v8 = v7, -[APTargetingExpressionNode children](self, "children"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8, v10 > a3))
  {
    v11 = [(APTargetingExpressionNode *)self children];
    v12 = [v11 objectAtIndexedSubscript:a3];

    if ([v12 conformsToProtocol:&OBJC_PROTOCOL___APExpressionEvaluationProtocol])
    {
      v13 = v12;
    }

    else
    {
      v14 = [NSString stringWithFormat:@"Child node %lu does not conform to APExpressionEvaluationProtocol.", a3];
      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (a4)
      {
        v18 = NSLocalizedDescriptionKey;
        v19 = v14;
        v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *a4 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1121 userInfo:v16];
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