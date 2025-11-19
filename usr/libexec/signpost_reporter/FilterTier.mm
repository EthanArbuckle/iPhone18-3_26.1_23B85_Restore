@interface FilterTier
- (id)entryForQuery:(id)a3;
- (void)setCap:(unint64_t)a3 downsampleRatio:(unint64_t)a4 forQuery:(id)a5;
@end

@implementation FilterTier

- (id)entryForQuery:(id)a3
{
  v4 = a3;
  v5 = [(FilterTier *)self keyForChildren:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(FilterTier *)self childTiers];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7 || ([v7 entryForQuery:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
LABEL_4:
    v8 = [(FilterTier *)self downsampleEntry];
  }

  return v8;
}

- (void)setCap:(unint64_t)a3 downsampleRatio:(unint64_t)a4 forQuery:(id)a5
{
  v12 = a5;
  v8 = [(FilterTier *)self keyForChildren:?];
  if (v8)
  {
    v9 = [(FilterTier *)self childTiers];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (!v10)
    {
      v10 = [(FilterTier *)self newChildInstance];
      v11 = [(FilterTier *)self childTiers];
      [v11 setObject:v10 forKeyedSubscript:v8];
    }

    [(SRDownsampleEntry *)v10 setCap:a3 downsampleRatio:a4 forQuery:v12];
  }

  else
  {
    v10 = [[SRDownsampleEntry alloc] initWithCap:a3 downsampleRatio:a4];
    [(FilterTier *)self setDownsampleEntry:v10];
  }
}

@end