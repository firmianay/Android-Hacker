.class public Lcom/netease/nr/biz/ad/x;
.super Lcom/netease/nr/base/fragment/d;


# instance fields
.field private a:[I

.field private e:[I

.field private f:[I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/ad/x;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/netease/nr/biz/ad/x;->e:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/netease/nr/biz/ad/x;->f:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f02006d
        0x7f02006e
        0x7f02006f
    .end array-data

    :array_2
    .array-data 4
        0x7f020070
        0x7f020071
        0x7f020072
    .end array-data
.end method

.method static synthetic a(Lcom/netease/nr/biz/ad/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/ad/x;->g:Z

    return p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/ad/x;)[I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/x;->a:[I

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/ad/x;)[I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/x;->e:[I

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/ad/x;)[I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/x;->f:[I

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/ad/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/x;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    iget-boolean v0, p0, Lcom/netease/nr/biz/ad/x;->g:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/x;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "share_content"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_pic"

    const-string v2, "http://img2.cache.netease.com/m/newsapp/share/android3.7.0.png"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v2, Lcom/netease/nr/biz/sns/a/c/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "sina"

    invoke-direct {v2, v3, v4, v1}, Lcom/netease/nr/biz/sns/a/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "news_column_tid"

    const-string v2, "T1379038288239"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/x;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic e(Lcom/netease/nr/biz/ad/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/x;->f()V

    return-void
.end method

.method private f()V
    .locals 7

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "sina"

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "snsType"

    const-string v1, "sina"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/sns/a/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/x;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/netease/nr/biz/ad/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/ad/x;->g:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/x;->e()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->z()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->A()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onResume()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/ad/x;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "sina"

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/ad/x;->g:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/netease/nr/biz/ad/z;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/nr/biz/ad/z;-><init>(Lcom/netease/nr/biz/ad/x;Landroid/content/Context;Lcom/netease/nr/biz/ad/y;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method
