@interface GKCDArtwork
+ (id)artworkFromServerRepresentation:(id)representation moc:(id)moc;
- (BOOL)isValid;
- (GKArtworkMetadata)internalRepresentation;
@end

@implementation GKCDArtwork

+ (id)artworkFromServerRepresentation:(id)representation moc:(id)moc
{
  mocCopy = moc;
  representationCopy = representation;
  v7 = [[GKCDArtwork alloc] initWithContext:mocCopy];

  v8 = [representationCopy objectForKeyedSubscript:@"bgColor"];
  [(GKCDArtwork *)v7 setBgColor:v8];

  v9 = [representationCopy objectForKeyedSubscript:@"textColor1"];
  [(GKCDArtwork *)v7 setTextColor1:v9];

  v10 = [representationCopy objectForKeyedSubscript:@"textColor2"];
  [(GKCDArtwork *)v7 setTextColor2:v10];

  v11 = [representationCopy objectForKeyedSubscript:@"textColor3"];
  [(GKCDArtwork *)v7 setTextColor3:v11];

  v12 = [representationCopy objectForKeyedSubscript:@"textColor4"];
  [(GKCDArtwork *)v7 setTextColor4:v12];

  v13 = [representationCopy objectForKeyedSubscript:@"url"];
  [(GKCDArtwork *)v7 setUrl:v13];

  v14 = [representationCopy objectForKeyedSubscript:@"height"];
  [(GKCDArtwork *)v7 setHeight:v14];

  v15 = [representationCopy objectForKeyedSubscript:@"width"];

  [(GKCDArtwork *)v7 setWidth:v15];

  return v7;
}

- (BOOL)isValid
{
  v3 = [(GKCDArtwork *)self url];
  if (v3)
  {
    width = [(GKCDArtwork *)self width];
    if (width)
    {
      height = [(GKCDArtwork *)self height];
      v6 = height != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (GKArtworkMetadata)internalRepresentation
{
  if ([(GKCDArtwork *)self isValid])
  {
    v3 = [GKArtworkMetadata alloc];
    v4 = [(GKCDArtwork *)self url];
    width = [(GKCDArtwork *)self width];
    height = [(GKCDArtwork *)self height];
    textColor1 = [(GKCDArtwork *)self textColor1];
    textColor2 = [(GKCDArtwork *)self textColor2];
    textColor3 = [(GKCDArtwork *)self textColor3];
    textColor4 = [(GKCDArtwork *)self textColor4];
    bgColor = [(GKCDArtwork *)self bgColor];
    v12 = [v3 initWithTemplateURL:v4 width:width height:height textColor1:textColor1 textColor2:textColor2 textColor3:textColor3 textColor4:textColor4 backgroundColor:bgColor];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end