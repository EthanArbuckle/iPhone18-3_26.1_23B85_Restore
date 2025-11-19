@interface PCSCTreeNode
+ (id)_convertOperator:(int64_t)a3;
+ (id)_translateChildNodesToExpressionFormat:(id)a3 dataDictionary:(id)a4 error:(id *)a5;
+ (id)_translateNodeToDataAdaptor:(id)a3 dataDictionary:(id)a4 error:(id *)a5;
+ (id)_translateRootNodeToExpressionFormat:(id)a3 error:(id *)a4;
- (PCSCTreeNode)initWithExpression:(id)a3 version:(int64_t)a4 andParent:(id)a5 error:(id *)a6;
- (PCSCTreeNode)parent;
- (id)description;
- (int)level;
@end

@implementation PCSCTreeNode

- (PCSCTreeNode)initWithExpression:(id)a3 version:(int64_t)a4 andParent:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v56.receiver = self;
  v56.super_class = PCSCTreeNode;
  v12 = [(PCSCTreeNode *)&v56 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_53;
  }

  objc_storeWeak(&v12->_parent, v11);
  v13->_version = a4;
  if ([(PCSCTreeNode *)v13 level]>= 6)
  {
    if (!a6)
    {
      goto LABEL_53;
    }

    v14 = -1111;
LABEL_5:
    [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:v14 userInfo:0];
    *a6 = v15 = 0;
    goto LABEL_54;
  }

  opTokens = v13->_opTokens;
  v13->_opTokens = &off_1004947A8;

  typeTokens = v13->_typeTokens;
  v13->_typeTokens = &off_1004947D0;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a6)
      {
        goto LABEL_53;
      }

      v14 = -1112;
      goto LABEL_5;
    }

    v38 = v10;
    v39 = v13->_typeTokens;
    v40 = [(NSDictionary *)v38 objectForKeyedSubscript:@"type"];
    v41 = [(NSDictionary *)v39 objectForKeyedSubscript:v40];
    -[PCSCTreeNode setType:](v13, "setType:", [v41 integerValue]);

    if ([(PCSCTreeNode *)v13 type]!= 1)
    {
      if (a6)
      {
        *a6 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1120 userInfo:0];
      }

      goto LABEL_53;
    }

    v42 = APLogForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = +[APIDAccountProvider privateUserAccount];
      v44 = [v43 iTunesDSID];
      *buf = 136643587;
      v58 = "[PCSCTreeNode initWithExpression:version:andParent:error:]";
      v59 = 2114;
      v60 = v38;
      v61 = 2160;
      v62 = 1752392040;
      v63 = 2112;
      v64 = v44;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[%{sensitive}s]: found StatusCondition node: %{public}@. DSID %{mask.hash}@", buf, 0x2Au);
    }

    value = v13->_value;
    v13->_value = v38;
    goto LABEL_30;
  }

  v50 = v11;
  v18 = v10;
  v19 = +[NSMutableArray array];
  [(PCSCTreeNode *)v13 setChildren:v19];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  value = v18;
  v21 = [(NSDictionary *)value countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  v23 = *v53;
  while (2)
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v53 != v23)
      {
        objc_enumerationMutation(value);
      }

      v25 = *(*(&v52 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        v27 = [(NSDictionary *)v13->_opTokens objectForKey:v26];
        v28 = [v27 integerValue];

        if (v28)
        {
          if (![(PCSCTreeNode *)v13 operator])
          {
            [(PCSCTreeNode *)v13 setOperator:v28];
            goto LABEL_19;
          }

          if (a6)
          {
            v45 = -1118;
            goto LABEL_44;
          }
        }

        else if (a6)
        {
          v45 = -1110;
LABEL_44:
          v11 = v50;
          *a6 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:v45 userInfo:0];
          v32 = v26;
          goto LABEL_51;
        }

        v32 = v26;
        goto LABEL_50;
      }

      v29 = [PCSCTreeNode alloc];
      v30 = [(PCSCTreeNode *)v13 version];
      v51 = 0;
      v26 = [(PCSCTreeNode *)v29 initWithExpression:v25 version:v30 andParent:v13 error:&v51];
      v31 = v51;
      v32 = v31;
      if (v31 || !v26)
      {
        if (a6 && v31)
        {
          v46 = v31;
          *a6 = v32;
        }

LABEL_50:
        v11 = v50;
LABEL_51:

        goto LABEL_52;
      }

      v33 = [(PCSCTreeNode *)v13 children];
      [v33 addObject:v26];

LABEL_19:
    }

    v22 = [(NSDictionary *)value countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_21:

  operator = v13->_operator;
  if ((operator - 1) >= 2)
  {
    v11 = v50;
    if (operator == 3)
    {
      v47 = [(PCSCTreeNode *)v13 children];
      v48 = [v47 count];

      if (v48 == 1)
      {
        goto LABEL_30;
      }

      if (!a6)
      {
        goto LABEL_52;
      }

      v37 = -1115;
    }

    else
    {
      if (!a6)
      {
        goto LABEL_52;
      }

      v37 = -1110;
    }

LABEL_57:
    *a6 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:v37 userInfo:0];
    goto LABEL_52;
  }

  v35 = [(PCSCTreeNode *)v13 children];
  v36 = [v35 count];

  v11 = v50;
  if (v36 > 1)
  {
LABEL_30:

    v15 = v13;
    goto LABEL_54;
  }

  if (a6)
  {
    v37 = -1114;
    goto LABEL_57;
  }

