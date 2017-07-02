.class public Lcom/netease/nr/biz/news/a/c/c/a;
.super Lcom/netease/nr/biz/news/a/d;


# instance fields
.field private e:Lcom/netease/nr/base/c/a/c;

.field private f:Lcom/netease/nr/base/c/a/c;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->p()Lcom/netease/nr/base/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Z)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->i:Landroid/view/View;

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070012

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "columnRelative"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nr/biz/news/a/c/c/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/c/a;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/nr/biz/news/a/c/c/a;->g:Ljava/lang/String;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p4

    invoke-static/range {v0 .. v9}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/c/c/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0202ae

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;I)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->e:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->e:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v4}, Lcom/netease/nr/base/c/a/c;->c(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;I)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->f:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->f:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v4}, Lcom/netease/nr/base/c/a/c;->c(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/a;->f:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v1, v0, v0}, Lcom/netease/nr/base/c/a/c;->a(II)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->f:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v5}, Lcom/netease/nr/base/c/a/c;->b(Z)V

    const-string v0, "more_columns"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "color"

    aput-object v0, v2, v5

    const-string v0, "alias"

    aput-object v0, v2, v4

    const-string v3, "tid=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->b:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "color"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/a;->g:Ljava/lang/String;

    const-string v1, "alias"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/a;->h:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/biz/news/a/d;->onDestroyView()V

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/a;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->p()Lcom/netease/nr/base/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-super/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/d;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void

    :cond_0
    move v3, p3

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/nr/biz/news/a/c/c/a;->i:Landroid/view/View;

    const v0, 0x7f0c00c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    const v1, 0x3e9f8ee5

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    const v1, 0x7f0c00c1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MyImageView;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/netease/nr/base/view/MyImageView;->b(I)V

    const-string v3, "http://img2.cache.netease.com/m/newsapp/reading/cover/%s.jpg"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/nr/biz/news/a/c/c/a;->c:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://img2.cache.netease.com/m/newsapp/topic_icons/%s.png"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/nr/biz/news/a/c/c/a;->b:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/nr/biz/news/a/c/c/a;->e:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v5, v3}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/a;->f:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v4, v1}, Lcom/netease/nr/base/c/a/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0c0008

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/a;->p()Lcom/netease/nr/base/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lcom/netease/nr/base/a/c;->a(Z)V

    :cond_0
    return-void
.end method

.method protected v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
