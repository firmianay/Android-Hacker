.class public Lcom/netease/nr/biz/fb/FeedBackList;
.super Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/view/i;
.implements Lcom/netease/util/j/e;


# instance fields
.field private b:Lcom/netease/nr/base/view/a;

.field private c:Lcom/netease/util/j/a;

.field private d:Landroid/widget/SimpleCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/fb/FeedBackList;)Lcom/netease/util/j/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->c:Lcom/netease/util/j/a;

    return-object v0
.end method

.method private i()V
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/netease/nr/biz/fb/f;->b:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "count(*)"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackList;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public a_(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->finish()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->f()V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackList;->c:Lcom/netease/util/j/a;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->c:Lcom/netease/util/j/a;

    if-eqz v0, :cond_1

    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackList;->c:Lcom/netease/util/j/a;

    const v2, 0x7f02002a

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->d:Landroid/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->d:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public goBackClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->finish()V

    return-void
.end method

.method protected h()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0c0092

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/view/a;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    const v1, 0x7f0b0226

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->c:Lcom/netease/util/j/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    const-string v1, ""

    const v2, 0x7f020395

    invoke-virtual {v0, v3, v1, v2}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->b:Lcom/netease/nr/base/view/a;

    const-string v1, ""

    const v2, 0x7f0200b4

    invoke-virtual {v0, v3, v1, v2}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public i_()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/fb/o;

    invoke-virtual {v0}, Lcom/netease/nr/biz/fb/o;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0224

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b000f

    new-instance v3, Lcom/netease/nr/biz/fb/n;

    invoke-direct {v3, p0, v0}, Lcom/netease/nr/biz/fb/n;-><init>(Lcom/netease/nr/biz/fb/FeedBackList;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->i()V

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackList;->setContentView(I)V

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/fb/FeedBackList;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/nr/biz/fb/f;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/fb/FeedBackList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->e()Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->c:Lcom/netease/util/j/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/netease/nr/biz/fb/f;->a:[Ljava/lang/String;

    const-string v5, "time DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/fb/FeedBackList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    new-instance v0, Lcom/netease/nr/biz/fb/o;

    const v3, 0x7f030033

    new-array v5, v7, [Ljava/lang/String;

    const-string v1, "content"

    aput-object v1, v5, v8

    const/4 v1, 0x1

    const-string v2, "time"

    aput-object v2, v5, v1

    const-string v1, "reply"

    aput-object v1, v5, v6

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    iget-object v7, p0, Lcom/netease/nr/biz/fb/FeedBackList;->c:Lcom/netease/util/j/a;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/netease/nr/biz/fb/o;-><init>(Lcom/netease/nr/biz/fb/FeedBackList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/netease/util/j/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->d:Landroid/widget/SimpleCursorAdapter;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackList;->d:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackList;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->h()V

    invoke-static {p0}, Lcom/netease/nr/biz/fb/r;->a(Landroid/app/Activity;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0099
        0x7f0c009a
        0x7f0c009d
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/fb/o;

    invoke-virtual {v0}, Lcom/netease/nr/biz/fb/o;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v0, 0x1

    const v1, 0x7f0b0220

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "fid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/fb/FeedBackList;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
