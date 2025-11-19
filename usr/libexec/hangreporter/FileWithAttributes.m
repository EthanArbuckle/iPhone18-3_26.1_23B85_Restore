@interface FileWithAttributes
- (FileWithAttributes)initWithFile:(id)a3;
@end

@implementation FileWithAttributes

- (FileWithAttributes)initWithFile:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = FileWithAttributes;
  v6 = [(FileWithAttributes *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_filePath, a3);
  if (!v7->_filePath)
  {
    goto LABEL_8;
  }

  v8 = +[NSFileManager defaultManager];
  v16 = 0;
  v9 = [v8 attributesOfItemAtPath:v5 error:&v16];
  v10 = v16;

  if (!v9 || v10)
  {

    goto LABEL_8;
  }

  v11 = [v9 objectForKey:NSFileCreationDate];
  creationDate = v7->_creationDate;
  v7->_creationDate = v11;

  v13 = v7->_creationDate;
  if (!v13)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v14 = v7;
LABEL_9:

  return v14;
}

@end