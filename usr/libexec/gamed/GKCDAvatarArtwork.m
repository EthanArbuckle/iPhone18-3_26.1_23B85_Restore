@interface GKCDAvatarArtwork
- (GKAvatarArtwork)internalRepresentation;
@end

@implementation GKCDAvatarArtwork

- (GKAvatarArtwork)internalRepresentation
{
  v3 = [(GKCDAvatarArtwork *)self type];

  if (v3)
  {
    v4 = [(GKCDAvatarArtwork *)self artwork];
    v5 = [v4 internalRepresentation];

    if (v5)
    {
      v6 = [GKAvatarArtwork alloc];
      v7 = [(GKCDAvatarArtwork *)self type];
      v8 = [v6 initWithType:v7 metadata:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end