@interface APPBAdAction
- (BOOL)isEqual:(id)equal;
- (double)autoDismissInterval;
- (id)actionAsString:(int)string;
- (id)appStoreViewTemplateAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)storyboardPresentationOrientationsAsString:(int)string;
- (id)storyboardSupportedOrientationsAsString:(int)string;
- (id)transitionTypeAsString:(int)string;
- (int)StringAsAction:(id)action;
- (int)StringAsAppStoreViewTemplate:(id)template;
- (int)StringAsStoryboardPresentationOrientations:(id)orientations;
- (int)StringAsStoryboardSupportedOrientations:(id)orientations;
- (int)StringAsTransitionType:(id)type;
- (int)appStoreViewTemplate;
- (int)storyboardPresentationOrientations;
- (int)storyboardSupportedOrientations;
- (int)transitionType;
- (unint64_t)hash;
- (void)addAllowedExternalDomains:(id)domains;
- (void)addParameters:(id)parameters;
- (void)addStoryboardSizes:(id)sizes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAdManagesPurchaseFlow:(BOOL)flow;
- (void)setHasAllowSelfDismissal:(BOOL)dismissal;
- (void)setHasAppStoreViewTemplate:(BOOL)template;
- (void)setHasAutoDismissInterval:(BOOL)interval;
- (void)setHasBackgroundColor:(BOOL)color;
- (void)setHasConfirmedClickTimeInterval:(BOOL)interval;
- (void)setHasLetterboxStoryboardColor:(BOOL)color;
- (void)setHasLoadNewImpressionOnActionComplete:(BOOL)complete;
- (void)setHasPrefersToOpenInstalledApp:(BOOL)app;
- (void)setHasScrolling:(BOOL)scrolling;
- (void)setHasStoryboardPresentationOrientations:(BOOL)orientations;
- (void)setHasStoryboardSupportedOrientations:(BOOL)orientations;
- (void)setHasSuppressesPermissionToExitDialog:(BOOL)dialog;
- (void)setHasTransitionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation APPBAdAction

- (id)actionAsString:(int)string
{
  if (string < 0xE && ((0x3D07u >> string) & 1) != 0)
  {
    v4 = *(&off_10047D938 + string);
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"Web"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"Storyboard"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"iTunesStore"])
  {
    v4 = 8;
  }

  else if ([actionCopy isEqualToString:@"WebView"])
  {
    v4 = 10;
  }

  else if ([actionCopy isEqualToString:@"App"])
  {
    v4 = 11;
  }

  else if ([actionCopy isEqualToString:@"MRAID"])
  {
    v4 = 12;
  }

  else if ([actionCopy isEqualToString:@"WebVideo"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrefersToOpenInstalledApp:(BOOL)app
{
  if (app)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)addParameters:(id)parameters
{
  parametersCopy = parameters;
  parameters = self->_parameters;
  v8 = parametersCopy;
  if (!parameters)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_parameters;
    self->_parameters = v6;

    parametersCopy = v8;
    parameters = self->_parameters;
  }

  [(NSMutableArray *)parameters addObject:parametersCopy];
}

- (int)transitionType
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_transitionType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTransitionType:(BOOL)type
{
  if (type)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)transitionTypeAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"Slide";
  }

  else if (string == 2)
  {
    v4 = @"Fade";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsTransitionType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"Slide"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"Fade"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasSuppressesPermissionToExitDialog:(BOOL)dialog
{
  if (dialog)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasConfirmedClickTimeInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLoadNewImpressionOnActionComplete:(BOOL)complete
{
  if (complete)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasBackgroundColor:(BOOL)color
{
  if (color)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasScrolling:(BOOL)scrolling
{
  if (scrolling)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)addStoryboardSizes:(id)sizes
{
  sizesCopy = sizes;
  storyboardSizes = self->_storyboardSizes;
  v8 = sizesCopy;
  if (!storyboardSizes)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_storyboardSizes;
    self->_storyboardSizes = v6;

    sizesCopy = v8;
    storyboardSizes = self->_storyboardSizes;
  }

  [(NSMutableArray *)storyboardSizes addObject:sizesCopy];
}

- (void)setHasLetterboxStoryboardColor:(BOOL)color
{
  if (color)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)storyboardPresentationOrientations
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_storyboardPresentationOrientations;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStoryboardPresentationOrientations:(BOOL)orientations
{
  if (orientations)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)storyboardPresentationOrientationsAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D9A8 + string);
  }

  return v4;
}

- (int)StringAsStoryboardPresentationOrientations:(id)orientations
{
  orientationsCopy = orientations;
  if ([orientationsCopy isEqualToString:@"Portrait"])
  {
    v4 = 0;
  }

  else if ([orientationsCopy isEqualToString:@"Landscape"])
  {
    v4 = 1;
  }

  else if ([orientationsCopy isEqualToString:@"Any"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)storyboardSupportedOrientations
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_storyboardSupportedOrientations;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStoryboardSupportedOrientations:(BOOL)orientations
{
  if (orientations)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)storyboardSupportedOrientationsAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D9A8 + string);
  }

  return v4;
}

- (int)StringAsStoryboardSupportedOrientations:(id)orientations
{
  orientationsCopy = orientations;
  if ([orientationsCopy isEqualToString:@"Portrait"])
  {
    v4 = 0;
  }

  else if ([orientationsCopy isEqualToString:@"Landscape"])
  {
    v4 = 1;
  }

  else if ([orientationsCopy isEqualToString:@"Any"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAllowSelfDismissal:(BOOL)dismissal
{
  if (dismissal)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (double)autoDismissInterval
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_autoDismissInterval;
  }

  else
  {
    return 600.0;
  }
}

- (void)setHasAutoDismissInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)addAllowedExternalDomains:(id)domains
{
  domainsCopy = domains;
  allowedExternalDomains = self->_allowedExternalDomains;
  v8 = domainsCopy;
  if (!allowedExternalDomains)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_allowedExternalDomains;
    self->_allowedExternalDomains = v6;

    domainsCopy = v8;
    allowedExternalDomains = self->_allowedExternalDomains;
  }

  [(NSMutableArray *)allowedExternalDomains addObject:domainsCopy];
}

