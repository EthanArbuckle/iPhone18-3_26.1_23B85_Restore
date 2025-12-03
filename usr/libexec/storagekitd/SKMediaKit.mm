@interface SKMediaKit
+ (id)getFilesystem:(id)filesystem;
+ (id)getMediaKitFilesystemInfo:(id)info;
+ (id)getMediaKitFilesystemType:(id)type;
+ (id)newMediaRefForDisk:(id)disk options:(id)options error:(id *)error;
@end

@implementation SKMediaKit

+ (id)getMediaKitFilesystemType:(id)type
{
  v3 = [SKMediaKit getMediaKitFilesystemInfo:type];
  v4 = v3;
  if (v3)
  {
    fsType = [v3 fsType];
    if (fsType)
    {
      fsType2 = [v4 fsType];
    }

    else
    {
      fsType2 = 0;
    }
  }

  else
  {
    fsType2 = 0;
  }

  return fsType2;
}

+ (id)getMediaKitFilesystemInfo:(id)info
{
  [info UTF8String];
  v3 = MKMediaCreateWithPath();
  if (v3)
  {
    v4 = MKCFCreateFSInfo();
    CFRelease(v3);
    if (v4)
    {
      v3 = [[SKMediaKitFSInfo alloc] initWithFSInfo:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (id)newMediaRefForDisk:(id)disk options:(id)options error:(id *)error
{
  optionsCopy = options;
  diskIdentifier = [disk diskIdentifier];
  v9 = [NSString stringWithFormat:@"/dev/r%@", diskIdentifier];

  [v9 UTF8String];
  v10 = MKMediaCreateWithPath();

  if (!v10)
  {
    v10 = [SKError nilWithPOSIXCode:0 error:error];
  }

  return v10;
}

+ (id)getFilesystem:(id)filesystem
{
  filesystem = [NSString stringWithFormat:@"/dev/%@", filesystem];
  v4 = [SKMediaKit getMediaKitFilesystemInfo:filesystem];

  if (v4)
  {
    v20[0] = @"HFS Unknown variant";
    v20[1] = @"HFS";
    v21[0] = @"hfs";
    v21[1] = @"hfs";
    v20[2] = @"HFS+";
    v20[3] = @"HFS+ Embedded";
    v21[2] = @"hfs";
    v21[3] = @"hfs";
    v20[4] = @"HFS+ Extended";
    v20[5] = @"APFS";
    v21[4] = @"hfs";
    v21[5] = @"apfs";
    v20[6] = @"FAT";
    v20[7] = @"FAT12";
    v21[6] = @"msdos";
    v21[7] = @"msdos";
    v20[8] = @"FAT16";
    v20[9] = @"FAT32";
    v21[8] = @"msdos";
    v21[9] = @"msdos";
    v20[10] = @"NTFS";
    v20[11] = @"ExFAT";
    v21[10] = @"ntfs";
    v21[11] = @"exfat";
    v20[12] = @"UFS";
    v20[13] = @"ISO9660";
    v21[12] = @"ufs";
    v21[13] = @"cd9660";
    v5 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:14];
    fsInfo = [v4 fsInfo];
    v7 = [fsInfo objectForKey:@"Filesystem"];
    v8 = [v5 objectForKey:v7];

    fsInfo2 = [v4 fsInfo];
    v10 = [fsInfo2 objectForKey:@"Attributes"];
    v11 = [v10 objectForKey:@"Case sensitive"];
    bOOLValue = [v11 BOOLValue];

    v13 = [SKFilesystem filesystemFor:v8 caseSensitive:bOOLValue];
    if (v13)
    {
      fsInfo3 = [v4 fsInfo];
      v15 = [fsInfo3 objectForKey:@"Attributes"];
      v16 = [v15 objectForKey:@"Journaled"];
      bOOLValue2 = [v16 BOOLValue];

      [v13 setIsJournaled:bOOLValue2];
      v18 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end