@interface MSDProgress
+ (id)progressWithStage:(int)a3 percent:(int64_t)a4;
- (NSString)stageDescription;
@end

@implementation MSDProgress

+ (id)progressWithStage:(int)a3 percent:(int64_t)a4
{
  v6 = objc_alloc_init(MSDProgress);
  v7 = v6;
  if (v6)
  {
    [(MSDProgress *)v6 setStage:a3];
    [(MSDProgress *)v7 setPercent:a4];
  }

  return v7;
}

- (NSString)stageDescription
{
  v2 = [(MSDProgress *)self stage];
  result = @"Rebooting to turn off snapshot";
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = @"Enrolling with server";
      break;
    case 2:
      result = @"Downloading manifest";
      break;
    case 3:
      result = @"Updating general configuration";
      break;
    case 4:
      result = @"Updating apps";
      break;
    case 5:
      result = @"Updating app data";
      break;
    case 6:
      result = @"Rebooting to install content";
      break;
    case 7:
      result = @"Preparing for snapshot";
      break;
    case 8:
      result = @"Rebooting to turn on snapshot";
      break;
    case 9:
      result = @"Rebooting to reset content";
      break;
    case 10:
      result = @"Will start content update";
      break;
    case 11:
      result = @"Scanning existing general configuration";
      break;
    case 12:
      result = @"Downloading media library";
      break;
    case 13:
      result = @"Downloading preferences data";
      break;
    case 14:
      result = @"Migrating data";
      break;
    case 15:
      result = @"Migrating app data";
      break;
    case 16:
      result = @"Waiting at setup";
      break;
    case 17:
      result = @"Pricing app is updating its content";
      break;
    case 18:
      result = @"Downloading iOS update";
      break;
    case 19:
      result = @"Installing iOS update";
      break;
    case 20:
      result = @"Setting up accounts";
      break;
    case 21:
      result = @"Prepare to install apps";
      break;
    case 22:
      result = @"Updating demo content";
      break;
    case 23:
      result = @"Scanning iOS update";
      break;
    case 24:
      result = @"Waiting for demo bundle";
      break;
    case 25:
      goto LABEL_5;
    case 26:
      result = @"Rebooting to prepare demo";
      break;
    case 27:
      result = @"Rebooting device";
      break;
    default:
      if (v2 == 100)
      {
        result = @"Operation completed";
      }

      else
      {
LABEL_5:
        result = @"Other operations";
      }

      break;
  }

  return result;
}

@end