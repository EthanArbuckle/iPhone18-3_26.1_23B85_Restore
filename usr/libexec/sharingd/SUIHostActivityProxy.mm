@interface SUIHostActivityProxy
+ (Class)activityProxyClassForActivityCategory:(int64_t)category;
+ (id)activitiesForConfigurations:(id)configurations;
+ (id)newWithActivityConfiguration:(id)configuration;
- (BOOL)_isBuiltinDerived;
- (BOOL)_showsInSystemActionGroup;
- (BOOL)_wantsOriginalImageColor;
- (CGSize)_thumbnailSize;
- (CGSize)preferredThumbnailSize;
- (NSString)activityTitle;
- (SUIHostActivityProxy)initWithAttributesFromActivityConfiguration:(id)configuration;
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
- (void)setUserInterfaceStyle:(int64_t)style;
@end

@implementation SUIHostActivityProxy

+ (id)activitiesForConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = configurationsCopy;
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

+ (id)newWithActivityConfiguration:(id)configuration
{
  configurationCopy = configuration;
  activity = [configurationCopy activity];
  if (activity)
  {
    extension = [configurationCopy extension];
    v7 = configurationCopy;
    if (!extension)
    {
      v7 = objc_opt_class();
    }

    activityCategory = [v7 activityCategory];
  }

  else
  {
    activityCategory = [configurationCopy activityCategory];
  }

  v9 = [objc_alloc(objc_msgSend(self activityProxyClassForActivityCategory:{activityCategory)), "initWithAttributesFromActivityConfiguration:", configurationCopy}];

  return v9;
}

