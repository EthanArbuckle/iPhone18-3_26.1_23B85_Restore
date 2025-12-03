@interface _UIHostActivityProxy
- (BOOL)isEqual:(id)equal;
- (BOOL)load;
- (NSString)description;
- (_UIHostActivityProxy)initWithActivity:(id)activity;
- (_UIHostActivityProxy)initWithCoder:(id)coder;
- (id)activityType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHostActivityProxy

- (_UIHostActivityProxy)initWithActivity:(id)activity
{
  activityCopy = activity;
  v11.receiver = self;
  v11.super_class = _UIHostActivityProxy;
  v6 = [(_UIHostActivityProxy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, activity);
    activityUUID = [activityCopy activityUUID];
    identifier = v7->_identifier;
    v7->_identifier = activityUUID;
  }

  return v7;
}

- (_UIHostActivityProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [(_UIHostActivityProxy *)self init];
  if (v6)
  {
    -[_UIHostActivityProxy setIconImageSlotID:](v6, "setIconImageSlotID:", [coderCopy decodeInt32ForKey:@"iconImageSlotID"]);
    -[_UIHostActivityProxy setLabelSlotID:](v6, "setLabelSlotID:", [coderCopy decodeInt32ForKey:@"labelSlotID"]);
    [coderCopy decodeDoubleForKey:@"slotTextHeight"];
    [(_UIHostActivityProxy *)v6 setSlotTextHeight:?];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_isDisabled = [coderCopy decodeBoolForKey:@"isDisabled"];
    v6->_isFavorite = [coderCopy decodeBoolForKey:@"isFavorite"];
    v6->_isRestricted = [coderCopy decodeBoolForKey:@"isRestricted"];
    v6->_isUserDefaultsActivity = [coderCopy decodeBoolForKey:@"isUserDefaultsActivity"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifierShare"];
    activityIdentifierShare = v6->_activityIdentifierShare;
    v6->_activityIdentifierShare = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifierOpen"];
    activityIdentifierOpen = v6->_activityIdentifierOpen;
    v6->_activityIdentifierOpen = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifierCopy"];
    activityIdentifierCopy = v6->_activityIdentifierCopy;
    v6->_activityIdentifierCopy = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityTitle"];
    activityTitle = v6->_activityTitle;
    v6->_activityTitle = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityFooter"];
    activityFooter = v6->_activityFooter;
    v6->_activityFooter = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v6->_applicationBundleIdentifier;
    v6->_applicationBundleIdentifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityImageUTI"];
    activityImageUTI = v6->_activityImageUTI;
    v6->_activityImageUTI = v21;

    if ([(_UIHostActivityProxy *)v6 labelSlotID])
    {
      activityTitle = [(_UIHostActivityProxy *)v6 activityTitle];
      slotIdentifier = [activityTitle slotIdentifier];

      if (!slotIdentifier)
      {
        activityTitle2 = [(_UIHostActivityProxy *)v6 activityTitle];
        text = [activityTitle2 text];

        if (text)
        {
          sub_10005AA34(a2, v6);
        }

        v27 = [SFProxyText alloc];
        labelSlotID = [(_UIHostActivityProxy *)v6 labelSlotID];
        [(_UIHostActivityProxy *)v6 slotTextHeight];
        v29 = [v27 initWithSlotIdentifier:labelSlotID slotTextHeight:?];
        [(_UIHostActivityProxy *)v6 setActivityTitle:v29];
      }
    }

    if ([(_UIHostActivityProxy *)v6 isRestricted])
    {
      v30 = share_sheet_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_10005AAA8(v6, v30);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[_UIHostActivityProxy iconImageSlotID](self forKey:{"iconImageSlotID"), @"iconImageSlotID"}];
  [coderCopy encodeInt32:-[_UIHostActivityProxy labelSlotID](self forKey:{"labelSlotID"), @"labelSlotID"}];
  [(_UIHostActivityProxy *)self slotTextHeight];
  [coderCopy encodeDouble:@"slotTextHeight" forKey:?];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [coderCopy encodeBool:self->_isFavorite forKey:@"isFavorite"];
  [coderCopy encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [coderCopy encodeBool:self->_isUserDefaultsActivity forKey:@"isUserDefaultsActivity"];
  [coderCopy encodeObject:self->_activityIdentifierShare forKey:@"activityIdentifierShare"];
  [coderCopy encodeObject:self->_activityIdentifierOpen forKey:@"activityIdentifierOpen"];
  [coderCopy encodeObject:self->_activityIdentifierCopy forKey:@"activityIdentifierCopy"];
  [coderCopy encodeObject:self->_activityTitle forKey:@"activityTitle"];
  [coderCopy encodeObject:self->_activityFooter forKey:@"activityFooter"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [coderCopy encodeObject:self->_activityImageUTI forKey:@"activityImageUTI"];
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = _UIHostActivityProxy;
  v3 = [(_UIHostActivityProxy *)&v17 description];
  identifier = [(_UIHostActivityProxy *)self identifier];
  activity = self->_activity;
  iconImageSlotID = [(_UIHostActivityProxy *)self iconImageSlotID];
  labelSlotID = [(_UIHostActivityProxy *)self labelSlotID];
  if (self->_isDisabled)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_isFavorite)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_isRestricted)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_isUserDefaultsActivity)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v15 = *&self->_activityIdentifierShare;
  activityIdentifierCopy = self->_activityIdentifierCopy;
  [(_UIHostActivityProxy *)self slotTextHeight];
  v13 = [NSString stringWithFormat:@"<%@: identifier:%@ activity:%@ iconImageSlotID:%u, textSlot:%u, isDisabled:%@, isFavorite:%@, isRestricted:%@, isUserDefaultsActivity:%@, activityIdentifierShare:%@, activityIdentifierOpen:%@, activityIdentifierCopy:%@, textHeight:%f, activityTitle:%@, activityFooter:%@, bundleIdentifier:%@, activityImageUTI:%@>", v3, identifier, activity, iconImageSlotID, labelSlotID, v7, v8, v9, v10, v15, activityIdentifierCopy, v12, self->_activityTitle, self->_activityFooter, self->_applicationBundleIdentifier, self->_activityImageUTI];

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  identifier = [(_UIHostActivityProxy *)self identifier];
  v7 = [identifier hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(_UIHostActivityProxy *)self identifier];
      identifier2 = [(_UIHostActivityProxy *)v5 identifier];
      v8 = identifier;
      v9 = identifier2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v19 = v9;
          v20 = v8;
LABEL_18:

          goto LABEL_19;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
LABEL_16:
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }
      }

      iconImageSlotID = [(_UIHostActivityProxy *)self iconImageSlotID];
      if (iconImageSlotID != [(_UIHostActivityProxy *)v5 iconImageSlotID])
      {
        goto LABEL_16;
      }

      labelSlotID = [(_UIHostActivityProxy *)self labelSlotID];
      if (labelSlotID != [(_UIHostActivityProxy *)v5 labelSlotID])
      {
        goto LABEL_16;
      }

      isDisabled = [(_UIHostActivityProxy *)self isDisabled];
      if (isDisabled != [(_UIHostActivityProxy *)v5 isDisabled])
      {
        goto LABEL_16;
      }

      isFavorite = [(_UIHostActivityProxy *)self isFavorite];
      if (isFavorite != [(_UIHostActivityProxy *)v5 isFavorite])
      {
        goto LABEL_16;
      }

      isRestricted = [(_UIHostActivityProxy *)self isRestricted];
      if (isRestricted != [(_UIHostActivityProxy *)v5 isRestricted])
      {
        goto LABEL_16;
      }

      isUserDefaultsActivity = [(_UIHostActivityProxy *)self isUserDefaultsActivity];
      if (isUserDefaultsActivity != [(_UIHostActivityProxy *)v5 isUserDefaultsActivity])
      {
        goto LABEL_16;
      }

      activityIdentifierShare = [(_UIHostActivityProxy *)self activityIdentifierShare];
      activityIdentifierShare2 = [(_UIHostActivityProxy *)v5 activityIdentifierShare];
      v20 = activityIdentifierShare;
      v24 = activityIdentifierShare2;
      v19 = v24;
      if (v20 == v24)
      {
      }

      else
      {
        if ((v20 != 0) == (v24 == 0))
        {
          v12 = 0;
          v30 = v24;
          v28 = v20;
          goto LABEL_72;
        }

        v25 = [v20 isEqual:v24];

        if (!v25)
        {
          v12 = 0;
          goto LABEL_18;
        }
      }

      activityIdentifierOpen = [(_UIHostActivityProxy *)self activityIdentifierOpen];
      activityIdentifierOpen2 = [(_UIHostActivityProxy *)v5 activityIdentifierOpen];
      v28 = activityIdentifierOpen;
      v29 = activityIdentifierOpen2;
      v30 = v29;
      if (v28 == v29)
      {
      }

      else
      {
        if ((v28 != 0) == (v29 == 0))
        {
          v12 = 0;
          v38 = v29;
          v34 = v28;
LABEL_71:

          goto LABEL_72;
        }

        v31 = [v28 isEqual:v29];

        if (!v31)
        {
          v12 = 0;
LABEL_72:

          goto LABEL_18;
        }
      }

      v78 = v28;
      activityIdentifierCopy = [(_UIHostActivityProxy *)self activityIdentifierCopy];
      activityIdentifierCopy2 = [(_UIHostActivityProxy *)v5 activityIdentifierCopy];
      v34 = activityIdentifierCopy;
      v35 = activityIdentifierCopy2;
      v36 = v35;
      v77 = v35;
      if (v34 == v35)
      {
      }

      else
      {
        if ((v34 != 0) == (v35 == 0))
        {
          v76 = v30;
          v12 = 0;
          v50 = v34;
          v28 = v78;
LABEL_70:

          v30 = v76;
          v38 = v77;
          goto LABEL_71;
        }

        v37 = v35;
        v75 = [v34 isEqual:v35];

        if (!v75)
        {
          goto LABEL_43;
        }
      }

      [(_UIHostActivityProxy *)self slotTextHeight];
      v40 = v39;
      [(_UIHostActivityProxy *)v5 slotTextHeight];
      if (vabdd_f64(v40, v41) >= 0.00000011920929)
      {
LABEL_43:
        v12 = 0;
        v38 = v77;
        v28 = v78;
        goto LABEL_71;
      }

      v74 = v34;
      v76 = v30;
      activityTitle = [(_UIHostActivityProxy *)self activityTitle];
      activityTitle2 = [(_UIHostActivityProxy *)v5 activityTitle];
      v44 = activityTitle;
      v45 = activityTitle2;
      v46 = v45;
      v72 = v44;
      v73 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        if ((v44 != 0) == (v45 == 0))
        {
          v12 = 0;
          v71 = v44;
          v28 = v78;
          v34 = v74;
LABEL_68:

          goto LABEL_69;
        }

        v47 = v45;
        v48 = v44;
        v49 = [v44 isEqual:v45];

        if (!v49)
        {
          v12 = 0;
          v28 = v78;
          v34 = v74;
LABEL_69:
          v50 = v72;
          v36 = v73;
          goto LABEL_70;
        }
      }

      activityFooter = [(_UIHostActivityProxy *)self activityFooter];
      activityFooter2 = [(_UIHostActivityProxy *)v5 activityFooter];
      v53 = activityFooter;
      v54 = activityFooter2;
      v69 = v54;
      v71 = v53;
      if (v53 == v54)
      {
      }

      else
      {
        if ((v53 != 0) == (v54 == 0))
        {
          v12 = 0;
          v62 = v54;
          v70 = v53;
          goto LABEL_66;
        }

        v55 = v54;
        v56 = v53;
        v57 = [v53 isEqual:v54];

        if (!v57)
        {
          v12 = 0;
LABEL_67:
          v28 = v78;
          v34 = v74;
          v46 = v69;
          goto LABEL_68;
        }
      }

      applicationBundleIdentifier = [(_UIHostActivityProxy *)self applicationBundleIdentifier];
      applicationBundleIdentifier2 = [(_UIHostActivityProxy *)v5 applicationBundleIdentifier];
      v60 = applicationBundleIdentifier;
      v61 = applicationBundleIdentifier2;
      v70 = v60;
      v62 = v61;
      if (v60 == v61)
      {
      }

      else
      {
        if ((v60 != 0) == (v61 == 0))
        {
          v12 = 0;
          v67 = v61;
LABEL_65:

          goto LABEL_66;
        }

        v68 = [v60 isEqual:v61];

        if (!v68)
        {
          v12 = 0;
LABEL_66:

          goto LABEL_67;
        }
      }

      activityImageUTI = [(_UIHostActivityProxy *)self activityImageUTI];
      activityImageUTI2 = [(_UIHostActivityProxy *)v5 activityImageUTI];
      v65 = activityImageUTI;
      v66 = activityImageUTI2;
      v60 = v65;
      v67 = v66;
      if (v65 == v66)
      {
        v12 = 1;
      }

      else if ((v65 != 0) == (v66 == 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = [v65 isEqual:v66];
      }

      goto LABEL_65;
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (BOOL)load
{
  loadHandler = [(_UIHostActivityProxy *)self loadHandler];
  if (loadHandler)
  {
    [(_UIHostActivityProxy *)self setLoadHandler:0];
    v4 = (loadHandler)[2](loadHandler, self);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)activityType
{
  activity = [(_UIHostActivityProxy *)self activity];
  activityType = [activity activityType];

  return activityType;
}

@end