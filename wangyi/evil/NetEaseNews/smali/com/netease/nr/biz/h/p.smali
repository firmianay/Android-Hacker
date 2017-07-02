.class public Lcom/netease/nr/biz/h/p;
.super Lcom/netease/nr/base/fragment/d;


# instance fields
.field private a:Lcom/netease/nr/base/view/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/h/p;->j:Z

    return-void
.end method

.method private a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;Z)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const/high16 v3, 0x7f070000

    invoke-virtual {p1, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/netease/nr/biz/h/p;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00e0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b00e2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/netease/nr/biz/h/p;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0b00df

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0200f4

    move-object v3, p1

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    goto :goto_0

    :cond_4
    const v3, 0x7f0b00e1

    goto :goto_2
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/h/p;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7cbe\u9009"

    iget-object v1, p0, Lcom/netease/nr/biz/h/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/p;->a:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/biz/h/p;->a:Lcom/netease/nr/base/view/a;

    iget-object v1, p0, Lcom/netease/nr/biz/h/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    const-string v1, "T1348647909107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    const-string v1, "T1351840906470"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f030005

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/netease/nr/biz/h/p;->j:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/netease/nr/biz/h/p;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b00e0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/netease/nr/biz/h/p;->a:Lcom/netease/nr/base/view/a;

    invoke-virtual {v1, v2, v0}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/p;->a:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    return-void

    :cond_1
    const v1, 0x7f0b00e2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netease/nr/biz/h/p;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0b00df

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_3
    const v1, 0x7f0b00e1

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-static {p1, p2}, Lcom/netease/nr/base/view/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/p;->j:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/biz/h/p;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;Z)V

    return-void
.end method

.method public a_(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a_(II)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->C()Lcom/netease/util/j/a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/h/p;->a:Lcom/netease/nr/base/view/a;

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/p;->j:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v4, v0}, Lcom/netease/nr/biz/h/p;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "tid"

    iget-object v4, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tname"

    iget-object v4, p0, Lcom/netease/nr/biz/h/p;->e:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ename"

    iget-object v4, p0, Lcom/netease/nr/biz/h/p;->h:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "icon"

    iget-object v4, p0, Lcom/netease/nr/biz/h/p;->g:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    iget-object v4, p0, Lcom/netease/nr/biz/h/p;->i:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/p;->j:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v4, v3, v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/p;->j:Z

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/netease/nr/biz/h/p;->j:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/h/p;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/h/p;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/h/p;->g:Ljava/lang/String;

    const-string v1, "ename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/h/p;->h:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/h/p;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/p;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/nr/biz/news/column/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/biz/h/p;->j:Z

    const-string v1, "columnName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/h/p;->e:Ljava/lang/String;

    const-string v1, "columnId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/p;->k:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/h/p;->a:Lcom/netease/nr/base/view/a;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/h/p;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "newslist"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "columnRelative"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "columnHasHeader"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "columnCId"

    iget-object v2, p0, Lcom/netease/nr/biz/h/p;->k:Ljava/util/Map;

    const-string v3, "icon"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/p;->k:Ljava/util/Map;

    const-string v2, "type"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "source_columns"

    const-string v3, "\u9605\u8bfb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "source_media"

    :cond_0
    const-string v2, "param_source"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0c00f2

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/h/p;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/nr/biz/h/p;->e:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1}, Lcom/netease/nr/biz/news/column/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v3, "newslist"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method
