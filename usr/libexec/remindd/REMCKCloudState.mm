@interface REMCKCloudState
+ (id)defaultRelationshipKeyPathsForPrefetching;
- (ICCloudObject)cloudObject;
@end

@implementation REMCKCloudState

- (ICCloudObject)cloudObject
{
  v3 = [(REMCKCloudState *)self object];

  if (v3)
  {
    v4 = [(REMCKCloudState *)self object];
LABEL_15:
    v11 = v4;
    if (v4 && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0) && (v12 = [objc_opt_class() methodForSelector:"conformsToICCloudObject"], v13 = objc_opt_class(), v12(v13, "conformsToICCloudObject")))
    {
      v11 = v11;
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_20;
  }

  v5 = [(REMCKCloudState *)self list];

  if (v5)
  {
    v4 = [(REMCKCloudState *)self list];
    goto LABEL_15;
  }

  v6 = [(REMCKCloudState *)self reminder];

  if (v6)
  {
    v4 = [(REMCKCloudState *)self reminder];
    goto LABEL_15;
  }

  v7 = [(REMCKCloudState *)self template];

  if (v7)
  {
    v4 = [(REMCKCloudState *)self template];
    goto LABEL_15;
  }

  v8 = [(REMCKCloudState *)self savedReminder];

  if (v8)
  {
    v4 = [(REMCKCloudState *)self savedReminder];
    goto LABEL_15;
  }

  v9 = [(REMCKCloudState *)self savedAttachment];

  if (v9)
  {
    v4 = [(REMCKCloudState *)self savedAttachment];
    goto LABEL_15;
  }

  v10 = [(REMCKCloudState *)self section];

  if (v10)
  {
    v4 = [(REMCKCloudState *)self section];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_20:

  return v10;
}

+ (id)defaultRelationshipKeyPathsForPrefetching
{
  if (qword_100952AC8 != -1)
  {
    sub_10076A6A4();
  }

  v3 = qword_100952AD0;

  return v3;
}

@end