LABEL_52:

LABEL_53:
  v15 = 0;
LABEL_54:

  return v15;
}

- (int)level
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (!WeakRetained)
  {
    return 0;
  }

  v3 = WeakRetained;
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

- (id)description
{
  v3 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100388504;
  v33 = sub_100388514;
  v34 = &stru_1004810B8;
  while (v3 < [(PCSCTreeNode *)self level])
  {
    v4 = [v30[5] stringByAppendingString:@"  "];
    v5 = v30[5];
    v30[5] = v4;

    ++v3;
  }

  value = self->_value;
  if (value)
  {
    v7 = v30[5];
    v8 = [(NSDictionary *)value allKeys];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = self->_value;
    v11 = [(NSDictionary *)v10 allKeys];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [(NSDictionary *)v10 objectForKeyedSubscript:v12];
    v14 = [NSString stringWithFormat:@"%@ : %@", v9, v13];
    v15 = [v7 stringByAppendingString:v14];
    v16 = v30[5];
    v30[5] = v15;
  }

  if (self->_operator)
  {
    v17 = v30[5];
    opTokens = self->_opTokens;
    v19 = [NSNumber numberWithInteger:?];
    v20 = [(NSDictionary *)opTokens allKeysForObject:v19];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [NSString stringWithFormat:@"%@", v21];
    v23 = [v17 stringByAppendingString:v22];
    v24 = v30[5];
    v30[5] = v23;
  }

  children = self->_children;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10038851C;
  v28[3] = &unk_100480CD0;
  v28[4] = &v29;
  [(NSMutableArray *)children enumerateObjectsUsingBlock:v28];
  v26 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v26;
}

+ (id)_convertOperator:(int64_t)a3
{
  if (qword_1004EA3C8 != -1)
  {
    sub_100396FC8();
  }

  v4 = qword_1004EA3C0;

  return [v4 objectAtIndex:a3];
}

+ (id)_translateNodeToDataAdaptor:(id)a3 dataDictionary:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [NSString stringWithFormat:@"DA%p", v8];
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:@"com.apple.ap.statuscondition" forKey:@"adaptor"];
  v11 = [v8 value];
  v12 = [v11 objectForKeyedSubscript:@"identifier"];

  v13 = [v8 value];

  v14 = [v13 objectForKeyedSubscript:@"bundleID"];

  if (v12 && v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = +[NSMutableDictionary dictionary];
    [v16 setObject:v12 forKey:@"conditionID"];
    [v16 setObject:v14 forKey:@"bundleID"];
    [v10 setObject:v16 forKey:@"inputs"];
    [v7 setObject:v10 forKey:v9];
    v15 = v9;
  }

  else if (a5)
  {
    [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1113 userInfo:0];
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_translateRootNodeToExpressionFormat:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 version]);
  [v6 setObject:v8 forKey:@"version"];

  v9 = +[NSMutableArray array];
  v10 = +[PCSCTreeNode _convertOperator:](PCSCTreeNode, "_convertOperator:", [v5 operator]);
  [v9 addObject:v10];
  v11 = [v5 children];
  if (v11)
  {
    v12 = v11;
    v13 = [v5 children];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [PCSCTreeNode _translateChildNodesToExpressionFormat:v5 dataDictionary:v7 error:a4];
      [v9 addObjectsFromArray:v15];

LABEL_6:
      [v6 setObject:v9 forKey:@"expression"];
      [v6 setObject:v7 forKey:@"data"];
      v18 = +[NSUUID UUID];
      v19 = [v18 UUIDString];
      v23 = v19;
      v20 = [v6 copy];
      v24 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

      goto LABEL_8;
    }
  }

  v16 = [PCSCTreeNode _translateNodeToDataAdaptor:v5 dataDictionary:v7 error:a4];
  if (v16)
  {
    v17 = v16;
    [v6 setObject:v7 forKey:@"data"];
    [v9 addObject:v17];

    goto LABEL_6;
  }

  v21 = 0;
LABEL_8:

  return v21;
}

+ (id)_translateChildNodesToExpressionFormat:(id)a3 dataDictionary:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v7;
  obj = [v7 children];
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 operator])
        {
          v15 = +[NSMutableArray array];
          v16 = +[PCSCTreeNode _convertOperator:](PCSCTreeNode, "_convertOperator:", [v14 operator]);
          [v15 addObject:v16];
          v17 = [PCSCTreeNode _translateChildNodesToExpressionFormat:v14 dataDictionary:v8 error:a5];
          [v15 addObjectsFromArray:v17];
          [v9 addObject:v15];
        }

        else
        {
          v15 = [PCSCTreeNode _translateNodeToDataAdaptor:v14 dataDictionary:v8 error:a5];
          [v9 addObject:v15];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  return v9;
}

- (PCSCTreeNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end