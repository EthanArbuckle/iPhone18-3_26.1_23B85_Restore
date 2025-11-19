@interface UIAirDropNode
+ (id)TTRAirDropNode;
+ (id)nodeWithIdentifier:(id)a3 peopleSuggestion:(id)a4;
+ (id)nodeWithIdentifier:(id)a3 suggestionNode:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTapToRadar;
- (BOOL)load;
- (NSString)description;
- (UIAirDropNode)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIAirDropNode

+ (id)nodeWithIdentifier:(id)a3 suggestionNode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:v6];

  [(UIAirDropNode *)v7 setSuggestionNode:v5];
  v8 = [v5 suggestion];

  -[UIAirDropNode setIsPlaceholder:](v7, "setIsPlaceholder:", [v8 isPlaceholder]);

  return v7;
}

+ (id)nodeWithIdentifier:(id)a3 peopleSuggestion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:v6];

  [(UIAirDropNode *)v7 setPeopleSuggestion:v5];

  return v7;
}

+ (id)TTRAirDropNode
{
  v2 = objc_alloc_init(UIAirDropNode);
  v3 = +[SFPeopleSuggestion TTRPeopleSuggestion];
  v4 = [NSUUID alloc];
  v5 = [v3 identifier];
  v6 = [v4 initWithUUIDString:v5];
  [(UIAirDropNode *)v2 setIdentifier:v6];

  v7 = [SFProxyText alloc];
  v8 = [v3 displayName];
  v9 = [v7 initWithText:v8];
  [(UIAirDropNode *)v2 setDisplayName:v9];

  [(UIAirDropNode *)v2 setPeopleSuggestion:v3];

  return v2;
}

- (BOOL)isTapToRadar
{
  v2 = [(UIAirDropNode *)self peopleSuggestion];
  v3 = [v2 isTapToRadar];

  return v3;
}

