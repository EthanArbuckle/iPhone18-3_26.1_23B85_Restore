@interface REMCKCloudState
+ (id)defaultRelationshipKeyPathsForPrefetching;
- (ICCloudObject)cloudObject;
@end

@implementation REMCKCloudState

- (ICCloudObject)cloudObject
{
  object = [(REMCKCloudState *)self object];

  if (object)
  {
    object2 = [(REMCKCloudState *)self object];
LABEL_15:
    v11 = object2;
    if (object2 && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0) && (v12 = [objc_opt_class() methodForSelector:"conformsToICCloudObject"], v13 = objc_opt_class(), v12(v13, "conformsToICCloudObject")))
    {
      v11 = v11;
      section = v11;
    }

    else
    {
      section = 0;
    }

    goto LABEL_20;
  }

  list = [(REMCKCloudState *)self list];

  if (list)
  {
    object2 = [(REMCKCloudState *)self list];
    goto LABEL_15;
  }

  reminder = [(REMCKCloudState *)self reminder];

  if (reminder)
  {
    object2 = [(REMCKCloudState *)self reminder];
    goto LABEL_15;
  }

  template = [(REMCKCloudState *)self template];

  if (template)
  {
    object2 = [(REMCKCloudState *)self template];
    goto LABEL_15;
  }

  savedReminder = [(REMCKCloudState *)self savedReminder];

  if (savedReminder)
  {
    object2 = [(REMCKCloudState *)self savedReminder];
    goto LABEL_15;
  }

  savedAttachment = [(REMCKCloudState *)self savedAttachment];

  if (savedAttachment)
  {
    object2 = [(REMCKCloudState *)self savedAttachment];
    goto LABEL_15;
  }

  section = [(REMCKCloudState *)self section];

  if (section)
  {
    object2 = [(REMCKCloudState *)self section];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_20:

  return section;
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