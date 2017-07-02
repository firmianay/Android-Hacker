.class public Lcom/netease/nr/biz/pics/q;
.super Lcom/netease/nr/base/fragment/q;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private f:Lcom/netease/nr/biz/pics/o;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;
    .locals 7

    const/4 v3, 0x0

    const-string v0, "photo_list"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "photo_list"

    invoke-static {v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/netease/util/db/c;

    invoke-direct {v4}, Lcom/netease/util/db/c;-><init>()V

    const-string v0, "photo_column"

    invoke-virtual {v4, v0}, Lcom/netease/util/db/c;->a(Ljava/lang/String;)Lcom/netease/util/db/c;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    aput-object v1, v5, v0

    new-instance v0, Lcom/netease/util/fragment/ac;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netease/util/db/c;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/netease/util/fragment/ac;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->a(Landroid/support/v4/content/Loader;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/q;->b(Z)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 6

    new-instance v0, Lcom/netease/nr/biz/pics/r;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/pics/q;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pics/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/netease/nr/biz/pics/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/pics/q;->b(Z)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-nez v1, :cond_1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    :cond_3
    const-string v0, "photo_setid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/nr/biz/pics/q;->g:Ljava/lang/String;

    new-instance v0, Lcom/netease/nr/biz/pics/r;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/pics/q;->b:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pics/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/netease/nr/biz/pics/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/q;->b(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/pics/q;->b(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/pics/o;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/pics/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->f:Lcom/netease/nr/biz/pics/o;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030096

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/nr/biz/pics/q;->f:Lcom/netease/nr/biz/pics/o;

    iget-object v4, v4, Lcom/netease/nr/biz/pics/o;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/nr/biz/pics/q;->f:Lcom/netease/nr/biz/pics/o;

    iget-object v5, v5, Lcom/netease/nr/biz/pics/o;->b:[I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/q;->f:Lcom/netease/nr/biz/pics/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/q;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "photoset_column"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/q;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pics/q;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->z()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "columnId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    const-string v1, "columnChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/pics/q;->b:Ljava/lang/String;

    const-string v1, "columnName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->c:Ljava/lang/String;

    :goto_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/netease/nr/biz/pics/q;->l:I

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/q;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->D()V

    return-void

    :cond_0
    const-string v0, "54GI0096"

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->d:Ljava/lang/String;

    const-string v0, "0096"

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroyView()V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/q;->f:Lcom/netease/nr/biz/pics/o;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_0

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pics/q;->e:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "photo_setid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "photo_imgsum"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo_setname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_clientcover_new"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "photo_replynum"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v1, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "setid"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    iget-object v6, p0, Lcom/netease/nr/biz/pics/q;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imgsum"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imgTitle"

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clientcover"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pastenum"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "real_photoset"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PicShowFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/q;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
