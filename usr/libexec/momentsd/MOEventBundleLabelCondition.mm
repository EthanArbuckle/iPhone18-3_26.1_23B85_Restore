@interface MOEventBundleLabelCondition
+ (id)stringFromTemplateOperator:(unint64_t)a3;
+ (id)stringFromValueType:(unint64_t)a3;
+ (unint64_t)templateOperatorFromString:(id)a3;
+ (unint64_t)valueTypeFromString:(id)a3;
- (BOOL)isNumeric:(id)a3;
- (BOOL)yieldConditionForMetaData:(id)a3;
- (BOOL)yieldConditionForValueData:(id)a3;
- (BOOL)yieldPresenceCheckForValueData:(id)a3;
- (MOEventBundleLabelCondition)initWithKeyword:(id)a3;
- (id)description;
@end

@implementation MOEventBundleLabelCondition

- (MOEventBundleLabelCondition)initWithKeyword:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v15.receiver = self;
    v15.super_class = MOEventBundleLabelCondition;
    v7 = [(MOEventBundleLabelCondition *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_keyword, a3);
      value = v8->_value;
      v8->_templateOperator = 0;
      v8->_value = 0;

      values = v8->_values;
      v8->_values = 0;

      v8->_valueType = 0;
      v8->_capitalized = 0;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelCondition initWithKeyword:v12];
    }

    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelCondition.m" lineNumber:23 description:@"Invalid parameter not satisfying: keyword"];

    v11 = 0;
  }

  return v11;
}

- (BOOL)isNumeric:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSNumberFormatter);
  v5 = [v4 numberFromString:v3];

  return v5 != 0;
}

