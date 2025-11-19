@interface SUIHostActivityProxy
+ (Class)activityProxyClassForActivityCategory:(int64_t)a3;
+ (id)activitiesForConfigurations:(id)a3;
+ (id)newWithActivityConfiguration:(id)a3;
- (BOOL)_isBuiltinDerived;
- (BOOL)_showsInSystemActionGroup;
- (BOOL)_wantsOriginalImageColor;
- (CGSize)_thumbnailSize;
- (CGSize)preferredThumbnailSize;
- (NSString)activityTitle;
- (SUIHostActivityProxy)initWithAttributesFromActivityConfiguration:(id)a3;
- (UIImage)activityImage;
- (id)_actionImage;
- (id)_activityFooterText;
- (id)_activityImage;
- (id)_activityImageUTI;
- (id)_activitySettingsImage;
- (id)_activityStatusImage;
- (id)_activityStatusTintColor;
- (id)_activityTypeUsingFallbackActivityTypeIfNecessary;
- (id)_systemImageName;
- (id)debugDescription;
- (int64_t)userInterfaceStyle;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation SUIHostActivityProxy

+ (id)activitiesForConfigurations:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SUIHostActivityProxy newWithActivityConfiguration:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)newWithActivityConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 activity];
  if (v5)
  {
    v6 = [v4 extension];
    v7 = v4;
    if (!v6)
    {
      v7 = objc_opt_class();
    }

    v8 = [v7 activityCategory];
  }

  else
  {
    v8 = [v4 activityCategory];
  }

  v9 = [objc_alloc(objc_msgSend(a1 activityProxyClassForActivityCategory:{v8)), "initWithAttributesFromActivityConfiguration:", v4}];

  return v9;
}

+ (Class)activityProxyClassForActivityCategory:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = &off_1008C8D80;
  }

  else
  {
    v4 = off_1008C8D78;
  }

  v5 = *v4;
  a1 = objc_opt_class();
LABEL_6:

  return a1;
}

- (SUIHostActivityProxy)initWithAttributesFromActivityConfiguration:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = SUIHostActivityProxy;
  v6 = [(SUIHostActivityProxy *)&v47 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityConfiguration, a3);
    v8 = [(UIActivity *)v5 activity];
    activity = v7->_activity;
    v7->_activity = v8;

    v10 = [(UIActivity *)v5 activityUUID];
    hostActivityUUID = v7->_hostActivityUUID;
    v7->_hostActivityUUID = v10;

    v7->_appIsDocumentTypeOwner = [(UIActivity *)v5 appIsDocumentTypeOwner];
    v12 = v7->_activity;
    if (!v12)
    {
      v12 = v5;
    }

    v13 = [(UIActivity *)v12 activityType];
    objc_storeStrong(&v7->_activityType, v13);

    if (v7->_activity)
    {
      [objc_opt_class() _defaultFallbackActivityType];
    }

    else
    {
      [(UIActivity *)v5 fallbackActivityType];
    }
    v14 = ;
    objc_storeStrong(&v7->_fallbackActivityType, v14);

    v15 = v7->_activity;
    if (v15)
    {
      v16 = [(UIActivity *)v15 _defaultSortGroup];
    }

    else
    {
      v16 = [(UIActivity *)v5 defaultSortGroup];
    }

    v7->_defaultSortGroup = v16;
    v17 = v7->_activity;
    if (v17)
    {
      [(UIActivity *)v17 _beforeActivity];
    }

    else
    {
      [(UIActivity *)v5 positionBeforeActivityType];
    }
    v18 = ;
    objc_storeStrong(&v7->_positionBeforeActivityType, v18);

    v19 = v7->_activity;
    if (v19)
    {
      [(UIActivity *)v19 _thumbnailSize];
    }

    else
    {
      [(UIActivity *)v5 preferredThumbnailSize];
    }

    v7->_preferredThumbnailSize.width = v20;
    v7->_preferredThumbnailSize.height = v21;
    v22 = v7->_activity;
    if (v22)
    {
      v23 = [(UIActivity *)v22 _activitySupportsPromiseURLs];
    }

    else
    {
      v23 = [(UIActivity *)v5 activitySupportsPromiseURLs];
    }

    v7->_activitySupportsPromiseURLs = v23;
    v24 = v7->_activity;
    if (!v24)
    {
      v24 = v5;
    }

    [(SUIHostActivityProxy *)v7 setIndexInApplicationDefinedActivities:[(UIActivity *)v24 indexInApplicationDefinedActivities]];
    v25 = [(UIActivity *)v5 overrideTitle];
    v26 = [v25 copy];
    overrideActivityTitle = v7->_overrideActivityTitle;
    v7->_overrideActivityTitle = v26;

    v7->_wantsOriginalImageColor = [(UIActivity *)v5 wantsOriginalImageColor];
    v7->_isBuiltinDerived = [(UIActivity *)v5 isBuiltinDerived];
    v7->_showsInSystemActionGroup = [(UIActivity *)v5 showsInSystemActionGroup];
    v28 = [(UIActivity *)v5 activityTitle];
    activityTitle = v7->_activityTitle;
    v7->_activityTitle = v28;

    v30 = [(UIActivity *)v5 activityImage];
    activityImage = v7->_activityImage;
    v7->_activityImage = v30;

    v32 = [(UIActivity *)v5 activitySettingsImage];
    activitySettingsImage = v7->_activitySettingsImage;
    v7->_activitySettingsImage = v32;

    v34 = [(UIActivity *)v5 actionImage];
    actionImage = v7->_actionImage;
    v7->_actionImage = v34;

    v36 = [(UIActivity *)v5 systemImageName];
    systemImageName = v7->_systemImageName;
    v7->_systemImageName = v36;

    v38 = [(UIActivity *)v5 activityImageUTI];
    activityImageUTI = v7->_activityImageUTI;
    v7->_activityImageUTI = v38;

    v40 = [(UIActivity *)v5 _activityFooterText];
    activityFooterText = v7->_activityFooterText;
    v7->_activityFooterText = v40;

    v42 = [(UIActivity *)v5 activityStatusImage];
    activityStatusImage = v7->_activityStatusImage;
    v7->_activityStatusImage = v42;

    v44 = [(UIActivity *)v5 activityStatusTintColor];
    activityStatusTintColor = v7->_activityStatusTintColor;
    v7->_activityStatusTintColor = v44;
  }

  return v7;
}

