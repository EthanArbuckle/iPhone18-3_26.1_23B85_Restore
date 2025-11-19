@interface _UIHostActivityProxy
- (BOOL)isEqual:(id)a3;
- (BOOL)load;
- (NSString)description;
- (_UIHostActivityProxy)initWithActivity:(id)a3;
- (_UIHostActivityProxy)initWithCoder:(id)a3;
- (id)activityType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIHostActivityProxy

- (_UIHostActivityProxy)initWithActivity:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UIHostActivityProxy;
  v6 = [(_UIHostActivityProxy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, a3);
    v8 = [v5 activityUUID];
    identifier = v7->_identifier;
    v7->_identifier = v8;
  }

  return v7;
}

- (_UIHostActivityProxy)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [(_UIHostActivityProxy *)self init];
  if (v6)
  {
    -[_UIHostActivityProxy setIconImageSlotID:](v6, "setIconImageSlotID:", [v5 decodeInt32ForKey:@"iconImageSlotID"]);
    -[_UIHostActivityProxy setLabelSlotID:](v6, "setLabelSlotID:", [v5 decodeInt32ForKey:@"labelSlotID"]);
    [v5 decodeDoubleForKey:@"slotTextHeight"];
    [(_UIHostActivityProxy *)v6 setSlotTextHeight:?];
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_isDisabled = [v5 decodeBoolForKey:@"isDisabled"];
    v6->_isFavorite = [v5 decodeBoolForKey:@"isFavorite"];
    v6->_isRestricted = [v5 decodeBoolForKey:@"isRestricted"];
    v6->_isUserDefaultsActivity = [v5 decodeBoolForKey:@"isUserDefaultsActivity"];
    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifierShare"];
    activityIdentifierShare = v6->_activityIdentifierShare;
    v6->_activityIdentifierShare = v9;

    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifierOpen"];
    activityIdentifierOpen = v6->_activityIdentifierOpen;
    v6->_activityIdentifierOpen = v11;

    v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifierCopy"];
    activityIdentifierCopy = v6->_activityIdentifierCopy;
    v6->_activityIdentifierCopy = v13;

    v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"activityTitle"];
    activityTitle = v6->_activityTitle;
    v6->_activityTitle = v15;

    v17 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"activityFooter"];
    activityFooter = v6->_activityFooter;
    v6->_activityFooter = v17;

    v19 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v6->_applicationBundleIdentifier;
    v6->_applicationBundleIdentifier = v19;

    v21 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"activityImageUTI"];
    activityImageUTI = v6->_activityImageUTI;
    v6->_activityImageUTI = v21;

    if ([(_UIHostActivityProxy *)v6 labelSlotID])
    {
      v23 = [(_UIHostActivityProxy *)v6 activityTitle];
      v24 = [v23 slotIdentifier];

      if (!v24)
      {
        v25 = [(_UIHostActivityProxy *)v6 activityTitle];
        v26 = [v25 text];

        if (v26)
        {
          sub_10005AA34(a2, v6);
        }

        v27 = [SFProxyText alloc];
        v28 = [(_UIHostActivityProxy *)v6 labelSlotID];
        [(_UIHostActivityProxy *)v6 slotTextHeight];
        v29 = [v27 initWithSlotIdentifier:v28 slotTextHeight:?];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[_UIHostActivityProxy iconImageSlotID](self forKey:{"iconImageSlotID"), @"iconImageSlotID"}];
  [v4 encodeInt32:-[_UIHostActivityProxy labelSlotID](self forKey:{"labelSlotID"), @"labelSlotID"}];
  [(_UIHostActivityProxy *)self slotTextHeight];
  [v4 encodeDouble:@"slotTextHeight" forKey:?];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [v4 encodeBool:self->_isFavorite forKey:@"isFavorite"];
  [v4 encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [v4 encodeBool:self->_isUserDefaultsActivity forKey:@"isUserDefaultsActivity"];
  [v4 encodeObject:self->_activityIdentifierShare forKey:@"activityIdentifierShare"];
  [v4 encodeObject:self->_activityIdentifierOpen forKey:@"activityIdentifierOpen"];
  [v4 encodeObject:self->_activityIdentifierCopy forKey:@"activityIdentifierCopy"];
  [v4 encodeObject:self->_activityTitle forKey:@"activityTitle"];
  [v4 encodeObject:self->_activityFooter forKey:@"activityFooter"];
  [v4 encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  [v4 encodeObject:self->_activityImageUTI forKey:@"activityImageUTI"];
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = _UIHostActivityProxy;
  v3 = [(_UIHostActivityProxy *)&v17 description];
  v4 = [(_UIHostActivityProxy *)self identifier];
  activity = self->_activity;
  v5 = [(_UIHostActivityProxy *)self iconImageSlotID];
  v6 = [(_UIHostActivityProxy *)self labelSlotID];
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
  v13 = [NSString stringWithFormat:@"<%@: identifier:%@ activity:%@ iconImageSlotID:%u, textSlot:%u, isDisabled:%@, isFavorite:%@, isRestricted:%@, isUserDefaultsActivity:%@, activityIdentifierShare:%@, activityIdentifierOpen:%@, activityIdentifierCopy:%@, textHeight:%f, activityTitle:%@, activityFooter:%@, bundleIdentifier:%@, activityImageUTI:%@>", v3, v4, activity, v5, v6, v7, v8, v9, v10, v15, activityIdentifierCopy, v12, self->_activityTitle, self->_activityFooter, self->_applicationBundleIdentifier, self->_activityImageUTI];

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  v6 = [(_UIHostActivityProxy *)self identifier];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UIHostActivityProxy *)self identifier];
      v7 = [(_UIHostActivityProxy *)v5 identifier];
      v8 = v6;
      v9 = v7;
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

      v13 = [(_UIHostActivityProxy *)self iconImageSlotID];
      if (v13 != [(_UIHostActivityProxy *)v5 iconImageSlotID])
      {
        goto LABEL_16;
      }

      v14 = [(_UIHostActivityProxy *)self labelSlotID];
      if (v14 != [(_UIHostActivityProxy *)v5 labelSlotID])
      {
        goto LABEL_16;
      }

      v15 = [(_UIHostActivityProxy *)self isDisabled];
      if (v15 != [(_UIHostActivityProxy *)v5 isDisabled])
      {
        goto LABEL_16;
      }

      v16 = [(_UIHostActivityProxy *)self isFavorite];
      if (v16 != [(_UIHostActivityProxy *)v5 isFavorite])
      {
        goto LABEL_16;
      }

      v17 = [(_UIHostActivityProxy *)self isRestricted];
      if (v17 != [(_UIHostActivityProxy *)v5 isRestricted])
      {
        goto LABEL_16;
      }

      v18 = [(_UIHostActivityProxy *)self isUserDefaultsActivity];
      if (v18 != [(_UIHostActivityProxy *)v5 isUserDefaultsActivity])
      {
        goto LABEL_16;
      }

      v22 = [(_UIHostActivityProxy *)self activityIdentifierShare];
      v23 = [(_UIHostActivityProxy *)v5 activityIdentifierShare];
      v20 = v22;
      v24 = v23;
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

      v26 = [(_UIHostActivityProxy *)self activityIdentifierOpen];
      v27 = [(_UIHostActivityProxy *)v5 activityIdentifierOpen];
      v28 = v26;
      v29 = v27;
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
      v32 = [(_UIHostActivityProxy *)self activityIdentifierCopy];
      v33 = [(_UIHostActivityProxy *)v5 activityIdentifierCopy];
      v34 = v32;
      v35 = v33;
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
      v42 = [(_UIHostActivityProxy *)self activityTitle];
      v43 = [(_UIHostActivityProxy *)v5 activityTitle];
      v44 = v42;
      v45 = v43;
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

      v51 = [(_UIHostActivityProxy *)self activityFooter];
      v52 = [(_UIHostActivityProxy *)v5 activityFooter];
      v53 = v51;
      v54 = v52;
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

      v58 = [(_UIHostActivityProxy *)self applicationBundleIdentifier];
      v59 = [(_UIHostActivityProxy *)v5 applicationBundleIdentifier];
      v60 = v58;
      v61 = v59;
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

      v63 = [(_UIHostActivityProxy *)self activityImageUTI];
      v64 = [(_UIHostActivityProxy *)v5 activityImageUTI];
      v65 = v63;
      v66 = v64;
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
  v3 = [(_UIHostActivityProxy *)self loadHandler];
  if (v3)
  {
    [(_UIHostActivityProxy *)self setLoadHandler:0];
    v4 = (v3)[2](v3, self);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)activityType
{
  v2 = [(_UIHostActivityProxy *)self activity];
  v3 = [v2 activityType];

  return v3;
}

@end