- (BOOL)yieldPresenceCheckForValueData:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 length])
    {
      v5 = [v4 isEqualToString:@"NO"];

      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v3 BOOLValue])
  {
    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (BOOL)yieldConditionForMetaData:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundleLabelCondition *)self keyword];
  v6 = [v4 objectForKey:v5];

  if ([(MOEventBundleLabelCondition *)self templateOperator]!= 9)
  {
    v11 = [(MOEventBundleLabelCondition *)self yieldConditionForValueData:v6];
    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v7 = [(MOEventBundleLabelCondition *)self value];
  if (!v7 || (v8 = v7, -[MOEventBundleLabelCondition value](self, "value"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEqualToString:@"_ANY_"], v9, v8, (v10 & 1) == 0))
  {
    v12 = [(MOEventBundleLabelCondition *)self values];
    v13 = [v12 containsObject:v6];

    if (v13)
    {
      v14 = [v4 objectForKey:v6];
      v11 = v14 != 0;

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (BOOL)yieldConditionForValueData:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundleLabelCondition *)self value];

  if (v5)
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v4;
        if (![v6 length])
        {
LABEL_9:
          LOBYTE(self) = 0;
LABEL_57:

          goto LABEL_58;
        }

        if ([(MOEventBundleLabelCondition *)self templateOperator]== 1 && ![(MOEventBundleLabelCondition *)self valueType])
        {
          v9 = [(MOEventBundleLabelCondition *)self value];
          LOBYTE(self) = [v9 isEqualToString:v6];
        }

        else
        {
          if ([(MOEventBundleLabelCondition *)self templateOperator]!= 2 || [(MOEventBundleLabelCondition *)self valueType])
          {
            goto LABEL_9;
          }

          v9 = [(MOEventBundleLabelCondition *)self value];
          LODWORD(self) = [v9 isEqualToString:v6] ^ 1;
        }

LABEL_56:

        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v6 = objc_opt_new();
      v8 = [(MOEventBundleLabelCondition *)self value];
      v9 = [v6 numberFromString:v8];

      v10 = v4;
      if ([(MOEventBundleLabelCondition *)self valueType]== 1)
      {
        v11 = [(MOEventBundleLabelCondition *)self templateOperator];
        LOBYTE(self) = 0;
        if (v11 <= 3)
        {
          switch(v11)
          {
            case 1:
              self = [v10 integerValue];
              LOBYTE(self) = self == [v9 integerValue];
              break;
            case 2:
              self = [v10 integerValue];
              LOBYTE(self) = self != [v9 integerValue];
              break;
            case 3:
              self = [v10 integerValue];
              LOBYTE(self) = self < [v9 integerValue];
              break;
          }

          goto LABEL_55;
        }

        if (v11 == 4)
        {
          self = [v10 integerValue];
          LOBYTE(self) = self <= [v9 integerValue];
          goto LABEL_55;
        }

        if (v11 != 5)
        {
          if (v11 == 6)
          {
            v17 = [v10 integerValue];
            v18 = v17 < [v9 integerValue];
            goto LABEL_48;
          }

LABEL_55:

          goto LABEL_56;
        }

        v22 = [v10 integerValue];
        v23 = v22 <= [v9 integerValue];
LABEL_52:
        LOBYTE(self) = !v23;
        goto LABEL_55;
      }

      if ([(MOEventBundleLabelCondition *)self valueType]!= 2 && [(MOEventBundleLabelCondition *)self valueType])
      {

LABEL_22:
        LOBYTE(self) = 0;
        goto LABEL_58;
      }

      v12 = [(MOEventBundleLabelCondition *)self templateOperator];
      LOBYTE(self) = 0;
      if (v12 > 3)
      {
        if (v12 == 4)
        {
          [v10 doubleValue];
          v28 = v27;
          [v9 doubleValue];
          LOBYTE(self) = v28 <= v29;
          goto LABEL_55;
        }

        if (v12 == 5)
        {
          [v10 doubleValue];
          v34 = v33;
          [v9 doubleValue];
          v23 = v34 <= v35;
          goto LABEL_52;
        }

        if (v12 != 6)
        {
          goto LABEL_55;
        }

        [v10 doubleValue];
        v20 = v19;
        [v9 doubleValue];
        v18 = v20 < v21;
      }

      else
      {
        if (v12 == 1)
        {
          [v10 doubleValue];
          v25 = v24;
          [v9 doubleValue];
          v16 = vabdd_f64(v25, v26) < 0.0001;
          goto LABEL_43;
        }

        if (v12 != 2)
        {
          if (v12 != 3)
          {
            goto LABEL_55;
          }

          [v10 doubleValue];
          v14 = v13;
          [v9 doubleValue];
          v16 = v14 < v15;
LABEL_43:
          LOBYTE(self) = v16;
          goto LABEL_55;
        }

        [v10 doubleValue];
        v31 = v30;
        [v9 doubleValue];
        v18 = vabdd_f64(v31, v32) < 0.0001;
      }

LABEL_48:
      LOBYTE(self) = !v18;
      goto LABEL_55;
    }

    LOBYTE(self) = [(MOEventBundleLabelCondition *)self templateOperator]== 2;
  }

  else
  {
    v7 = [(MOEventBundleLabelCondition *)self yieldPresenceCheckForValueData:v4];
    LOBYTE(self) = v7 ^ ([(MOEventBundleLabelCondition *)self templateOperator]== 8);
  }

LABEL_58:

  return self;
}

- (id)description
{
  v3 = [(MOEventBundleLabelCondition *)self keyword];
  v4 = [MOEventBundleLabelCondition stringFromTemplateOperator:[(MOEventBundleLabelCondition *)self templateOperator]];
  v5 = [(MOEventBundleLabelCondition *)self value];
  v6 = [MOEventBundleLabelCondition stringFromValueType:[(MOEventBundleLabelCondition *)self valueType]];
  v7 = [NSString stringWithFormat:@"keyword, %@, operator, %@, value, %@, value type, %@", v3, v4, v5, v6];

  return v7;
}

+ (unint64_t)templateOperatorFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"="] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"=="))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"!="])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"<"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"<="])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@">"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@">="])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"!"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@":"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromTemplateOperator:(unint64_t)a3
{
  if (a3 > 9)
  {
    return @"invalid";
  }

  else
  {
    return *(&off_100338ED0 + a3);
  }
}

+ (unint64_t)valueTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"s"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"d"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"f"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromValueType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"invalid";
  }

  else
  {
    return *(&off_100338F20 + a3);
  }
}

@end