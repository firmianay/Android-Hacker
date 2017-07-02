.class public Lcom/netease/nr/biz/ad/a;
.super Lcom/netease/nr/base/fragment/d;


# instance fields
.field private a:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/netease/ad/j;

.field private i:Lcom/netease/nr/biz/ad/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/biz/ad/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/ad/b;-><init>(Lcom/netease/nr/biz/ad/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/netease/nr/biz/ad/c;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/ad/c;-><init>(Lcom/netease/nr/biz/ad/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/ad/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/netease/nr/biz/ad/p;

    invoke-direct {v0}, Lcom/netease/nr/biz/ad/p;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    const v3, 0x7f0b000c

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/ad/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title_icon"

    const v3, 0x108009b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "cancel_title"

    const v3, 0x7f0b000a

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/ad/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/ad/p;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/p;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v4}, Lcom/netease/nr/biz/ad/p;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/p;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/ad/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/a;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/netease/nr/biz/ad/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/ad/e;-><init>(Lcom/netease/nr/biz/ad/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "tab_vote"

    invoke-static {p1, v0, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "tab_vote"

    invoke-static {v1, v2, v0}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "font"

    invoke-static {p1, v0, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "font_show"

    invoke-static {v1, v2, v0}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/i;->b(Landroid/content/Context;)V

    :cond_0
    const-string v0, "article_tie"

    invoke-static {p1, v0, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "article_tie_show"

    invoke-static {v1, v2, v0}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "extra_plugin_str"

    invoke-static {v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/ad/a;->d(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/ad/a;->b(Ljava/util/Map;)V

    :cond_3
    return-void

    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "extra_plugin_str"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "extra_plugin_str"

    invoke-static {v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/ad/a;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/ad/a;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/netease/nr/biz/ad/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/ad/f;-><init>(Lcom/netease/nr/biz/ad/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 4

    const-string v0, "custom_default"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/biz/ad/d;

    invoke-direct {v2, p0, v1}, Lcom/netease/nr/biz/ad/d;-><init>(Lcom/netease/nr/biz/ad/a;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/netease/nr/biz/ad/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "apknewversion"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/nr/biz/ad/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/util/Map;)V
    .locals 10

    const-string v0, "app_version"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "content"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "type"

    invoke-static {p1, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "tip_never"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "update"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "version"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "."

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/nr/biz/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "notice"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/nr/biz/ad/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "update"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_0

    invoke-static {p1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "hasnewversion"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/nr/biz/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/nr/biz/ad/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "pollingad"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v4, v2

    :goto_0
    const/4 v0, 0x0

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/netease/nr/biz/ad/a;->h:Lcom/netease/ad/j;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/ad/a;->h:Lcom/netease/ad/j;

    invoke-virtual {v3}, Lcom/netease/ad/j;->a()Lcom/netease/ad/e;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Lcom/netease/ad/e;)V

    invoke-virtual {v3}, Lcom/netease/ad/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v4, v1}, Lcom/netease/nr/biz/ad/AdImageView;->a(Z)V

    invoke-virtual {v4, v0}, Lcom/netease/nr/biz/ad/AdImageView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/netease/nr/biz/ad/o;->a(Lcom/netease/ad/e;)I

    move-result v0

    :goto_1
    move-object v2, v3

    move v9, v1

    move v1, v0

    move v0, v9

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "pollingad"

    const-string v5, ""

    invoke-static {v0, v3, v5}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/h/b;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    int-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-int v3, v5

    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "src"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    invoke-virtual {v4, v3}, Lcom/netease/nr/biz/ad/AdImageView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/nr/biz/ad/o;->a(Lcom/netease/ad/e;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_2
    :try_start_2
    new-instance v4, Lcom/netease/ad/b/j;

    invoke-direct {v4}, Lcom/netease/ad/b/j;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not_adsdk_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/netease/ad/b/j;->f(Ljava/lang/String;)V

    new-instance v1, Lcom/netease/ad/e;

    invoke-direct {v1, v4}, Lcom/netease/ad/e;-><init>(Lcom/netease/ad/b/j;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    move-object v2, v1

    move v1, v0

    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/activity/BaseApplication;->a(Lcom/netease/ad/e;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/nr/biz/ad/a;->e:Ljava/lang/Runnable;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    const v3, 0x7f0c0009

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/AdImageView;

    move-object v4, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    :goto_5
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/d/a;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/d/a;->c(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method private l()Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/netease/nr/base/b/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/base/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/ad/g;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/ad/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/ad/a;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/ad/a;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method e()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/ad/x;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShowNewVersionFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BASEACTIVITY_SCREEN_ORIENTATION_PORTRAIT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/a;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method f()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public f_()V
    .locals 5

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/ad/j;->d()Lcom/netease/ad/j;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->h:Lcom/netease/ad/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "category"

    const-string v2, "STARTUP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->h:Lcom/netease/ad/j;

    invoke-virtual {v1, v0}, Lcom/netease/ad/j;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/netease/nr/biz/ad/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/ad/i;-><init>(Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "hasnewversion"

    invoke-static {v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/nr/biz/ad/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/ad/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->i:Lcom/netease/nr/biz/ad/h;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->i:Lcom/netease/nr/biz/ad/h;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netease/util/f/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flowremind"

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/ad/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/a;->f_()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->h:Lcom/netease/ad/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->h:Lcom/netease/ad/j;

    invoke-virtual {v0}, Lcom/netease/ad/j;->b()V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->i:Lcom/netease/nr/biz/ad/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->i:Lcom/netease/nr/biz/ad/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/h;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