- (void)setHasAdManagesPurchaseFlow:(BOOL)flow
{
  if (flow)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)appStoreViewTemplate
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_appStoreViewTemplate;
  }

  else
  {
    return 4780;
  }
}

- (void)setHasAppStoreViewTemplate:(BOOL)template
{
  if (template)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)appStoreViewTemplateAsString:(int)string
{
  if ((string - 4780) >= 0xB)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D9C0 + (string - 4780));
  }

  return v4;
}

- (int)StringAsAppStoreViewTemplate:(id)template
{
  templateCopy = template;
  if ([templateCopy isEqualToString:@"Text"])
  {
    v4 = 4780;
  }

  else if ([templateCopy isEqualToString:@"IPhonePortraitVideoImageImage"])
  {
    v4 = 4781;
  }

  else if ([templateCopy isEqualToString:@"IPhonePortraitImageImageImage"])
  {
    v4 = 4782;
  }

  else if ([templateCopy isEqualToString:@"IPhoneLandscapeVideo"])
  {
    v4 = 4783;
  }

  else if ([templateCopy isEqualToString:@"IPhoneLandscapeImage"])
  {
    v4 = 4784;
  }

  else if ([templateCopy isEqualToString:@"IPadImage"])
  {
    v4 = 4785;
  }

  else if ([templateCopy isEqualToString:@"IPadVideo"])
  {
    v4 = 4786;
  }

  else if ([templateCopy isEqualToString:@"PortraitMaterial"])
  {
    v4 = 4787;
  }

  else if ([templateCopy isEqualToString:@"LandscapeMaterial"])
  {
    v4 = 4788;
  }

  else if ([templateCopy isEqualToString:@"PortraitGrid"])
  {
    v4 = 4789;
  }

  else if ([templateCopy isEqualToString:@"LandscapeGrid"])
  {
    v4 = 4790;
  }

  else
  {
    v4 = 4780;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdAction;
  v3 = [(APPBAdAction *)&v7 description];
  dictionaryRepresentation = [(APPBAdAction *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  action = self->_action;
  if (action < 0xE && ((0x3D07u >> action) & 1) != 0)
  {
    v7 = *(&off_10047D938 + action);
  }

  else
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_action];
  }

  [v4 setObject:v7 forKey:@"action"];

  actionURL = self->_actionURL;
  if (actionURL)
  {
    [v4 setObject:actionURL forKey:@"actionURL"];
  }

  actionWebArchiveURL = self->_actionWebArchiveURL;
  if (actionWebArchiveURL)
  {
    [v4 setObject:actionWebArchiveURL forKey:@"actionWebArchiveURL"];
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_prefersToOpenInstalledApp];
    [v4 setObject:v10 forKey:@"prefersToOpenInstalledApp"];
  }

  if ([(NSMutableArray *)self->_parameters count])
  {
    v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_parameters, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v13 = self->_parameters;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation = [*(*(&v63 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKey:@"parameters"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    transitionType = self->_transitionType;
    if (transitionType == 1)
    {
      v21 = @"Slide";
    }

    else if (transitionType == 2)
    {
      v21 = @"Fade";
    }

    else
    {
      v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_transitionType];
    }

    [v4 setObject:v21 forKey:@"transitionType"];

    has = self->_has;
  }

  if ((has & 0x4000) != 0)
  {
    v22 = [NSNumber numberWithBool:self->_suppressesPermissionToExitDialog];
    [v4 setObject:v22 forKey:@"suppressesPermissionToExitDialog"];
  }

  titleForExitDialog = self->_titleForExitDialog;
  if (titleForExitDialog)
  {
    [v4 setObject:titleForExitDialog forKey:@"titleForExitDialog"];
  }

  messageForExitDialog = self->_messageForExitDialog;
  if (messageForExitDialog)
  {
    [v4 setObject:messageForExitDialog forKey:@"messageForExitDialog"];
  }

  cancelLabelForExitDialog = self->_cancelLabelForExitDialog;
  if (cancelLabelForExitDialog)
  {
    [v4 setObject:cancelLabelForExitDialog forKey:@"cancelLabelForExitDialog"];
  }

  continueLabelForExitDialog = self->_continueLabelForExitDialog;
  if (continueLabelForExitDialog)
  {
    [v4 setObject:continueLabelForExitDialog forKey:@"continueLabelForExitDialog"];
  }

  v27 = self->_has;
  if ((v27 & 0x10) != 0)
  {
    *&v11 = self->_confirmedClickTimeInterval;
    v48 = [NSNumber numberWithFloat:v11];
    [v4 setObject:v48 forKey:@"confirmedClickTimeInterval"];

    v27 = self->_has;
    if ((v27 & 0x800) == 0)
    {
LABEL_41:
      if ((v27 & 8) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_78;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_41;
  }

  v49 = [NSNumber numberWithBool:self->_loadNewImpressionOnActionComplete];
  [v4 setObject:v49 forKey:@"loadNewImpressionOnActionComplete"];

  v27 = self->_has;
  if ((v27 & 8) == 0)
  {
LABEL_42:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_78:
  v50 = [NSNumber numberWithUnsignedInt:self->_backgroundColor];
  [v4 setObject:v50 forKey:@"backgroundColor"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_43:
    v28 = [NSNumber numberWithBool:self->_scrolling];
    [v4 setObject:v28 forKey:@"scrolling"];
  }

LABEL_44:
  if ([(NSMutableArray *)self->_storyboardSizes count])
  {
    v29 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_storyboardSizes, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v30 = self->_storyboardSizes;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v60;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v60 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation2 = [*(*(&v59 + 1) + 8 * j) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation2];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v32);
    }

    [v4 setObject:v29 forKey:@"storyboardSizes"];
  }

  v36 = self->_has;
  if ((v36 & 0x20) != 0)
  {
    v51 = [NSNumber numberWithUnsignedInt:self->_letterboxStoryboardColor];
    [v4 setObject:v51 forKey:@"letterboxStoryboardColor"];

    v36 = self->_has;
    if ((v36 & 0x40) == 0)
    {
LABEL_55:
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_88;
    }
  }

  else if ((v36 & 0x40) == 0)
  {
    goto LABEL_55;
  }

  storyboardPresentationOrientations = self->_storyboardPresentationOrientations;
  if (storyboardPresentationOrientations >= 3)
  {
    v53 = [NSString stringWithFormat:@"(unknown: %i)", self->_storyboardPresentationOrientations];
  }

  else
  {
    v53 = *(&off_10047D9A8 + storyboardPresentationOrientations);
  }

  [v4 setObject:v53 forKey:@"storyboardPresentationOrientations"];

  v36 = self->_has;
  if ((v36 & 0x80) == 0)
  {
LABEL_56:
    if ((v36 & 0x400) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_92;
  }

LABEL_88:
  storyboardSupportedOrientations = self->_storyboardSupportedOrientations;
  if (storyboardSupportedOrientations >= 3)
  {
    v57 = [NSString stringWithFormat:@"(unknown: %i)", self->_storyboardSupportedOrientations];
  }

  else
  {
    v57 = *(&off_10047D9A8 + storyboardSupportedOrientations);
  }

  [v4 setObject:v57 forKey:@"storyboardSupportedOrientations"];

  v36 = self->_has;
  if ((v36 & 0x400) == 0)
  {
LABEL_57:
    if ((v36 & 2) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_92:
  v58 = [NSNumber numberWithBool:self->_allowSelfDismissal];
  [v4 setObject:v58 forKey:@"allowSelfDismissal"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_58:
    v37 = [NSNumber numberWithDouble:self->_autoDismissInterval];
    [v4 setObject:v37 forKey:@"autoDismissInterval"];
  }

LABEL_59:
  allowedExternalDomains = self->_allowedExternalDomains;
  if (allowedExternalDomains)
  {
    [v4 setObject:allowedExternalDomains forKey:@"allowedExternalDomains"];
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v39 = [NSNumber numberWithBool:self->_adManagesPurchaseFlow];
    [v4 setObject:v39 forKey:@"adManagesPurchaseFlow"];
  }

  titleForPurchaseDialog = self->_titleForPurchaseDialog;
  if (titleForPurchaseDialog)
  {
    [v4 setObject:titleForPurchaseDialog forKey:@"titleForPurchaseDialog"];
  }

  messageForPurchaseDialog = self->_messageForPurchaseDialog;
  if (messageForPurchaseDialog)
  {
    [v4 setObject:messageForPurchaseDialog forKey:@"messageForPurchaseDialog"];
  }

  cancelButtonForPurchaseDialog = self->_cancelButtonForPurchaseDialog;
  if (cancelButtonForPurchaseDialog)
  {
    [v4 setObject:cancelButtonForPurchaseDialog forKey:@"cancelButtonForPurchaseDialog"];
  }

  okButtonForPurchaseDialog = self->_okButtonForPurchaseDialog;
  if (okButtonForPurchaseDialog)
  {
    [v4 setObject:okButtonForPurchaseDialog forKey:@"okButtonForPurchaseDialog"];
  }

  v44 = self->_has;
  if (v44)
  {
    v45 = [NSNumber numberWithUnsignedLongLong:self->_adamIdentifier];
    [v4 setObject:v45 forKey:@"adamIdentifier"];

    v44 = self->_has;
  }

  if ((v44 & 4) != 0)
  {
    v46 = self->_appStoreViewTemplate - 4780;
    if (v46 >= 0xB)
    {
      v47 = [NSString stringWithFormat:@"(unknown: %i)", self->_appStoreViewTemplate];
    }

    else
    {
      v47 = *(&off_10047D9C0 + v46);
    }

    [v4 setObject:v47 forKey:@"appStoreViewTemplate"];
  }

  v54 = v4;

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    sub_1003941B8();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  PBDataWriterWriteInt32Field();
  if (self->_actionURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionWebArchiveURL)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_parameters;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 0x4000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_titleForExitDialog)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageForExitDialog)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cancelLabelForExitDialog)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_continueLabelForExitDialog)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    PBDataWriterWriteFloatField();
    v12 = self->_has;
    if ((v12 & 0x800) == 0)
    {
LABEL_29:
      if ((v12 & 8) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_69;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_29;
  }

  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((v12 & 8) == 0)
  {
LABEL_30:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_69:
  PBDataWriterWriteFixed32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_31:
    PBDataWriterWriteBOOLField();
  }

LABEL_32:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = self->_storyboardSizes;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v15);
  }

  v18 = self->_has;
  if ((v18 & 0x20) != 0)
  {
    PBDataWriterWriteFixed32Field();
    v18 = self->_has;
    if ((v18 & 0x40) == 0)
    {
LABEL_41:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_73;
    }
  }

  else if ((v18 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  PBDataWriterWriteInt32Field();
  v18 = self->_has;
  if ((v18 & 0x80) == 0)
  {
LABEL_42:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteInt32Field();
  v18 = self->_has;
  if ((v18 & 0x400) == 0)
  {
LABEL_43:
    if ((v18 & 2) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_74:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_44:
    PBDataWriterWriteDoubleField();
  }

LABEL_45:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = self->_allowedExternalDomains;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteStringField();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v21);
  }

  if ((*&self->_has & 0x200) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_titleForPurchaseDialog)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageForPurchaseDialog)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cancelButtonForPurchaseDialog)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_okButtonForPurchaseDialog)
  {
    PBDataWriterWriteStringField();
  }

  v24 = self->_has;
  if (v24)
  {
    PBDataWriterWriteFixed64Field();
    v24 = self->_has;
  }

  if ((v24 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  v4 = toCopy;
  *(toCopy + 6) = self->_action;
  if (self->_actionURL)
  {
    [toCopy setActionURL:?];
    v4 = toCopy;
  }

  if (self->_actionWebArchiveURL)
  {
    [toCopy setActionWebArchiveURL:?];
    v4 = toCopy;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v4[191] = self->_prefersToOpenInstalledApp;
    *(v4 + 98) |= 0x1000u;
  }

  if ([(APPBAdAction *)self parametersCount])
  {
    [toCopy clearParameters];
    parametersCount = [(APPBAdAction *)self parametersCount];
    if (parametersCount)
    {
      v6 = parametersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(APPBAdAction *)self parametersAtIndex:i];
        [toCopy addParameters:v8];
      }
    }
  }

  has = self->_has;
  v10 = toCopy;
  if ((has & 0x100) != 0)
  {
    *(toCopy + 46) = self->_transitionType;
    *(toCopy + 98) |= 0x100u;
    has = self->_has;
  }

  if ((has & 0x4000) != 0)
  {
    *(toCopy + 193) = self->_suppressesPermissionToExitDialog;
    *(toCopy + 98) |= 0x4000u;
  }

  if (self->_titleForExitDialog)
  {
    [toCopy setTitleForExitDialog:?];
    v10 = toCopy;
  }

  if (self->_messageForExitDialog)
  {
    [toCopy setMessageForExitDialog:?];
    v10 = toCopy;
  }

  if (self->_cancelLabelForExitDialog)
  {
    [toCopy setCancelLabelForExitDialog:?];
    v10 = toCopy;
  }

  if (self->_continueLabelForExitDialog)
  {
    [toCopy setContinueLabelForExitDialog:?];
    v10 = toCopy;
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    v10[20] = LODWORD(self->_confirmedClickTimeInterval);
    *(v10 + 98) |= 0x10u;
    v11 = self->_has;
    if ((v11 & 0x800) == 0)
    {
LABEL_25:
      if ((v11 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_61:
      v10[15] = self->_backgroundColor;
      *(v10 + 98) |= 8u;
      if ((*&self->_has & 0x2000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_25;
  }

  *(v10 + 190) = self->_loadNewImpressionOnActionComplete;
  *(v10 + 98) |= 0x800u;
  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    goto LABEL_61;
  }

LABEL_26:
  if ((v11 & 0x2000) != 0)
  {
LABEL_27:
    *(v10 + 192) = self->_scrolling;
    *(v10 + 98) |= 0x2000u;
  }

LABEL_28:
  if ([(APPBAdAction *)self storyboardSizesCount])
  {
    [toCopy clearStoryboardSizes];
    storyboardSizesCount = [(APPBAdAction *)self storyboardSizesCount];
    if (storyboardSizesCount)
    {
      v13 = storyboardSizesCount;
      for (j = 0; j != v13; ++j)
      {
        v15 = [(APPBAdAction *)self storyboardSizesAtIndex:j];
        [toCopy addStoryboardSizes:v15];
      }
    }
  }

  v16 = self->_has;
  if ((v16 & 0x20) != 0)
  {
    *(toCopy + 26) = self->_letterboxStoryboardColor;
    *(toCopy + 98) |= 0x20u;
    v16 = self->_has;
    if ((v16 & 0x40) == 0)
    {
LABEL_34:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_65;
    }
  }

  else if ((v16 & 0x40) == 0)
  {
    goto LABEL_34;
  }

  *(toCopy + 36) = self->_storyboardPresentationOrientations;
  *(toCopy + 98) |= 0x40u;
  v16 = self->_has;
  if ((v16 & 0x80) == 0)
  {
LABEL_35:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_36;
    }

LABEL_66:
    *(toCopy + 189) = self->_allowSelfDismissal;
    *(toCopy + 98) |= 0x400u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_65:
  *(toCopy + 40) = self->_storyboardSupportedOrientations;
  *(toCopy + 98) |= 0x80u;
  v16 = self->_has;
  if ((v16 & 0x400) != 0)
  {
    goto LABEL_66;
  }

LABEL_36:
  if ((v16 & 2) != 0)
  {
LABEL_37:
    *(toCopy + 2) = *&self->_autoDismissInterval;
    *(toCopy + 98) |= 2u;
  }

LABEL_38:
  if ([(APPBAdAction *)self allowedExternalDomainsCount])
  {
    [toCopy clearAllowedExternalDomains];
    allowedExternalDomainsCount = [(APPBAdAction *)self allowedExternalDomainsCount];
    if (allowedExternalDomainsCount)
    {
      v18 = allowedExternalDomainsCount;
      for (k = 0; k != v18; ++k)
      {
        v20 = [(APPBAdAction *)self allowedExternalDomainsAtIndex:k];
        [toCopy addAllowedExternalDomains:v20];
      }
    }
  }

  v21 = toCopy;
  if ((*&self->_has & 0x200) != 0)
  {
    *(toCopy + 188) = self->_adManagesPurchaseFlow;
    *(toCopy + 98) |= 0x200u;
  }

  if (self->_titleForPurchaseDialog)
  {
    [toCopy setTitleForPurchaseDialog:?];
    v21 = toCopy;
  }

  if (self->_messageForPurchaseDialog)
  {
    [toCopy setMessageForPurchaseDialog:?];
    v21 = toCopy;
  }

  if (self->_cancelButtonForPurchaseDialog)
  {
    [toCopy setCancelButtonForPurchaseDialog:?];
    v21 = toCopy;
  }

  if (self->_okButtonForPurchaseDialog)
  {
    [toCopy setOkButtonForPurchaseDialog:?];
    v21 = toCopy;
  }

  v22 = self->_has;
  if (v22)
  {
    v21[1] = self->_adamIdentifier;
    *(v21 + 98) |= 1u;
    v22 = self->_has;
  }

  if ((v22 & 4) != 0)
  {
    *(v21 + 14) = self->_appStoreViewTemplate;
    *(v21 + 98) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[12];
  v5[12] = v6;

  *(v5 + 6) = self->_action;
  v8 = [(NSString *)self->_actionURL copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_actionWebArchiveURL copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v5 + 191) = self->_prefersToOpenInstalledApp;
    *(v5 + 98) |= 0x1000u;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v12 = self->_parameters;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v60;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v59 + 1) + 8 * i) copyWithZone:zone];
        [v5 addParameters:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 46) = self->_transitionType;
    *(v5 + 98) |= 0x100u;
    has = self->_has;
  }

  if ((has & 0x4000) != 0)
  {
    *(v5 + 193) = self->_suppressesPermissionToExitDialog;
    *(v5 + 98) |= 0x4000u;
  }

  v19 = [(NSString *)self->_titleForExitDialog copyWithZone:zone];
  v20 = v5[21];
  v5[21] = v19;

  v21 = [(NSString *)self->_messageForExitDialog copyWithZone:zone];
  v22 = v5[14];
  v5[14] = v21;

  v23 = [(NSString *)self->_cancelLabelForExitDialog copyWithZone:zone];
  v24 = v5[9];
  v5[9] = v23;

  v25 = [(NSString *)self->_continueLabelForExitDialog copyWithZone:zone];
  v26 = v5[11];
  v5[11] = v25;

  v27 = self->_has;
  if ((v27 & 0x10) != 0)
  {
    *(v5 + 20) = LODWORD(self->_confirmedClickTimeInterval);
    *(v5 + 98) |= 0x10u;
    v27 = self->_has;
    if ((v27 & 0x800) == 0)
    {
LABEL_16:
      if ((v27 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_16;
  }

  *(v5 + 190) = self->_loadNewImpressionOnActionComplete;
  *(v5 + 98) |= 0x800u;
  v27 = self->_has;
  if ((v27 & 8) == 0)
  {
LABEL_17:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_48:
  *(v5 + 15) = self->_backgroundColor;
  *(v5 + 98) |= 8u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_18:
    *(v5 + 192) = self->_scrolling;
    *(v5 + 98) |= 0x2000u;
  }

LABEL_19:
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = self->_storyboardSizes;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v55 + 1) + 8 * j) copyWithZone:zone];
        [v5 addStoryboardSizes:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v30);
  }

  v34 = self->_has;
  if ((v34 & 0x20) != 0)
  {
    *(v5 + 26) = self->_letterboxStoryboardColor;
    *(v5 + 98) |= 0x20u;
    v34 = self->_has;
    if ((v34 & 0x40) == 0)
    {
LABEL_28:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_52;
    }
  }

  else if ((v34 & 0x40) == 0)
  {
    goto LABEL_28;
  }

  *(v5 + 36) = self->_storyboardPresentationOrientations;
  *(v5 + 98) |= 0x40u;
  v34 = self->_has;
  if ((v34 & 0x80) == 0)
  {
LABEL_29:
    if ((v34 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 40) = self->_storyboardSupportedOrientations;
  *(v5 + 98) |= 0x80u;
  v34 = self->_has;
  if ((v34 & 0x400) == 0)
  {
LABEL_30:
    if ((v34 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_53:
  *(v5 + 189) = self->_allowSelfDismissal;
  *(v5 + 98) |= 0x400u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_31:
    v5[2] = *&self->_autoDismissInterval;
    *(v5 + 98) |= 2u;
  }

LABEL_32:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v35 = self->_allowedExternalDomains;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v52;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v51 + 1) + 8 * k) copyWithZone:{zone, v51}];
        [v5 addAllowedExternalDomains:v40];
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v37);
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(v5 + 188) = self->_adManagesPurchaseFlow;
    *(v5 + 98) |= 0x200u;
  }

  v41 = [(NSString *)self->_titleForPurchaseDialog copyWithZone:zone, v51];
  v42 = v5[22];
  v5[22] = v41;

  v43 = [(NSString *)self->_messageForPurchaseDialog copyWithZone:zone];
  v44 = v5[15];
  v5[15] = v43;

  v45 = [(NSString *)self->_cancelButtonForPurchaseDialog copyWithZone:zone];
  v46 = v5[8];
  v5[8] = v45;

  v47 = [(NSString *)self->_okButtonForPurchaseDialog copyWithZone:zone];
  v48 = v5[16];
  v5[16] = v47;

  v49 = self->_has;
  if (v49)
  {
    v5[1] = self->_adamIdentifier;
    *(v5 + 98) |= 1u;
    v49 = self->_has;
  }

  if ((v49 & 4) != 0)
  {
    *(v5 + 14) = self->_appStoreViewTemplate;
    *(v5 + 98) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 12))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  if (self->_action != *(equalCopy + 6))
  {
    goto LABEL_39;
  }

  actionURL = self->_actionURL;
  if (actionURL | *(equalCopy + 4))
  {
    if (![(NSString *)actionURL isEqual:?])
    {
      goto LABEL_39;
    }
  }

  actionWebArchiveURL = self->_actionWebArchiveURL;
  if (actionWebArchiveURL | *(equalCopy + 5))
  {
    if (![(NSString *)actionWebArchiveURL isEqual:?])
    {
      goto LABEL_39;
    }
  }

  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    if ((*(equalCopy + 98) & 0x1000) == 0)
    {
      goto LABEL_39;
    }

    if (self->_prefersToOpenInstalledApp)
    {
      if ((*(equalCopy + 191) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 191))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 98) & 0x1000) != 0)
  {
    goto LABEL_39;
  }

  parameters = self->_parameters;
  if (parameters | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)parameters isEqual:?])
    {
      goto LABEL_39;
    }

    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 98) & 0x100) == 0 || self->_transitionType != *(equalCopy + 46))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 98) & 0x100) != 0)
  {
    goto LABEL_39;
  }

  if ((has & 0x4000) != 0)
  {
    if ((*(equalCopy + 98) & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    if (self->_suppressesPermissionToExitDialog)
    {
      if ((*(equalCopy + 193) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 193))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 98) & 0x4000) != 0)
  {
    goto LABEL_39;
  }

  titleForExitDialog = self->_titleForExitDialog;
  if (titleForExitDialog | *(equalCopy + 21) && ![(NSString *)titleForExitDialog isEqual:?])
  {
    goto LABEL_39;
  }

  messageForExitDialog = self->_messageForExitDialog;
  if (messageForExitDialog | *(equalCopy + 14))
  {
    if (![(NSString *)messageForExitDialog isEqual:?])
    {
      goto LABEL_39;
    }
  }

  cancelLabelForExitDialog = self->_cancelLabelForExitDialog;
  if (cancelLabelForExitDialog | *(equalCopy + 9))
  {
    if (![(NSString *)cancelLabelForExitDialog isEqual:?])
    {
      goto LABEL_39;
    }
  }

  continueLabelForExitDialog = self->_continueLabelForExitDialog;
  if (continueLabelForExitDialog | *(equalCopy + 11))
  {
    if (![(NSString *)continueLabelForExitDialog isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v14 = self->_has;
  v15 = *(equalCopy + 98);
  if ((v14 & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0 || self->_confirmedClickTimeInterval != *(equalCopy + 20))
    {
      goto LABEL_39;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 98) & 0x800) == 0)
    {
      goto LABEL_39;
    }

    if (self->_loadNewImpressionOnActionComplete)
    {
      if ((*(equalCopy + 190) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 190))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 98) & 0x800) != 0)
  {
    goto LABEL_39;
  }

  if ((v14 & 8) != 0)
  {
    if ((v15 & 8) == 0 || self->_backgroundColor != *(equalCopy + 15))
    {
      goto LABEL_39;
    }
  }

  else if ((v15 & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 98) & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    if (self->_scrolling)
    {
      if ((*(equalCopy + 192) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 192))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 98) & 0x2000) != 0)
  {
    goto LABEL_39;
  }

  storyboardSizes = self->_storyboardSizes;
  if (storyboardSizes | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)storyboardSizes isEqual:?])
    {
      goto LABEL_39;
    }

    v14 = self->_has;
  }

  v19 = *(equalCopy + 98);
  if ((v14 & 0x20) != 0)
  {
    if ((v19 & 0x20) == 0 || self->_letterboxStoryboardColor != *(equalCopy + 26))
    {
      goto LABEL_39;
    }
  }

  else if ((v19 & 0x20) != 0)
  {
    goto LABEL_39;
  }

  if ((v14 & 0x40) != 0)
  {
    if ((v19 & 0x40) == 0 || self->_storyboardPresentationOrientations != *(equalCopy + 36))
    {
      goto LABEL_39;
    }
  }

  else if ((v19 & 0x40) != 0)
  {
    goto LABEL_39;
  }

  if ((v14 & 0x80) != 0)
  {
    if ((v19 & 0x80) == 0 || self->_storyboardSupportedOrientations != *(equalCopy + 40))
    {
      goto LABEL_39;
    }
  }

  else if ((v19 & 0x80) != 0)
  {
    goto LABEL_39;
  }

  if ((v14 & 0x400) != 0)
  {
    if ((*(equalCopy + 98) & 0x400) == 0)
    {
      goto LABEL_39;
    }

    if (self->_allowSelfDismissal)
    {
      if ((*(equalCopy + 189) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 189))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 98) & 0x400) != 0)
  {
    goto LABEL_39;
  }

  if ((v14 & 2) != 0)
  {
    if ((v19 & 2) == 0 || self->_autoDismissInterval != *(equalCopy + 2))
    {
      goto LABEL_39;
    }
  }

  else if ((v19 & 2) != 0)
  {
    goto LABEL_39;
  }

  allowedExternalDomains = self->_allowedExternalDomains;
  if (allowedExternalDomains | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)allowedExternalDomains isEqual:?])
    {
      goto LABEL_39;
    }

    v14 = self->_has;
  }

  if ((v14 & 0x200) != 0)
  {
    if ((*(equalCopy + 98) & 0x200) == 0)
    {
      goto LABEL_39;
    }

    if (self->_adManagesPurchaseFlow)
    {
      if ((*(equalCopy + 188) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 188))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 98) & 0x200) != 0)
  {
    goto LABEL_39;
  }

  titleForPurchaseDialog = self->_titleForPurchaseDialog;
  if (titleForPurchaseDialog | *(equalCopy + 22) && ![(NSString *)titleForPurchaseDialog isEqual:?])
  {
    goto LABEL_39;
  }

  messageForPurchaseDialog = self->_messageForPurchaseDialog;
  if (messageForPurchaseDialog | *(equalCopy + 15))
  {
    if (![(NSString *)messageForPurchaseDialog isEqual:?])
    {
      goto LABEL_39;
    }
  }

  cancelButtonForPurchaseDialog = self->_cancelButtonForPurchaseDialog;
  if (cancelButtonForPurchaseDialog | *(equalCopy + 8))
  {
    if (![(NSString *)cancelButtonForPurchaseDialog isEqual:?])
    {
      goto LABEL_39;
    }
  }

  okButtonForPurchaseDialog = self->_okButtonForPurchaseDialog;
  if (okButtonForPurchaseDialog | *(equalCopy + 16))
  {
    if (![(NSString *)okButtonForPurchaseDialog isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v25 = self->_has;
  v26 = *(equalCopy + 98);
  if (v25)
  {
    if ((v26 & 1) == 0 || self->_adamIdentifier != *(equalCopy + 1))
    {
      goto LABEL_39;
    }
  }

  else if (v26)
  {
    goto LABEL_39;
  }

  if ((v25 & 4) == 0)
  {
    v16 = (v26 & 4) == 0;
    goto LABEL_40;
  }

  if ((v26 & 4) != 0 && self->_appStoreViewTemplate == *(equalCopy + 14))
  {
    v16 = 1;
    goto LABEL_40;
  }

LABEL_39:
  v16 = 0;
LABEL_40:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  action = self->_action;
  v48 = v3;
  v46 = [(NSString *)self->_actionURL hash];
  v45 = [(NSString *)self->_actionWebArchiveURL hash];
  if ((*&self->_has & 0x1000) != 0)
  {
    v44 = 2654435761 * self->_prefersToOpenInstalledApp;
  }

  else
  {
    v44 = 0;
  }

  v43 = [(NSMutableArray *)self->_parameters hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v42 = 2654435761 * self->_transitionType;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v42 = 0;
    if ((*&self->_has & 0x4000) != 0)
    {
LABEL_6:
      v41 = 2654435761 * self->_suppressesPermissionToExitDialog;
      goto LABEL_9;
    }
  }

  v41 = 0;
LABEL_9:
  v40 = [(NSString *)self->_titleForExitDialog hash];
  v39 = [(NSString *)self->_messageForExitDialog hash];
  v38 = [(NSString *)self->_cancelLabelForExitDialog hash];
  v37 = [(NSString *)self->_continueLabelForExitDialog hash];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    confirmedClickTimeInterval = self->_confirmedClickTimeInterval;
    if (confirmedClickTimeInterval < 0.0)
    {
      confirmedClickTimeInterval = -confirmedClickTimeInterval;
    }

    *v4.i32 = floorf(confirmedClickTimeInterval + 0.5);
    v9 = (confirmedClickTimeInterval - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v7 = 2654435761u * *vbslq_s8(v10, v5, v4).i32;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabsf(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v35 = 2654435761 * self->_loadNewImpressionOnActionComplete;
    if ((has & 8) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v35 = 0;
    if ((has & 8) != 0)
    {
LABEL_19:
      v34 = 2654435761 * self->_backgroundColor;
      goto LABEL_22;
    }
  }

  v34 = 0;
LABEL_22:
  v36 = v7;
  if ((*&self->_has & 0x2000) != 0)
  {
    v33 = 2654435761 * self->_scrolling;
  }

  else
  {
    v33 = 0;
  }

  v32 = [(NSMutableArray *)self->_storyboardSizes hash];
  v13 = self->_has;
  if ((v13 & 0x20) != 0)
  {
    v31 = 2654435761 * self->_letterboxStoryboardColor;
    if ((v13 & 0x40) != 0)
    {
LABEL_27:
      v30 = 2654435761 * self->_storyboardPresentationOrientations;
      if ((v13 & 0x80) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_27;
    }
  }

  v30 = 0;
  if ((v13 & 0x80) != 0)
  {
LABEL_28:
    v29 = 2654435761 * self->_storyboardSupportedOrientations;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    v14 = 0;
    if ((v13 & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_38:
    v18 = 0;
    goto LABEL_39;
  }

LABEL_36:
  v29 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  v14 = 2654435761 * self->_allowSelfDismissal;
  if ((v13 & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  autoDismissInterval = self->_autoDismissInterval;
  if (autoDismissInterval < 0.0)
  {
    autoDismissInterval = -autoDismissInterval;
  }

  *v11.i64 = floor(autoDismissInterval + 0.5);
  v16 = (autoDismissInterval - *v11.i64) * 1.84467441e19;
  *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v12, v11).i64;
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v18 += v16;
    }
  }

  else
  {
    v18 -= fabs(v16);
  }

LABEL_39:
  v19 = [(NSMutableArray *)self->_allowedExternalDomains hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v20 = 2654435761 * self->_adManagesPurchaseFlow;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSString *)self->_titleForPurchaseDialog hash];
  v22 = [(NSString *)self->_messageForPurchaseDialog hash];
  v23 = [(NSString *)self->_cancelButtonForPurchaseDialog hash];
  v24 = [(NSString *)self->_okButtonForPurchaseDialog hash];
  v25 = self->_has;
  if (v25)
  {
    v26 = 2654435761u * self->_adamIdentifier;
    if ((v25 & 4) != 0)
    {
      goto LABEL_44;
    }

LABEL_46:
    v27 = 0;
    return (2654435761 * action) ^ v48 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v14 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v26 ^ v27;
  }

  v26 = 0;
  if ((v25 & 4) == 0)
  {
    goto LABEL_46;
  }

LABEL_44:
  v27 = 2654435761 * self->_appStoreViewTemplate;
  return (2654435761 * action) ^ v48 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v14 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v26 ^ v27;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 12))
  {
    [(APPBAdAction *)self setIdentifier:?];
  }

  self->_action = *(fromCopy + 6);
  if (*(fromCopy + 4))
  {
    [(APPBAdAction *)self setActionURL:?];
  }

  if (*(fromCopy + 5))
  {
    [(APPBAdAction *)self setActionWebArchiveURL:?];
  }

  if ((*(fromCopy + 98) & 0x1000) != 0)
  {
    self->_prefersToOpenInstalledApp = *(fromCopy + 191);
    *&self->_has |= 0x1000u;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = *(fromCopy + 17);
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(APPBAdAction *)self addParameters:*(*(&v32 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v10 = *(fromCopy + 98);
  if ((v10 & 0x100) != 0)
  {
    self->_transitionType = *(fromCopy + 46);
    *&self->_has |= 0x100u;
    v10 = *(fromCopy + 98);
  }

  if ((v10 & 0x4000) != 0)
  {
    self->_suppressesPermissionToExitDialog = *(fromCopy + 193);
    *&self->_has |= 0x4000u;
  }

  if (*(fromCopy + 21))
  {
    [(APPBAdAction *)self setTitleForExitDialog:?];
  }

  if (*(fromCopy + 14))
  {
    [(APPBAdAction *)self setMessageForExitDialog:?];
  }

  if (*(fromCopy + 9))
  {
    [(APPBAdAction *)self setCancelLabelForExitDialog:?];
  }

  if (*(fromCopy + 11))
  {
    [(APPBAdAction *)self setContinueLabelForExitDialog:?];
  }

  v11 = *(fromCopy + 98);
  if ((v11 & 0x10) != 0)
  {
    self->_confirmedClickTimeInterval = *(fromCopy + 20);
    *&self->_has |= 0x10u;
    v11 = *(fromCopy + 98);
    if ((v11 & 0x800) == 0)
    {
LABEL_30:
      if ((v11 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_70;
    }
  }

  else if ((*(fromCopy + 98) & 0x800) == 0)
  {
    goto LABEL_30;
  }

  self->_loadNewImpressionOnActionComplete = *(fromCopy + 190);
  *&self->_has |= 0x800u;
  v11 = *(fromCopy + 98);
  if ((v11 & 8) == 0)
  {
LABEL_31:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_70:
  self->_backgroundColor = *(fromCopy + 15);
  *&self->_has |= 8u;
  if ((*(fromCopy + 98) & 0x2000) != 0)
  {
LABEL_32:
    self->_scrolling = *(fromCopy + 192);
    *&self->_has |= 0x2000u;
  }

LABEL_33:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = *(fromCopy + 19);
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(APPBAdAction *)self addStoryboardSizes:*(*(&v28 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v14);
  }

  v17 = *(fromCopy + 98);
  if ((v17 & 0x20) != 0)
  {
    self->_letterboxStoryboardColor = *(fromCopy + 26);
    *&self->_has |= 0x20u;
    v17 = *(fromCopy + 98);
    if ((v17 & 0x40) == 0)
    {
LABEL_42:
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_74;
    }
  }

  else if ((v17 & 0x40) == 0)
  {
    goto LABEL_42;
  }

  self->_storyboardPresentationOrientations = *(fromCopy + 36);
  *&self->_has |= 0x40u;
  v17 = *(fromCopy + 98);
  if ((v17 & 0x80) == 0)
  {
LABEL_43:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_storyboardSupportedOrientations = *(fromCopy + 40);
  *&self->_has |= 0x80u;
  v17 = *(fromCopy + 98);
  if ((v17 & 0x400) == 0)
  {
LABEL_44:
    if ((v17 & 2) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_75:
  self->_allowSelfDismissal = *(fromCopy + 189);
  *&self->_has |= 0x400u;
  if ((*(fromCopy + 98) & 2) != 0)
  {
LABEL_45:
    self->_autoDismissInterval = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_46:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = *(fromCopy + 6);
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(APPBAdAction *)self addAllowedExternalDomains:*(*(&v24 + 1) + 8 * k), v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }

  if ((*(fromCopy + 98) & 0x200) != 0)
  {
    self->_adManagesPurchaseFlow = *(fromCopy + 188);
    *&self->_has |= 0x200u;
  }

  if (*(fromCopy + 22))
  {
    [(APPBAdAction *)self setTitleForPurchaseDialog:?];
  }

  if (*(fromCopy + 15))
  {
    [(APPBAdAction *)self setMessageForPurchaseDialog:?];
  }

  if (*(fromCopy + 8))
  {
    [(APPBAdAction *)self setCancelButtonForPurchaseDialog:?];
  }

  if (*(fromCopy + 16))
  {
    [(APPBAdAction *)self setOkButtonForPurchaseDialog:?];
  }

  v23 = *(fromCopy + 98);
  if (v23)
  {
    self->_adamIdentifier = *(fromCopy + 1);
    *&self->_has |= 1u;
    v23 = *(fromCopy + 98);
  }

  if ((v23 & 4) != 0)
  {
    self->_appStoreViewTemplate = *(fromCopy + 14);
    *&self->_has |= 4u;
  }
}

@end