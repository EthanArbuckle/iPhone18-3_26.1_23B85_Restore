@interface SPTreeNode
- (id)debugDescription;
@end

@implementation SPTreeNode

- (id)debugDescription
{
  angleBracketContents = self->_angleBracketContents;
  if (angleBracketContents)
  {
    if (self->_isKernel)
    {
      v4 = "*";
    }

    else
    {
      v4 = " ";
    }

    [NSString stringWithFormat:@"%s%d %@ (%@)", v4, self->_count, angleBracketContents, self->_stateInfo];
    goto LABEL_6;
  }

  bodies = self->_bodies;
  if (self->_isKernel)
  {
    v7 = "*";
  }

  else
  {
    v7 = " ";
  }

  count = self->_count;
  if (!bodies)
  {
    [NSString stringWithFormat:@"%s%d (%@)", v7, self->_count, self->_stateInfo, v11];
    v5 = LABEL_6:;
    goto LABEL_12;
  }

  firstObject = [(NSArray *)bodies firstObject];
  v5 = [NSString stringWithFormat:@"%s%d %@ (x%lu) [0x%llx] (%@)", v7, count, firstObject, [(NSArray *)self->_bodies count], self->_address, self->_stateInfo];

LABEL_12:

  return v5;
}

@end