+ (Class)activityProxyClassForActivityCategory:(int64_t)category
{
  if (category)
  {
    if (category != 1)
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
  self = objc_opt_class();
LABEL_6:

  return self;
}

- (SUIHostActivityProxy)initWithAttributesFromActivityConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v47.receiver = self;
  v47.super_class = SUIHostActivityProxy;
  v6 = [(SUIHostActivityProxy *)&v47 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityConfiguration, configuration);
    activity = [(UIActivity *)configurationCopy activity];
    activity = v7->_activity;
    v7->_activity = activity;

    activityUUID = [(UIActivity *)configurationCopy activityUUID];
    hostActivityUUID = v7->_hostActivityUUID;
    v7->_hostActivityUUID = activityUUID;

    v7->_appIsDocumentTypeOwner = [(UIActivity *)configurationCopy appIsDocumentTypeOwner];
    v12 = v7->_activity;
    if (!v12)
    {
      v12 = configurationCopy;
    }

    activityType = [(UIActivity *)v12 activityType];
    objc_storeStrong(&v7->_activityType, activityType);

    if (v7->_activity)
    {
      [objc_opt_class() _defaultFallbackActivityType];
    }

    else
    {
      [(UIActivity *)configurationCopy fallbackActivityType];
    }
    v14 = ;
    objc_storeStrong(&v7->_fallbackActivityType, v14);

    v15 = v7->_activity;
    if (v15)
    {
      _defaultSortGroup = [(UIActivity *)v15 _defaultSortGroup];
    }

    else
    {
      _defaultSortGroup = [(UIActivity *)configurationCopy defaultSortGroup];
    }

    v7->_defaultSortGroup = _defaultSortGroup;
    v17 = v7->_activity;
    if (v17)
    {
      [(UIActivity *)v17 _beforeActivity];
    }

    else
    {
      [(UIActivity *)configurationCopy positionBeforeActivityType];
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
      [(UIActivity *)configurationCopy preferredThumbnailSize];
    }

    v7->_preferredThumbnailSize.width = v20;
    v7->_preferredThumbnailSize.height = v21;
    v22 = v7->_activity;
    if (v22)
    {
      _activitySupportsPromiseURLs = [(UIActivity *)v22 _activitySupportsPromiseURLs];
    }

    else
    {
      _activitySupportsPromiseURLs = [(UIActivity *)configurationCopy activitySupportsPromiseURLs];
    }

    v7->_activitySupportsPromiseURLs = _activitySupportsPromiseURLs;
    v24 = v7->_activity;
    if (!v24)
    {
      v24 = configurationCopy;
    }

    [(SUIHostActivityProxy *)v7 setIndexInApplicationDefinedActivities:[(UIActivity *)v24 indexInApplicationDefinedActivities]];
    overrideTitle = [(UIActivity *)configurationCopy overrideTitle];
    v26 = [overrideTitle copy];
    overrideActivityTitle = v7->_overrideActivityTitle;
    v7->_overrideActivityTitle = v26;

    v7->_wantsOriginalImageColor = [(UIActivity *)configurationCopy wantsOriginalImageColor];
    v7->_isBuiltinDerived = [(UIActivity *)configurationCopy isBuiltinDerived];
    v7->_showsInSystemActionGroup = [(UIActivity *)configurationCopy showsInSystemActionGroup];
    activityTitle = [(UIActivity *)configurationCopy activityTitle];
    activityTitle = v7->_activityTitle;
    v7->_activityTitle = activityTitle;

    activityImage = [(UIActivity *)configurationCopy activityImage];
    activityImage = v7->_activityImage;
    v7->_activityImage = activityImage;

    activitySettingsImage = [(UIActivity *)configurationCopy activitySettingsImage];
    activitySettingsImage = v7->_activitySettingsImage;
    v7->_activitySettingsImage = activitySettingsImage;

    actionImage = [(UIActivity *)configurationCopy actionImage];
    actionImage = v7->_actionImage;
    v7->_actionImage = actionImage;

    systemImageName = [(UIActivity *)configurationCopy systemImageName];
    systemImageName = v7->_systemImageName;
    v7->_systemImageName = systemImageName;

    activityImageUTI = [(UIActivity *)configurationCopy activityImageUTI];
    activityImageUTI = v7->_activityImageUTI;
    v7->_activityImageUTI = activityImageUTI;

    _activityFooterText = [(UIActivity *)configurationCopy _activityFooterText];
    activityFooterText = v7->_activityFooterText;
    v7->_activityFooterText = _activityFooterText;

    activityStatusImage = [(UIActivity *)configurationCopy activityStatusImage];
    activityStatusImage = v7->_activityStatusImage;
    v7->_activityStatusImage = activityStatusImage;

    activityStatusTintColor = [(UIActivity *)configurationCopy activityStatusTintColor];
    activityStatusTintColor = v7->_activityStatusTintColor;
    v7->_activityStatusTintColor = activityStatusTintColor;
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
  overrideActivityTitle = [(SUIHostActivityProxy *)self overrideActivityTitle];
  if (!overrideActivityTitle)
  {
    activity = [(SUIHostActivityProxy *)self activity];
    if (activity)
    {
      activity2 = [(SUIHostActivityProxy *)self activity];
      overrideActivityTitle = [activity2 activityTitle];
    }

    else
    {
      overrideActivityTitle = self->_activityTitle;
    }
  }

  return overrideActivityTitle;
}

- (id)_activityFooterText
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activityConfiguration = [(SUIHostActivityProxy *)self activityConfiguration];
    extension = [activityConfiguration extension];
    if (extension)
    {
      _activityFooterText = self->_activityFooterText;
    }

    else
    {
      activity2 = [(SUIHostActivityProxy *)self activity];
      _activityFooterText = [activity2 _activityFooterText];
    }
  }

  else
  {
    _activityFooterText = self->_activityFooterText;
  }

  return _activityFooterText;
}

