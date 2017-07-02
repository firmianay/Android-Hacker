.class public Lcom/netease/nr/biz/main/MainActivity;
.super Lcom/netease/nr/base/activity/BaseActivity;


# instance fields
.field protected final a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/activity/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/main/MainActivity;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/main/MainActivity;->b:Z

    new-instance v0, Lcom/netease/nr/biz/main/a;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/main/a;-><init>(Lcom/netease/nr/biz/main/MainActivity;)V

    iput-object v0, p0, Lcom/netease/nr/biz/main/MainActivity;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/netease/nr/biz/main/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/main/b;-><init>(Lcom/netease/nr/biz/main/MainActivity;)V

    iput-object v0, p0, Lcom/netease/nr/biz/main/MainActivity;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v1, Landroid/content/Intent;

    invoke-static {p0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/netease/nr/tablet/main/MainActivity;

    :goto_0
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v1

    :cond_0
    const-class v0, Lcom/netease/nr/phone/main/MainActivity;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/widget/TabHost;I)V
    .locals 6

    const v5, 0x7f0c00e1

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    const/16 v0, 0x2711

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/netease/nr/biz/plugin/plugin/util/c;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x2712

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, v0}, Lcom/netease/nr/biz/plugin/plugin/util/c;->d(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/netease/nr/biz/main/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/main/MainActivity;->b:Z

    return p1
.end method

.method private b(Landroid/widget/TabHost;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c00e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "autodownload"

    invoke-static {v1, v2, v0}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/base/c/s;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/util/f/b;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Landroid/widget/TabHost;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/widget/TabHost;I)V

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/widget/TabHost;I)V

    return-void
.end method

.method public a(Landroid/widget/TabHost;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TAB"

    invoke-static {p0, p2}, Lcom/netease/nr/biz/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navi_ties"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TOPIC"

    const-string v1, "\u8ddf\u8d34"

    invoke-static {p0, v0, v1}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "navi_vote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TOPIC"

    const-string v1, "\u6295\u7968"

    invoke-static {p0, v0, v1}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "navi_polymeric"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/netease/nr/biz/plugin/plugin/util/c;->e(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/main/MainActivity;->b(Landroid/widget/TabHost;I)V

    goto :goto_0

    :cond_3
    const-string v0, "navi_read"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TAB"

    const-string v1, "\u8ba2\u9605"

    invoke-static {p0, v0, v1}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2712

    invoke-static {p0, v0}, Lcom/netease/nr/biz/plugin/plugin/util/c;->e(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/main/MainActivity;->b(Landroid/widget/TabHost;I)V

    goto :goto_0
.end method

.method public a(Lcom/netease/util/fragment/l;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/Class;IIII)V
    .locals 4

    const v0, 0x7f030049

    invoke-virtual {p1}, Lcom/netease/util/fragment/l;->a()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p6}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0c00e0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0c00de

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c00df

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, p7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, p8}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "navi_local_news"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "columnId"

    const-string v2, "T1351840906470"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "columnName"

    const v2, 0x7f0b0025

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/netease/util/fragment/l;->a()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p1, v1, p4, v0}, Lcom/netease/util/fragment/l;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public c()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/netease/nr/biz/pc/main/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "personal_center"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/c;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/biz/main/MainActivity;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/main/MainActivity;->b:Z

    const v0, 0x7f0b001e

    invoke-static {p0, v0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/main/MainActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/main/MainActivity;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/netease/nr/base/c/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/netease/b/i;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_push"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "pref_pc_msg_count"

    invoke-static {p0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v1, "li"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/b/i;->a(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_3

    invoke-static {p0}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/c/o;

    invoke-direct {v1, p0}, Lcom/netease/nr/base/c/o;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/netease/nr/biz/news/column/i;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/column/i;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    invoke-static {p0}, Lcom/netease/nr/biz/pc/sync/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/nr/biz/pc/sync/c;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/sync/c;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/sync/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-direct {p0}, Lcom/netease/nr/biz/main/MainActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/main/MainActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/main/MainActivity;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/netease/nr/base/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/main/MainActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/main/MainActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/main/MainActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/main/MainActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/a/b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->f()V

    invoke-static {}, Lcom/netease/b/i;->a()J

    move-result-wide v0

    invoke-static {p0}, Lcom/netease/b/i;->f(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "lo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/netease/b/i;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netease/b/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "news_column_tid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "news_column_tid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
