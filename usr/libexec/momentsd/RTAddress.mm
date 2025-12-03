@interface RTAddress
- (id)getPreferredName;
@end

@implementation RTAddress

- (id)getPreferredName
{
  areasOfInterest = [(RTAddress *)self areasOfInterest];
  if (areasOfInterest && (v4 = areasOfInterest, -[RTAddress areasOfInterest](self, "areasOfInterest"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    areasOfInterest2 = [(RTAddress *)self areasOfInterest];
    firstObject = [areasOfInterest2 firstObject];
  }

  else
  {
    thoroughfare = [(RTAddress *)self thoroughfare];

    locality = [(RTAddress *)self locality];
    firstObject = locality;
    if (thoroughfare)
    {

      [(RTAddress *)self thoroughfare];
      if (firstObject)
        v11 = {;
        locality2 = [(RTAddress *)self locality];
        firstObject = [NSString stringWithFormat:@"%@, %@", v11, locality2];
      }

      else
        firstObject = {;
      }
    }
  }

  return firstObject;
}

@end