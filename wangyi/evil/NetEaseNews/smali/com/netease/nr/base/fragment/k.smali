.class public Lcom/netease/nr/base/fragment/k;
.super Lcom/netease/util/fragment/u;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/netease/nr/base/view/i;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Lcom/netease/nr/base/a/c;

.field private d:Lcom/netease/nr/base/view/a;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/util/fragment/u;-><init>()V

    new-instance v0, Lcom/netease/nr/base/fragment/l;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/fragment/l;-><init>(Lcom/netease/nr/base/fragment/k;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/k;->g:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x7f0c0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/fragment/m;

    invoke-direct {v1, p0}, Lcom/netease/nr/base/fragment/m;-><init>(Lcom/netease/nr/base/fragment/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->H()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b003a

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/netease/nr/base/fragment/k;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/netease/nr/base/fragment/k;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b003b

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/netease/nr/base/fragment/k;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/netease/nr/base/fragment/k;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    iget-object v2, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/a/c;->b(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/base/fragment/n;

    invoke-direct {v2, p0}, Lcom/netease/nr/base/fragment/n;-><init>(Lcom/netease/nr/base/fragment/k;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/netease/nr/base/fragment/o;

    invoke-direct {v1, p0}, Lcom/netease/nr/base/fragment/o;-><init>(Lcom/netease/nr/base/fragment/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->n()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->m()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/fragment/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->k()V

    return-void
.end method

.method private j()V
    .locals 7

    const/16 v6, 0x3e9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/netease/nr/base/fragment/k;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/base/fragment/k;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->B()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/netease/nr/base/fragment/k;->g:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->p_()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/k;->setListShown(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->e()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/netease/nr/base/fragment/k;->g:Landroid/os/Handler;

    int-to-long v4, v2

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/k;->setListShown(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/k;->setListShownNoAnimation(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->k()V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/k;->f:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->E()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/k;->f:Z

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private p()Z
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "scroll_load"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-static {p1, p2}, Lcom/netease/nr/base/view/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    return-object v0
.end method

.method public a(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    return-void
.end method

.method public synthetic a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->c(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/u;->b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/netease/util/fragment/z;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netease/util/fragment/z;

    invoke-virtual {v0}, Lcom/netease/util/fragment/z;->b()Ljava/util/Date;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/fragment/k;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/netease/nr/base/c/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/fragment/k;->d(Landroid/support/v4/content/Loader;)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/s;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/k;->b(Z)V

    invoke-static {p2}, Lcom/netease/util/e/c;->b(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/nr/base/fragment/k;->a(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/u;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/k;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/k;->a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V

    :cond_1
    const v0, 0xff0002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/k;->b(Lcom/netease/util/j/a;Landroid/view/View;)V

    :cond_2
    const v0, 0x1020004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/k;->c(Lcom/netease/util/j/a;Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/k;->d(Lcom/netease/util/j/a;Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V
    .locals 1

    const v0, 0x7f020036

    invoke-virtual {p1, p2, v0}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/netease/nr/base/c/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/fragment/k;->e:Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/u;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public a_(II)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;
    .locals 4

    const/4 v3, 0x3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netease/nr/base/view/TabletContainer;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/TabletContainer;-><init>(Landroid/content/Context;)V

    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/TabletContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/a;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/TabletContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :cond_0
    return-void
.end method

.method public synthetic b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0c001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method protected b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/a/c;->b(Z)V

    :cond_0
    return-void
.end method

.method public b_(I)I
    .locals 4

    const/16 v2, 0x3eb

    invoke-super {p0, p1}, Lcom/netease/util/fragment/u;->b_(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/fragment/k;->setListShown(Z)V

    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->o()V

    :goto_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->J()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0010

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->m()V

    goto :goto_1

    :pswitch_2
    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->g:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public c(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/util/fragment/u;->c(I)V

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->n()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->m()V

    goto :goto_0
.end method

.method public c(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/u;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->n()V

    :goto_0
    invoke-static {p2}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/fragment/k;->d(Landroid/support/v4/content/Loader;)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->m()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->o()V

    :cond_2
    invoke-static {p2}, Lcom/netease/util/e/c;->b(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/nr/base/fragment/k;->b(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V

    goto :goto_1
.end method

.method protected c(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    const v0, 0x1020004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method protected d(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0c0016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f02017f

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v1, 0x7f07000c

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method d_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/fragment/k;->f:Z

    return v0
.end method

.method protected e()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method protected g()Z
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/s;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected h()Z
    .locals 2

    invoke-super {p0}, Lcom/netease/util/fragment/u;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->g:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

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

.method protected i()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i_()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/util/fragment/u;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/k;->c(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/g/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/util/fragment/u;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/netease/nr/base/fragment/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/netease/nr/base/fragment/k;->a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/nr/base/fragment/k;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/nr/base/fragment/k;->a(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/TabletContainer;->addView(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/nr/base/fragment/k;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/fragment/k;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/nr/base/view/a;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/k;->a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v3, p3}, Lcom/netease/nr/base/fragment/k;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/netease/nr/base/fragment/k;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lcom/netease/nr/base/view/TabletContainer;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v3, 0x7f020012

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v3, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/netease/nr/base/fragment/k;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/util/fragment/u;->onDestroyView()V

    iput-object v1, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->b(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/netease/nr/base/fragment/k;->d:Lcom/netease/nr/base/view/a;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/g/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/netease/util/fragment/u;->onPause()V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->g:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/netease/util/fragment/u;->onResume()V

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->j()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "scroll_load"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v4, 0x7f0c0017

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    const v5, 0x7f0c0019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    if-eqz v3, :cond_4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->n()V

    :cond_0
    :goto_2
    invoke-virtual {p0, v3}, Lcom/netease/nr/base/fragment/k;->c(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->m()V

    goto :goto_2
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/netease/util/fragment/u;->onStart()V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;->n()V

    :cond_0
    return-void
.end method

.method protected p_()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/a/c;->b(Landroid/view/View;)V

    iput-object v2, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/util/fragment/u;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eq v0, p1, :cond_3

    :cond_2
    new-instance v0, Lcom/netease/nr/base/a/c;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/k;->b:Landroid/view/View;

    invoke-direct {v0, p1, v2, v1}, Lcom/netease/nr/base/a/c;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->b(Z)V

    :cond_3
    iget-object p1, p0, Lcom/netease/nr/base/fragment/k;->c:Lcom/netease/nr/base/a/c;

    goto :goto_0
.end method
