@interface UIAirDropNode
+ (id)TTRAirDropNode;
+ (id)nodeWithIdentifier:(id)identifier peopleSuggestion:(id)suggestion;
+ (id)nodeWithIdentifier:(id)identifier suggestionNode:(id)node;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTapToRadar;
- (BOOL)load;
- (NSString)description;
- (UIAirDropNode)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIAirDropNode

+ (id)nodeWithIdentifier:(id)identifier suggestionNode:(id)node
{
  nodeCopy = node;
  identifierCopy = identifier;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:identifierCopy];

  [(UIAirDropNode *)v7 setSuggestionNode:nodeCopy];
  suggestion = [nodeCopy suggestion];

  -[UIAirDropNode setIsPlaceholder:](v7, "setIsPlaceholder:", [suggestion isPlaceholder]);

  return v7;
}

+ (id)nodeWithIdentifier:(id)identifier peopleSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  v7 = objc_alloc_init(UIAirDropNode);
  [(UIAirDropNode *)v7 setIdentifier:identifierCopy];

  [(UIAirDropNode *)v7 setPeopleSuggestion:suggestionCopy];

  return v7;
}

+ (id)TTRAirDropNode
{
  v2 = objc_alloc_init(UIAirDropNode);
  v3 = +[SFPeopleSuggestion TTRPeopleSuggestion];
  v4 = [NSUUID alloc];
  identifier = [v3 identifier];
  v6 = [v4 initWithUUIDString:identifier];
  [(UIAirDropNode *)v2 setIdentifier:v6];

  v7 = [SFProxyText alloc];
  displayName = [v3 displayName];
  v9 = [v7 initWithText:displayName];
  [(UIAirDropNode *)v2 setDisplayName:v9];

  [(UIAirDropNode *)v2 setPeopleSuggestion:v3];

  return v2;
}

- (BOOL)isTapToRadar
{
  peopleSuggestion = [(UIAirDropNode *)self peopleSuggestion];
  isTapToRadar = [peopleSuggestion isTapToRadar];

  return isTapToRadar;
}