- (UIAirDropNode)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [(UIAirDropNode *)self init];
  if (v6)
  {
    -[UIAirDropNode setAvatarImageSlotID:](v6, "setAvatarImageSlotID:", [v5 decodeInt32ForKey:@"avatarImageSlotID"]);
    -[UIAirDropNode setTransportImageSlotID:](v6, "setTransportImageSlotID:", [v5 decodeInt32ForKey:@"transportImageSlotID"]);
    -[UIAirDropNode setMainLabelSlotID:](v6, "setMainLabelSlotID:", [v5 decodeInt32ForKey:@"mainLabelSlotID"]);
    [v5 decodeDoubleForKey:@"mainLabelSlotHeight"];
    [(UIAirDropNode *)v6 setMainLabelSlotHeight:?];
    -[UIAirDropNode setBottomLabelSlotID:](v6, "setBottomLabelSlotID:", [v5 decodeInt32ForKey:@"bottomLabelSlotID"]);
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionNodeReason"];
    [(UIAirDropNode *)v6 setSuggestionReason:v7];

    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v8;

    v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v6->_subtitle;
    v6->_subtitle = v10;

    v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v12;

    v6->_isMagicHead = [v5 decodeBoolForKey:@"isMagicHead"];
    v6->_selectionReason = [v5 decodeInt64ForKey:@"selectionReason"];
    v6->_hasSquareImage = [v5 decodeBoolForKey:@"hasSquareImage"];
    v6->_isDisabled = [v5 decodeBoolForKey:@"isDisabled"];
    v6->_isRestricted = [v5 decodeBoolForKey:@"isRestricted"];
    v6->_isPlaceholder = [v5 decodeBoolForKey:@"isPlaceholder"];
    v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"peopleSuggestion"];
    peopleSuggestion = v6->_peopleSuggestion;
    v6->_peopleSuggestion = v14;

    if ([(UIAirDropNode *)v6 mainLabelSlotID])
    {
      v16 = [(UIAirDropNode *)v6 displayName];
      v17 = [v16 slotIdentifier];

      if (!v17)
      {
        v18 = [(UIAirDropNode *)v6 displayName];
        v19 = [v18 text];

        if (v19)
        {
          sub_100131AD8(a2, v6);
        }

        v20 = [SFProxyText alloc];
        v21 = [(UIAirDropNode *)v6 mainLabelSlotID];
        [(UIAirDropNode *)v6 mainLabelSlotHeight];
        v22 = [v20 initWithSlotIdentifier:v21 slotTextHeight:?];
        [(UIAirDropNode *)v6 setDisplayName:v22];
      }
    }

    if ([(UIAirDropNode *)v6 bottomLabelSlotID])
    {
      v23 = [(UIAirDropNode *)v6 subtitle];
      v24 = [v23 slotIdentifier];

      if (!v24)
      {
        v25 = [(UIAirDropNode *)v6 subtitle];
        v26 = [v25 text];

        if (v26)
        {
          sub_100131B4C(a2, v6);
        }

        v27 = [[SFProxyText alloc] initWithSlotIdentifier:{-[UIAirDropNode bottomLabelSlotID](v6, "bottomLabelSlotID")}];
        [(UIAirDropNode *)v6 setSubtitle:v27];
      }
    }

    if ([(UIAirDropNode *)v6 isRestricted])
    {
      v28 = share_sheet_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        sub_100131BC0(v6, v28);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt32:-[UIAirDropNode avatarImageSlotID](self forKey:{"avatarImageSlotID"), @"avatarImageSlotID"}];
  [v6 encodeInt32:-[UIAirDropNode transportImageSlotID](self forKey:{"transportImageSlotID"), @"transportImageSlotID"}];
  [v6 encodeInt32:-[UIAirDropNode mainLabelSlotID](self forKey:{"mainLabelSlotID"), @"mainLabelSlotID"}];
  [(UIAirDropNode *)self mainLabelSlotHeight];
  [v6 encodeDouble:@"mainLabelSlotHeight" forKey:?];
  [v6 encodeInt32:-[UIAirDropNode bottomLabelSlotID](self forKey:{"bottomLabelSlotID"), @"bottomLabelSlotID"}];
  v4 = [(UIAirDropNode *)self suggestionNode];
  v5 = [v4 suggestionReason];
  [v6 encodeObject:v5 forKey:@"suggestionNodeReason"];

  [v6 encodeObject:self->_displayName forKey:@"displayName"];
  [v6 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeBool:self->_isMagicHead forKey:@"isMagicHead"];
  [v6 encodeInt64:self->_selectionReason forKey:@"selectionReason"];
  [v6 encodeBool:self->_hasSquareImage forKey:@"hasSquareImage"];
  [v6 encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [v6 encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [v6 encodeBool:self->_isPlaceholder forKey:@"isPlaceholder"];
  [v6 encodeObject:self->_peopleSuggestion forKey:@"peopleSuggestion"];
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = UIAirDropNode;
  v3 = [(UIAirDropNode *)&v17 description];
  v4 = [(UIAirDropNode *)self identifier];
  v5 = [(UIAirDropNode *)self avatarImageSlotID];
  v6 = [(UIAirDropNode *)self transportImageSlotID];
  v7 = [(UIAirDropNode *)self mainLabelSlotID];
  [(UIAirDropNode *)self mainLabelSlotHeight];
  if (self->_isDisabled)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_isRestricted)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_isPlaceholder)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [NSString stringWithFormat:@"<%@: identifier:%@ avatarImageSlotID:%u, transportImageSlotID:%u, textSlotID:%u, textSlotHeight:%f, peopleSuggestion:%@, isDisabled:%@, isRestricted:%@ displayName:%@ subtitle:%@ isPlaceholder:%@", v3, v4, v5, v6, v7, v8, self->_peopleSuggestion, v9, v10, self->_displayName, self->_subtitle, v11];

  if (self->_isMagicHead)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v12 stringByAppendingFormat:@", isMagicHead:%@, selectionReason:%ld", v13, self->_selectionReason];

  v15 = [v14 stringByAppendingFormat:@">"];

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  v6 = [(UIAirDropNode *)self identifier];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIAirDropNode *)v5 avatarImageSlotID];
      if (v6 != [(UIAirDropNode *)self avatarImageSlotID]|| (v7 = [(UIAirDropNode *)v5 mainLabelSlotID], v7 != [(UIAirDropNode *)self mainLabelSlotID]) || ([(UIAirDropNode *)v5 mainLabelSlotHeight], v9 = v8, [(UIAirDropNode *)self mainLabelSlotHeight], v9 != v10) || (v11 = [(UIAirDropNode *)v5 bottomLabelSlotID], v11 != [(UIAirDropNode *)self bottomLabelSlotID]) || (v12 = [(UIAirDropNode *)v5 transportImageSlotID], v12 != [(UIAirDropNode *)self transportImageSlotID]))
      {
        v19 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v13 = [(UIAirDropNode *)v5 identifier];
      v14 = [(UIAirDropNode *)self identifier];
      v15 = v13;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v19 = 0;
          v27 = v16;
          v28 = v15;
LABEL_26:

          goto LABEL_27;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
LABEL_24:
          v19 = 0;
LABEL_27:

          goto LABEL_15;
        }
      }

      v21 = [(UIAirDropNode *)v5 isMagicHead];
      if (v21 != [(UIAirDropNode *)self isMagicHead])
      {
        goto LABEL_24;
      }

      v22 = [(UIAirDropNode *)v5 selectionReason];
      if (v22 != [(UIAirDropNode *)self selectionReason])
      {
        goto LABEL_24;
      }

      v23 = [(UIAirDropNode *)v5 hasSquareImage];
      if (v23 != [(UIAirDropNode *)self hasSquareImage])
      {
        goto LABEL_24;
      }

      v24 = [(UIAirDropNode *)v5 isDisabled];
      if (v24 != [(UIAirDropNode *)self isDisabled])
      {
        goto LABEL_24;
      }

      v25 = [(UIAirDropNode *)v5 isRestricted];
      if (v25 != [(UIAirDropNode *)self isRestricted])
      {
        goto LABEL_24;
      }

      v26 = [(UIAirDropNode *)v5 isPlaceholder];
      if (v26 != [(UIAirDropNode *)self isPlaceholder])
      {
        goto LABEL_24;
      }

      v29 = [(UIAirDropNode *)v5 peopleSuggestion];
      v30 = [(UIAirDropNode *)self peopleSuggestion];
      v28 = v29;
      v31 = v30;
      v32 = v31;
      v44 = v31;
      if (v28 == v31)
      {
      }

      else
      {
        if ((v28 != 0) == (v31 == 0))
        {
          v19 = 0;
          v36 = v28;
          goto LABEL_47;
        }

        v33 = [v28 isEqual:v31];

        if (!v33)
        {
          v19 = 0;
LABEL_48:
          v27 = v44;
          goto LABEL_26;
        }
      }

      v34 = [(UIAirDropNode *)v5 displayName];
      v35 = [(UIAirDropNode *)self displayName];
      v36 = v34;
      v37 = v35;
      v32 = v37;
      if (v36 == v37)
      {
      }

      else
      {
        if ((v36 != 0) == (v37 == 0))
        {
          v19 = 0;
          v43 = v37;
          v41 = v36;
LABEL_46:

          goto LABEL_47;
        }

        v38 = [v36 isEqual:v37];

        if (!v38)
        {
          v19 = 0;
LABEL_47:

          goto LABEL_48;
        }
      }

      v39 = [(UIAirDropNode *)v5 subtitle];
      v40 = [(UIAirDropNode *)self subtitle];
      v41 = v39;
      v42 = v40;
      v43 = v42;
      if (v41 == v42)
      {
        v19 = 1;
      }

      else if ((v41 != 0) == (v42 == 0))
      {
        v19 = 0;
      }

      else
      {
        v19 = [v41 isEqual:v42];
      }

      goto LABEL_46;
    }

    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (BOOL)load
{
  v3 = [(UIAirDropNode *)self loadHandler];
  if (v3)
  {
    [(UIAirDropNode *)self setLoadHandler:0];
    v4 = [(UIAirDropNode *)self peopleSuggestion];

    if (v4 || (-[UIAirDropNode suggestionNode](self, "suggestionNode"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 loadIcon], v5, v6))
    {
      v7 = (v3)[2](v3, self);
    }

    else
    {
      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100131C38(self, v8);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end