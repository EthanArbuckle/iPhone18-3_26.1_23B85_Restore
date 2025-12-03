@interface CLLocationContextUtil
+ (int64_t)getContextFromVenueBounds:(const void *)bounds;
@end

@implementation CLLocationContextUtil

+ (int64_t)getContextFromVenueBounds:(const void *)bounds
{
  if ((*(bounds + 104) & 8) != 0)
  {
    v9 = *(bounds + 24);

    return [self convertFromProtoContext:v9];
  }

  else
  {
    v3 = *(bounds + 6);
    if (v3)
    {
      v4 = *(bounds + 2);
      for (i = 8 * v3; i; i -= 8)
      {
        v6 = *v4;
        v7 = *(*v4 + 23);
        if (v7 < 0)
        {
          if (**v6 != 71)
          {
            v10 = v6[1];
            if (v10)
            {
              v6 = *v6;
              v8 = v10 - 1;
              if ((v10 - 1) < 0x7FFFFFFFFFFFFFF8)
              {
LABEL_10:
                if (v8 < 0x17)
                {
                  v13 = v8;
                  if (v8)
                  {
                    memmove(&__dst, v6 + 1, v8);
                  }

                  *(&__dst + v8) = 0;
                  sub_1001181E4(v14, &__dst);
                }

                operator new();
              }

LABEL_22:
              sub_10000D39C();
            }

LABEL_23:
            sub_10001C6BC();
          }
        }

        else if (*v6 != 71)
        {
          if (*(*v4 + 23))
          {
            v8 = v7 - 1;
            if ((v7 - 1) < 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_10;
            }

            goto LABEL_22;
          }

          goto LABEL_23;
        }

        v4 += 8;
      }
    }

    return 0;
  }
}

@end