- (UIAirDropNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [(UIAirDropNode *)self init];
  if (v6)
  {
    -[UIAirDropNode setAvatarImageSlotID:](v6, "setAvatarImageSlotID:", [coderCopy decodeInt32ForKey:@"avatarImageSlotID"]);
    -[UIAirDropNode setTransportImageSlotID:](v6, "setTransportImageSlotID:", [coderCopy decodeInt32ForKey:@"transportImageSlotID"]);
    -[UIAirDropNode setMainLabelSlotID:](v6, "setMainLabelSlotID:", [coderCopy decodeInt32ForKey:@"mainLabelSlotID"]);
    [coderCopy decodeDoubleForKey:@"mainLabelSlotHeight"];
    [(UIAirDropNode *)v6 setMainLabelSlotHeight:?];
    -[UIAirDropNode setBottomLabelSlotID:](v6, "setBottomLabelSlotID:", [coderCopy decodeInt32ForKey:@"bottomLabelSlotID"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionNodeReason"];
    [(UIAirDropNode *)v6 setSuggestionReason:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v6->_subtitle;
    v6->_subtitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v12;

    v6->_isMagicHead = [coderCopy decodeBoolForKey:@"isMagicHead"];
    v6->_selectionReason = [coderCopy decodeInt64ForKey:@"selectionReason"];
    v6->_hasSquareImage = [coderCopy decodeBoolForKey:@"hasSquareImage"];
    v6->_isDisabled = [coderCopy decodeBoolForKey:@"isDisabled"];
    v6->_isRestricted = [coderCopy decodeBoolForKey:@"isRestricted"];
    v6->_isPlaceholder = [coderCopy decodeBoolForKey:@"isPlaceholder"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peopleSuggestion"];
    peopleSuggestion = v6->_peopleSuggestion;
    v6->_peopleSuggestion = v14;

    if ([(UIAirDropNode *)v6 mainLabelSlotID])
    {
      displayName = [(UIAirDropNode *)v6 displayName];
      slotIdentifier = [displayName slotIdentifier];

      if (!slotIdentifier)
      {
        displayName2 = [(UIAirDropNode *)v6 displayName];
        text = [displayName2 text];

        if (text)
        {
          sub_100131AD8(a2, v6);
        }

        v20 = [SFProxyText alloc];
        mainLabelSlotID = [(UIAirDropNode *)v6 mainLabelSlotID];
        [(UIAirDropNode *)v6 mainLabelSlotHeight];
        v22 = [v20 initWithSlotIdentifier:mainLabelSlotID slotTextHeight:?];
        [(UIAirDropNode *)v6 setDisplayName:v22];
      }
    }

    if ([(UIAirDropNode *)v6 bottomLabelSlotID])
    {
      subtitle = [(UIAirDropNode *)v6 subtitle];
      slotIdentifier2 = [subtitle slotIdentifier];

      if (!slotIdentifier2)
      {
        subtitle2 = [(UIAirDropNode *)v6 subtitle];
        text2 = [subtitle2 text];

        if (text2)
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[UIAirDropNode avatarImageSlotID](self forKey:{"avatarImageSlotID"), @"avatarImageSlotID"}];
  [coderCopy encodeInt32:-[UIAirDropNode transportImageSlotID](self forKey:{"transportImageSlotID"), @"transportImageSlotID"}];
  [coderCopy encodeInt32:-[UIAirDropNode mainLabelSlotID](self forKey:{"mainLabelSlotID"), @"mainLabelSlotID"}];
  [(UIAirDropNode *)self mainLabelSlotHeight];
  [coderCopy encodeDouble:@"mainLabelSlotHeight" forKey:?];
  [coderCopy encodeInt32:-[UIAirDropNode bottomLabelSlotID](self forKey:{"bottomLabelSlotID"), @"bottomLabelSlotID"}];
  suggestionNode = [(UIAirDropNode *)self suggestionNode];
  suggestionReason = [suggestionNode suggestionReason];
  [coderCopy encodeObject:suggestionReason forKey:@"suggestionNodeReason"];

  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isMagicHead forKey:@"isMagicHead"];
  [coderCopy encodeInt64:self->_selectionReason forKey:@"selectionReason"];
  [coderCopy encodeBool:self->_hasSquareImage forKey:@"hasSquareImage"];
  [coderCopy encodeBool:self->_isDisabled forKey:@"isDisabled"];
  [coderCopy encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [coderCopy encodeBool:self->_isPlaceholder forKey:@"isPlaceholder"];
  [coderCopy encodeObject:self->_peopleSuggestion forKey:@"peopleSuggestion"];
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = UIAirDropNode;
  v3 = [(UIAirDropNode *)&v17 description];
  identifier = [(UIAirDropNode *)self identifier];
  avatarImageSlotID = [(UIAirDropNode *)self avatarImageSlotID];
  transportImageSlotID = [(UIAirDropNode *)self transportImageSlotID];
  mainLabelSlotID = [(UIAirDropNode *)self mainLabelSlotID];
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

  v12 = [NSString stringWithFormat:@"<%@: identifier:%@ avatarImageSlotID:%u, transportImageSlotID:%u, textSlotID:%u, textSlotHeight:%f, peopleSuggestion:%@, isDisabled:%@, isRestricted:%@ displayName:%@ subtitle:%@ isPlaceholder:%@", v3, identifier, avatarImageSlotID, transportImageSlotID, mainLabelSlotID, v8, self->_peopleSuggestion, v9, v10, self->_displayName, self->_subtitle, v11];

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

  identifier = [(UIAirDropNode *)self identifier];
  v7 = [identifier hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      avatarImageSlotID = [(UIAirDropNode *)v5 avatarImageSlotID];
      if (avatarImageSlotID != [(UIAirDropNode *)self avatarImageSlotID]|| (v7 = [(UIAirDropNode *)v5 mainLabelSlotID], v7 != [(UIAirDropNode *)self mainLabelSlotID]) || ([(UIAirDropNode *)v5 mainLabelSlotHeight], v9 = v8, [(UIAirDropNode *)self mainLabelSlotHeight], v9 != v10) || (v11 = [(UIAirDropNode *)v5 bottomLabelSlotID], v11 != [(UIAirDropNode *)self bottomLabelSlotID]) || (v12 = [(UIAirDropNode *)v5 transportImageSlotID], v12 != [(UIAirDropNode *)self transportImageSlotID]))
      {
        v19 = 0;
LABEL_15:

        goto LABEL_16;
      }

      identifier = [(UIAirDropNode *)v5 identifier];
      identifier2 = [(UIAirDropNode *)self identifier];
      v15 = identifier;
      v16 = identifier2;
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

      isMagicHead = [(UIAirDropNode *)v5 isMagicHead];
      if (isMagicHead != [(UIAirDropNode *)self isMagicHead])
      {
        goto LABEL_24;
      }

      selectionReason = [(UIAirDropNode *)v5 selectionReason];
      if (selectionReason != [(UIAirDropNode *)self selectionReason])
      {
        goto LABEL_24;
      }

      hasSquareImage = [(UIAirDropNode *)v5 hasSquareImage];
      if (hasSquareImage != [(UIAirDropNode *)self hasSquareImage])
      {
        goto LABEL_24;
      }

      isDisabled = [(UIAirDropNode *)v5 isDisabled];
      if (isDisabled != [(UIAirDropNode *)self isDisabled])
      {
        goto LABEL_24;
      }

      isRestricted = [(UIAirDropNode *)v5 isRestricted];
      if (isRestricted != [(UIAirDropNode *)self isRestricted])
      {
        goto LABEL_24;
      }

      isPlaceholder = [(UIAirDropNode *)v5 isPlaceholder];
      if (isPlaceholder != [(UIAirDropNode *)self isPlaceholder])
      {
        goto LABEL_24;
      }

      peopleSuggestion = [(UIAirDropNode *)v5 peopleSuggestion];
      peopleSuggestion2 = [(UIAirDropNode *)self peopleSuggestion];
      v28 = peopleSuggestion;
      v31 = peopleSuggestion2;
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

      displayName = [(UIAirDropNode *)v5 displayName];
      displayName2 = [(UIAirDropNode *)self displayName];
      v36 = displayName;
      v37 = displayName2;
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

      subtitle = [(UIAirDropNode *)v5 subtitle];
      subtitle2 = [(UIAirDropNode *)self subtitle];
      v41 = subtitle;
      v42 = subtitle2;
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
  loadHandler = [(UIAirDropNode *)self loadHandler];
  if (loadHandler)
  {
    [(UIAirDropNode *)self setLoadHandler:0];
    peopleSuggestion = [(UIAirDropNode *)self peopleSuggestion];

    if (peopleSuggestion || (-[UIAirDropNode suggestionNode](self, "suggestionNode"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 loadIcon], v5, v6))
    {
      v7 = (loadHandler)[2](loadHandler, self);
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