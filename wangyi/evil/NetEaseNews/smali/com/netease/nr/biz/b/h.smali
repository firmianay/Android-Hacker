.class public Lcom/netease/nr/biz/b/h;
.super Lcom/netease/nr/base/fragment/q;


# instance fields
.field private b:Lcom/netease/nr/biz/b/a;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/netease/util/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    const-string v0, "netease_apps"

    iput-object v0, p0, Lcom/netease/nr/biz/b/h;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/b/h;->d:Z

    new-instance v0, Lcom/netease/nr/biz/b/i;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/b/i;-><init>(Lcom/netease/nr/biz/b/h;)V

    iput-object v0, p0, Lcom/netease/nr/biz/b/h;->e:Lcom/netease/util/b/d;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    return-object v0
.end method

.method private b(II)Lcom/netease/util/fragment/z;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/b/j;

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netease/nr/biz/b/j;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/util/fragment/ac;

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "font_list"

    invoke-static {v2}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/netease/util/fragment/ac;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/b/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, 0x7f070000

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    check-cast v1, Landroid/widget/TextView;

    const v0, 0x7f0200b8

    invoke-virtual {p1, v1, v0}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a_(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/i;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/b/h;->k:I

    iget v1, p0, Lcom/netease/nr/biz/b/h;->l:I

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/b/h;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/netease/nr/biz/b/g;->a(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/netease/nr/biz/b/h;->l:I

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/b/h;->b(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/b/h;->l:I

    iget v1, p0, Lcom/netease/nr/biz/b/h;->k:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/b/h;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/netease/nr/biz/b/g;->a(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/netease/nr/biz/b/h;->l:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/b/h;->b(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f030035

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/b/h;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->D()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/b/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "netease_apps"

    iput-object v0, p0, Lcom/netease/nr/biz/b/h;->a:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/b/h;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->G()V

    new-instance v0, Lcom/netease/nr/biz/b/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    sget-object v4, Lcom/netease/nr/biz/b/a;->a:[Ljava/lang/String;

    sget-object v5, Lcom/netease/nr/biz/b/a;->b:[I

    invoke-direct/range {v0 .. v6}, Lcom/netease/nr/biz/b/a;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/netease/nr/biz/b/h;->b:Lcom/netease/nr/biz/b/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->z()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onPause()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->k()Lcom/netease/util/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/h;->e:Lcom/netease/util/b/d;

    invoke-virtual {v0, v1}, Lcom/netease/util/b/a;->b(Lcom/netease/util/b/d;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onResume()V

    iget-boolean v1, p0, Lcom/netease/nr/biz/b/h;->d:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/netease/nr/biz/b/h;->d:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "param_refresh"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->B()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->E()V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->k()Lcom/netease/util/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/h;->e:Lcom/netease/util/b/d;

    invoke-virtual {v0, v1}, Lcom/netease/util/b/a;->a(Lcom/netease/util/b/d;)V

    return-void
.end method