- (BOOL)_wantsOriginalImageColor
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activityConfiguration = [(SUIHostActivityProxy *)self activityConfiguration];
    extension = [activityConfiguration extension];
    if (extension)
    {
      wantsOriginalImageColor = self->_wantsOriginalImageColor;
    }

    else
    {
      activity2 = [(SUIHostActivityProxy *)self activity];
      wantsOriginalImageColor = [activity2 _wantsOriginalImageColor];
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
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activityConfiguration = [(SUIHostActivityProxy *)self activityConfiguration];
    extension = [activityConfiguration extension];
    if (extension)
    {
      isBuiltinDerived = self->_isBuiltinDerived;
    }

    else
    {
      activity2 = [(SUIHostActivityProxy *)self activity];
      isBuiltinDerived = [activity2 _isBuiltinDerived];
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
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activityConfiguration = [(SUIHostActivityProxy *)self activityConfiguration];
    extension = [activityConfiguration extension];
    if (extension)
    {
      showsInSystemActionGroup = self->_showsInSystemActionGroup;
    }

    else
    {
      activity2 = [(SUIHostActivityProxy *)self activity];
      showsInSystemActionGroup = [activity2 _showsInSystemActionGroup];
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
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activityConfiguration = [(SUIHostActivityProxy *)self activityConfiguration];
    extension = [activityConfiguration extension];
    if (extension)
    {
      _activityStatusTintColor = self->_activityStatusTintColor;
    }

    else
    {
      activity2 = [(SUIHostActivityProxy *)self activity];
      _activityStatusTintColor = [activity2 _activityStatusTintColor];
    }
  }

  else
  {
    _activityStatusTintColor = self->_activityStatusTintColor;
  }

  return _activityStatusTintColor;
}

- (UIImage)activityImage
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activity2 = [(SUIHostActivityProxy *)self activity];
    _activityImage = [activity2 _activityImage];
  }

  else
  {
    _activityImage = self->_activityImage;
  }

  return _activityImage;
}

- (id)_actionImage
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activity2 = [(SUIHostActivityProxy *)self activity];
    _actionImage = [activity2 _actionImage];
  }

  else
  {
    _actionImage = self->_actionImage;
  }

  return _actionImage;
}

- (id)_systemImageName
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activity2 = [(SUIHostActivityProxy *)self activity];
    _systemImageName = [activity2 _systemImageName];
  }

  else
  {
    _systemImageName = self->_systemImageName;
  }

  return _systemImageName;
}

- (id)_activityImageUTI
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activity2 = [(SUIHostActivityProxy *)self activity];
    _activityImageUTI = [activity2 _activityImageUTI];
  }

  else
  {
    _activityImageUTI = self->_activityImageUTI;
  }

  return _activityImageUTI;
}

- (id)_activitySettingsImage
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activity2 = [(SUIHostActivityProxy *)self activity];
    _activitySettingsImage = [activity2 _activitySettingsImage];
  }

  else
  {
    _activitySettingsImage = self->_activitySettingsImage;
  }

  return _activitySettingsImage;
}

- (id)_activityStatusImage
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activity2 = [(SUIHostActivityProxy *)self activity];
    _activityStatusImage = [activity2 _activityStatusImage];
  }

  else
  {
    _activityStatusImage = self->_activityStatusImage;
  }

  return _activityStatusImage;
}

- (id)_activityImage
{
  activity = [(SUIHostActivityProxy *)self activity];
  if (activity)
  {
    activity2 = [(SUIHostActivityProxy *)self activity];
    _activityImage = [activity2 _activityImage];
  }

  else
  {
    _activityImage = self->_activityImage;
  }

  return _activityImage;
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  activity = [(SUIHostActivityProxy *)self activity];
  [activity setUserInterfaceStyle:style];
}

- (int64_t)userInterfaceStyle
{
  activity = [(SUIHostActivityProxy *)self activity];
  userInterfaceStyle = [activity userInterfaceStyle];

  return userInterfaceStyle;
}

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = SUIHostActivityProxy;
  v3 = [(SUIHostActivityProxy *)&v8 description];
  _activityTypeUsingFallbackActivityTypeIfNecessary = [(SUIHostActivityProxy *)self _activityTypeUsingFallbackActivityTypeIfNecessary];
  activityTitle = [(SUIHostActivityProxy *)self activityTitle];
  v6 = [NSString stringWithFormat:@"%@ {type = %@, title = %@}", v3, _activityTypeUsingFallbackActivityTypeIfNecessary, activityTitle];

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