@interface GKCDArtwork
+ (id)artworkFromServerRepresentation:(id)a3 moc:(id)a4;
- (BOOL)isValid;
- (GKArtworkMetadata)internalRepresentation;
@end

@implementation GKCDArtwork

+ (id)artworkFromServerRepresentation:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[GKCDArtwork alloc] initWithContext:v5];

  v8 = [v6 objectForKeyedSubscript:@"bgColor"];
  [(GKCDArtwork *)v7 setBgColor:v8];

  v9 = [v6 objectForKeyedSubscript:@"textColor1"];
  [(GKCDArtwork *)v7 setTextColor1:v9];

  v10 = [v6 objectForKeyedSubscript:@"textColor2"];
  [(GKCDArtwork *)v7 setTextColor2:v10];

  v11 = [v6 objectForKeyedSubscript:@"textColor3"];
  [(GKCDArtwork *)v7 setTextColor3:v11];

  v12 = [v6 objectForKeyedSubscript:@"textColor4"];
  [(GKCDArtwork *)v7 setTextColor4:v12];

  v13 = [v6 objectForKeyedSubscript:@"url"];
  [(GKCDArtwork *)v7 setUrl:v13];

  v14 = [v6 objectForKeyedSubscript:@"height"];
  [(GKCDArtwork *)v7 setHeight:v14];

  v15 = [v6 objectForKeyedSubscript:@"width"];

  [(GKCDArtwork *)v7 setWidth:v15];

  return v7;
}

- (BOOL)isValid
{
  v3 = [(GKCDArtwork *)self url];
  if (v3)
  {
    v4 = [(GKCDArtwork *)self width];
    if (v4)
    {
      v5 = [(GKCDArtwork *)self height];
      v6 = v5 != 0;
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
    v5 = [(GKCDArtwork *)self width];
    v6 = [(GKCDArtwork *)self height];
    v7 = [(GKCDArtwork *)self textColor1];
    v8 = [(GKCDArtwork *)self textColor2];
    v9 = [(GKCDArtwork *)self textColor3];
    v10 = [(GKCDArtwork *)self textColor4];
    v11 = [(GKCDArtwork *)self bgColor];
    v12 = [v3 initWithTemplateURL:v4 width:v5 height:v6 textColor1:v7 textColor2:v8 textColor3:v9 textColor4:v10 backgroundColor:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end