- (id)_activityTypeUsingFallbackActivityTypeIfNecessary
{
  activityType = self->_activityType;
  if (!activityType)
  {
    activityType = self->_fallbackActivityType;
  }

  return activityType;
}

- (CGSize)_thumbnailSize
{
  width = self->_preferredThumbnailSize.width;
  height = self->_preferredThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSString)activityTitle
{
  v3 = [(SUIHostActivityProxy *)self overrideActivityTitle];
  if (!v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    if (v4)
    {
      v5 = [(SUIHostActivityProxy *)self activity];
      v3 = [v5 activityTitle];
    }

    else
    {
      v3 = self->_activityTitle;
    }
  }

  return v3;
}

- (id)_activityFooterText
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activityConfiguration];
    v5 = [v4 extension];
    if (v5)
    {
      v6 = self->_activityFooterText;
    }

    else
    {
      v7 = [(SUIHostActivityProxy *)self activity];
      v6 = [v7 _activityFooterText];
    }
  }

  else
  {
    v6 = self->_activityFooterText;
  }

  return v6;
}

- (BOOL)_wantsOriginalImageColor
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activityConfiguration];
    v5 = [v4 extension];
    if (v5)
    {
      wantsOriginalImageColor = self->_wantsOriginalImageColor;
    }

    else
    {
      v7 = [(SUIHostActivityProxy *)self activity];
      wantsOriginalImageColor = [v7 _wantsOriginalImageColor];
    }
  }

  else
  {
    wantsOriginalImageColor = self->_wantsOriginalImageColor;
  }

  return wantsOriginalImageColor;
}

- (BOOL)_isBuiltinDerived
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activityConfiguration];
    v5 = [v4 extension];
    if (v5)
    {
      isBuiltinDerived = self->_isBuiltinDerived;
    }

    else
    {
      v7 = [(SUIHostActivityProxy *)self activity];
      isBuiltinDerived = [v7 _isBuiltinDerived];
    }
  }

  else
  {
    isBuiltinDerived = self->_isBuiltinDerived;
  }

  return isBuiltinDerived;
}

- (BOOL)_showsInSystemActionGroup
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activityConfiguration];
    v5 = [v4 extension];
    if (v5)
    {
      showsInSystemActionGroup = self->_showsInSystemActionGroup;
    }

    else
    {
      v7 = [(SUIHostActivityProxy *)self activity];
      showsInSystemActionGroup = [v7 _showsInSystemActionGroup];
    }
  }

  else
  {
    showsInSystemActionGroup = self->_showsInSystemActionGroup;
  }

  return showsInSystemActionGroup;
}

- (id)_activityStatusTintColor
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activityConfiguration];
    v5 = [v4 extension];
    if (v5)
    {
      v6 = self->_activityStatusTintColor;
    }

    else
    {
      v7 = [(SUIHostActivityProxy *)self activity];
      v6 = [v7 _activityStatusTintColor];
    }
  }

  else
  {
    v6 = self->_activityStatusTintColor;
  }

  return v6;
}

- (UIImage)activityImage
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    v5 = [v4 _activityImage];
  }

  else
  {
    v5 = self->_activityImage;
  }

  return v5;
}

- (id)_actionImage
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    v5 = [v4 _actionImage];
  }

  else
  {
    v5 = self->_actionImage;
  }

  return v5;
}

- (id)_systemImageName
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    v5 = [v4 _systemImageName];
  }

  else
  {
    v5 = self->_systemImageName;
  }

  return v5;
}

- (id)_activityImageUTI
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    v5 = [v4 _activityImageUTI];
  }

  else
  {
    v5 = self->_activityImageUTI;
  }

  return v5;
}

- (id)_activitySettingsImage
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    v5 = [v4 _activitySettingsImage];
  }

  else
  {
    v5 = self->_activitySettingsImage;
  }

  return v5;
}

- (id)_activityStatusImage
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    v5 = [v4 _activityStatusImage];
  }

  else
  {
    v5 = self->_activityStatusImage;
  }

  return v5;
}

- (id)_activityImage
{
  v3 = [(SUIHostActivityProxy *)self activity];
  if (v3)
  {
    v4 = [(SUIHostActivityProxy *)self activity];
    v5 = [v4 _activityImage];
  }

  else
  {
    v5 = self->_activityImage;
  }

  return v5;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v4 = [(SUIHostActivityProxy *)self activity];
  [v4 setUserInterfaceStyle:a3];
}

- (int64_t)userInterfaceStyle
{
  v2 = [(SUIHostActivityProxy *)self activity];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = SUIHostActivityProxy;
  v3 = [(SUIHostActivityProxy *)&v8 description];
  v4 = [(SUIHostActivityProxy *)self _activityTypeUsingFallbackActivityTypeIfNecessary];
  v5 = [(SUIHostActivityProxy *)self activityTitle];
  v6 = [NSString stringWithFormat:@"%@ {type = %@, title = %@}", v3, v4, v5];

  return v6;
}

- (CGSize)preferredThumbnailSize
{
  width = self->_preferredThumbnailSize.width;
  height = self->_preferredThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end