.class public Lcom/netease/nr/biz/news/a/c/b/f;
.super Lcom/netease/nr/biz/news/a/d;


# instance fields
.field private e:Lcom/netease/nr/biz/news/a/c/b/h;

.field private f:Lcom/netease/nr/biz/news/a/c/b/i;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->i:Z

    return-void
.end method

.method private O()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->e:Lcom/netease/nr/biz/news/a/c/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->e:Lcom/netease/nr/biz/news/a/c/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/a/c/b/h;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/news/a/c/b/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/nr/biz/news/a/c/b/h;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/news/a/c/b/f;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->e:Lcom/netease/nr/biz/news/a/c/b/h;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->e:Lcom/netease/nr/biz/news/a/c/b/h;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private P()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/a/c/b/j;->b(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/f;->a(Ljava/util/Map;)V

    return-void
.end method

.method private Q()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/f;->d(Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/b/f;)Lcom/netease/nr/biz/news/a/c/b/i;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/b/f;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/a/c/b/f;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/netease/nr/biz/news/a/c/b/f;->d(Z)V

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    new-instance v1, Lcom/netease/nr/biz/news/a/c/b/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/news/a/c/b/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    const v2, 0x7f0c0116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    const v2, 0x7f0c0117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    const v2, 0x7f0c0118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/b/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/a/c/b/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->Q()V

    return-void
.end method

.method private d(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private w()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->e:Lcom/netease/nr/biz/news/a/c/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->e:Lcom/netease/nr/biz/news/a/c/b/h;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/h;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->z()V

    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/nr/biz/news/a/c/b/f;->h:Landroid/view/View;

    const v2, 0x7f0c0115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    new-instance v3, Lcom/netease/nr/biz/news/a/c/b/g;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/news/a/c/b/g;-><init>(Lcom/netease/nr/biz/news/a/c/b/f;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/f;->d(Z)V

    return-object v1
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    const v1, 0x7f020136

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    const v2, 0x7f0c0116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    const v2, 0x7f0c0117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->f:Lcom/netease/nr/biz/news/a/c/b/i;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    const v2, 0x7f0c0118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public b_(I)I
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->b_(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->w()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->O()V

    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->e:Lcom/netease/nr/biz/news/a/c/b/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->O()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/biz/news/a/d;->onDestroyView()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->g:Landroid/view/View;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->h:Landroid/view/View;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/biz/news/a/d;->onResume()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/c/b/f;->P()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/a/c/b/f;->i:Z

    :cond_0
    return-void
.end method
