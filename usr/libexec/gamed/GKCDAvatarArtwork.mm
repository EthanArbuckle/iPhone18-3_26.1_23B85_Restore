@interface GKCDAvatarArtwork
- (GKAvatarArtwork)internalRepresentation;
@end

@implementation GKCDAvatarArtwork

- (GKAvatarArtwork)internalRepresentation
{
  type = [(GKCDAvatarArtwork *)self type];

  if (type)
  {
    artwork = [(GKCDAvatarArtwork *)self artwork];
    internalRepresentation = [artwork internalRepresentation];

    if (internalRepresentation)
    {
      v6 = [GKAvatarArtwork alloc];
      type2 = [(GKCDAvatarArtwork *)self type];
      v8 = [v6 initWithType:type2 metadata:internalRepresentation];
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