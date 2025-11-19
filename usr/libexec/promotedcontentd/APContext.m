@interface APContext
+ (id)contextForSponsorshipAdRequest;
- (id)contextJSONDictionaryForRequest:(id)a3 andPlacementType:(int64_t)a4;
- (id)contextJSONForRequest:(id)a3 andPlacementType:(int64_t)a4;
- (unint64_t)adPosition;
@end

@implementation APContext

+ (id)contextForSponsorshipAdRequest
{
  v2 = sub_1001E80E4();

  return v2;
}

- (id)contextJSONDictionaryForRequest:(id)a3 andPlacementType:(int64_t)a4
{
  v6 = a3;
  v7 = [[APContextTransformer alloc] initWithContext:self contentIdentifier:v6 placementType:a4];

  v8 = [(APContextTransformer *)v7 transformedContext];

  return v8;
}

- (id)contextJSONForRequest:(id)a3 andPlacementType:(int64_t)a4
{
  v4 = [(APContext *)self contextJSONDictionaryForRequest:a3 andPlacementType:a4];
  v5 = APLegacyNewsContextKey;
  v6 = [v4 jsonStringWithOptions:0];
  v7 = [v5 stringByAppendingString:v6];

  return v7;
}

- (unint64_t)adPosition
{
  v3 = [(APContext *)self supplementalContext];

  if (!v3)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Missing supplemental context.", &v12, 2u);
    }

    goto LABEL_11;
  }

  v4 = [(APContext *)self supplementalContext];
  v5 = [v4 objectForKey:APSupplementalContextPlacementKey];

  if (![v5 length])
  {
    v7 = APLogForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    LOWORD(v12) = 0;
    v8 = "Can't find 'header.placement' in supplemental context.";
    v9 = v7;
    v10 = 2;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v12, v10);
    goto LABEL_10;
  }

  if (([v5 isEqualToString:APSupplementalContextInFeedKey]& 1) == 0)
  {
    if (([v5 isEqualToString:APSupplementalContextBetweenArticleKey]& 1) != 0)
    {
      v6 = 3;
      goto LABEL_12;
    }

    if (([v5 isEqualToString:APSupplementalContextInArticleKey]& 1) != 0)
    {
      v6 = 2;
      goto LABEL_12;
    }

    if (([v5 isEqualToString:APSupplementalContextVideoInArticleKey]& 1) != 0)
    {
      v6 = 4;
      goto LABEL_12;
    }

    if (([v5 isEqualToString:APSupplementalContextNativeInFeedKey]& 1) != 0)
    {
      v6 = 5;
      goto LABEL_12;
    }

    if (([v5 isEqualToString:APSupplementalContextNativeInArticleKey]& 1) != 0)
    {
      v6 = 6;
      goto LABEL_12;
    }

    if (([v5 isEqualToString:APSupplementalContextVideoInFeedKey]& 1) != 0)
    {
      v6 = 7;
      goto LABEL_12;
    }

    v7 = APLogForCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = 138543362;
    v13 = v5;
    v8 = "Unknown 'header.placement' value: %{public}@";
    v9 = v7;
    v10 = 12;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

@end