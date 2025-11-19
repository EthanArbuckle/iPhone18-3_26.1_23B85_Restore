@interface CKKSFixups
+ (id)fixupOperation:(unint64_t)a3;
@end

@implementation CKKSFixups

+ (id)fixupOperation:(unint64_t)a3
{
  if (!a3)
  {
    v4 = off_100343BC8;
    goto LABEL_12;
  }

  if (a3 != 5)
  {
    if (a3 == 1)
    {
      v4 = off_100343BD0;
      goto LABEL_12;
    }

    if (a3 < 3)
    {
      v4 = off_100343BD8;
      goto LABEL_12;
    }

    if (a3 == 3)
    {
      v4 = off_100343BE0;
      goto LABEL_12;
    }

    if (a3 <= 4)
    {
      v4 = off_100343BE8;
LABEL_12:
      v5 = *v4;

      return v5;
    }
  }

  v5 = 0;

  return v5;
}

@end