@interface WebBookmarkImportDelegate
- (WebBookmarkImportDelegate)initWithCoordinator:(id)a3;
- (id)_bookmarkFoldersStack;
- (id)_existingBookmarkWithTitle:(id)a3 folder:(BOOL)a4;
- (void)_addReadingListItemWithTitle:(id)a3 urlString:(id)a4 dateOfLastVisitIfReadingListItem:(id)a5;
- (void)appendBookmarkWithTitle:(id)a3 urlString:(id)a4 dateOfLastVisitIfReadingListItem:(id)a5;
- (void)beginAddingFolder:(id)a3 identifier:(id)a4;
- (void)endAddingFolder;
- (void)finishWithCompletionHandler:(id)a3;
@end

@implementation WebBookmarkImportDelegate

- (WebBookmarkImportDelegate)initWithCoordinator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WebBookmarkImportDelegate;
  v6 = [(WebBookmarkImportDelegate *)&v11 init];
  if (v6)
  {
    v7 = +[WebBookmarkCollection safariBookmarkCollection];
    collection = v6->_collection;
    v6->_collection = v7;

    objc_storeStrong(&v6->_coordinator, a3);
    v9 = v6;
  }

  return v6;
}

- (void)beginAddingFolder:(id)a3 identifier:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:kBookmarksReadingListTitle])
  {
    self->_parsingReadingList = 1;
    ++self->_numberOfBookmarksImported;
  }

  else
  {
    if ([v6 length])
    {
      v7 = [WBSNetscapeBookmarkFileReader looksLikeChromeBookmarksBarTitle:v6];
      coordinator = self->_coordinator;
      ++self->_numberOfBookmarksImported;
      if (!v7)
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100006B84;
        v11[3] = &unk_100029150;
        v11[4] = self;
        v12 = v6;
        [(WebBookmarksLockCoordinator *)coordinator accessBookmarkForWritingWithBlock:v11];

        goto LABEL_9;
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100006B14;
      v13[3] = &unk_100028BB0;
      v13[4] = self;
      v9 = v13;
      v10 = coordinator;
    }

    else
    {
      v10 = self->_coordinator;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100006A98;
      v14[3] = &unk_100028BB0;
      v14[4] = self;
      v9 = v14;
    }

    [(WebBookmarksLockCoordinator *)v10 accessBookmarkForWritingWithBlock:v9];
  }

LABEL_9:
}

- (void)appendBookmarkWithTitle:(id)a3 urlString:(id)a4 dateOfLastVisitIfReadingListItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  ++self->_numberOfBookmarksImported;
  if (self->_parsingReadingList)
  {
    [(WebBookmarkImportDelegate *)self _addReadingListItemWithTitle:v8 urlString:v9 dateOfLastVisitIfReadingListItem:a5];
  }

  else
  {
    coordinator = self->_coordinator;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006DA8;
    v11[3] = &unk_100029178;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    [(WebBookmarksLockCoordinator *)coordinator accessBookmarkForWritingWithBlock:v11];
  }
}

- (void)endAddingFolder
{
  if (self->_parsingReadingList)
  {
    self->_parsingReadingList = 0;
  }

  else
  {
    v5[5] = v2;
    v5[6] = v3;
    coordinator = self->_coordinator;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100006F50;
    v5[3] = &unk_100028BB0;
    v5[4] = self;
    [(WebBookmarksLockCoordinator *)coordinator accessBookmarkForWritingWithBlock:v5];
  }
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  coordinator = self->_coordinator;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000702C;
  v7[3] = &unk_100028D20;
  v8 = v4;
  v6 = v4;
  [(WebBookmarksLockCoordinator *)coordinator accessBookmarkForWritingWithBlock:v7];
}

- (id)_existingBookmarkWithTitle:(id)a3 folder:(BOOL)a4
{
  v6 = a3;
  collection = self->_collection;
  v8 = [(WebBookmarkImportDelegate *)self _bookmarkFoldersStack];
  v9 = [v8 lastObject];
  v10 = -[WebBookmarkCollection listWithID:skipOffset:includeHidden:](collection, "listWithID:skipOffset:includeHidden:", [v9 identifier], 0, 1);
  v11 = [v10 bookmarkArray];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007168;
  v15[3] = &unk_1000291A0;
  v17 = a4;
  v16 = v6;
  v12 = v6;
  v13 = [v11 safari_firstObjectPassingTest:v15];

  return v13;
}

- (void)_addReadingListItemWithTitle:(id)a3 urlString:(id)a4 dateOfLastVisitIfReadingListItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  coordinator = self->_coordinator;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000072C8;
  v15[3] = &unk_1000291C8;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  [(WebBookmarksLockCoordinator *)coordinator accessBookmarkForWritingWithBlock:v15];
}

- (id)_bookmarkFoldersStack
{
  stack = self->_stack;
  if (!stack)
  {
    v4 = [(WebBookmarkCollection *)self->_collection rootBookmark];
    v5 = [NSMutableArray arrayWithObject:v4];
    v6 = self->_stack;
    self->_stack = v5;

    stack = self->_stack;
  }

  v7 = stack;

  return v7;
}

@end