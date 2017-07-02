.class public Lcom/netease/nr/biz/fb/FeedBackDetailList;
.super Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;

# interfaces
.implements Lcom/netease/nr/base/view/i;


# instance fields
.field b:Landroid/app/ProgressDialog;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/nr/base/view/a;

.field private g:Landroid/view/inputmethod/InputMethodManager;

.field private h:Lcom/netease/util/j/a;

.field private i:Landroid/widget/SimpleCursorAdapter;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/fb/l;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/fb/l;-><init>(Lcom/netease/nr/biz/fb/FeedBackDetailList;)V

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->g:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-static {p0}, Lcom/netease/nr/biz/fb/r;->a(Landroid/app/Activity;)V

    const v0, 0x7f0c0268

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c:Landroid/widget/EditText;

    const v0, 0x7f0c0267

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0228

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/nr/biz/fb/i;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/fb/i;-><init>(Lcom/netease/nr/biz/fb/FeedBackDetailList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/nr/biz/fb/j;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/fb/j;-><init>(Lcom/netease/nr/biz/fb/FeedBackDetailList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a_(II)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->g:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->finish()V

    return-void
.end method

.method public f()V
    .locals 7

    const v4, 0x7f070078

    const v6, 0x7f020023

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->f()V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->f:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->f:Lcom/netease/nr/base/view/a;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    const v2, 0x7f02002a

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    const v1, 0x7f0c009b

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0202be

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d:Landroid/widget/TextView;

    const v2, 0x7f0202c1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v6}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02004b

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->i:Landroid/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->i:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method protected h()V
    .locals 2

    const v0, 0x7f0c0092

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/view/a;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->f:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->f:Lcom/netease/nr/base/view/a;

    const v1, 0x7f0b021f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->f:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->f:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    return-void
.end method

.method public i_()V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->setContentView(I)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->g:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->i()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h()V

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e()Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/nr/biz/fb/g;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->b:Landroid/app/ProgressDialog;

    const v2, 0x7f0b021a

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const-string v1, "fid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/netease/nr/biz/fb/g;->a:[Ljava/lang/String;

    const-string v5, "time ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    new-instance v0, Lcom/netease/nr/biz/fb/m;

    const v3, 0x7f030031

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "time"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iget-object v7, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->h:Lcom/netease/util/j/a;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/netease/nr/biz/fb/m;-><init>(Lcom/netease/nr/biz/fb/FeedBackDetailList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/netease/util/j/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->i:Landroid/widget/SimpleCursorAdapter;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->i:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->setListAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/netease/nr/biz/fb/h;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/fb/h;-><init>(Lcom/netease/nr/biz/fb/FeedBackDetailList;)V

    invoke-virtual {v0}, Lcom/netease/nr/biz/fb/h;->start()V

    return-void

    :cond_1
    move-object v3, v4

    goto :goto_0

    :array_0
    .array-data 4
        0x7f0c0099
        0x7f0c009a
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/fb/FeedBackBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
