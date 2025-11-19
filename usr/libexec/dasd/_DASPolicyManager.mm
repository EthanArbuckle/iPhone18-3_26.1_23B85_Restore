@interface _DASPolicyManager
+ (id)allPoliciesForPlatform;
+ (id)allPredictingPoliciesForPlatform;
+ (id)policyForBitIndex:(unint64_t)a3;
+ (unint64_t)bitmaskForPolicy:(id)a3;
+ (void)initializeAllPolicies;
@end

@implementation _DASPolicyManager

+ (id)allPoliciesForPlatform
{
  +[_DASPolicyManager initializeAllPolicies];
  v2 = qword_10020B518;

  return v2;
}

+ (void)initializeAllPolicies
{
  if (qword_10020B508 != -1)
  {
    sub_100122728();
  }
}

+ (id)allPredictingPoliciesForPlatform
{
  +[_DASPolicyManager initializeAllPolicies];
  v2 = qword_10020B528;

  return v2;
}

+ (unint64_t)bitmaskForPolicy:(id)a3
{
  v3 = a3;
  v4 = [qword_10020B520 allValues];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v6 = qword_10020B520;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = *v26;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [qword_10020B520 objectForKeyedSubscript:v10];
          v12 = [v11 isEqualToString:v3];

          if (v12)
          {
            v7 = v10;
            goto LABEL_22;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v6 = qword_10020B510;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v7)
    {
      v13 = *v22;
      while (2)
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v21 + 1) + 8 * j);
          v16 = [qword_10020B510 objectForKeyedSubscript:{v15, v21}];
          v17 = [v16 policyName];
          v18 = [v17 isEqualToString:v3];

          if (v18)
          {
            v7 = v15;

            goto LABEL_22;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_22:

  if (v7)
  {
    v19 = 1 << [v7 unsignedLongLongValue];
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

+ (id)policyForBitIndex:(unint64_t)a3
{
  v4 = qword_10020B520;
  v5 = [NSNumber numberWithUnsignedLongLong:?];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = qword_10020B520;
    v8 = [NSNumber numberWithUnsignedLongLong:a3];
    v9 = [v7 objectForKeyedSubscript:v8];
  }

  else
  {
    v10 = qword_10020B510;
    v8 = [NSNumber numberWithUnsignedLongLong:a3];
    v11 = [v10 objectForKeyedSubscript:v8];
    v9 = [v11 policyName];
  }

  return v9;
}

@end