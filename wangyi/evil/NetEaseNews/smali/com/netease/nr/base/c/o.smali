.class public Lcom/netease/nr/base/c/o;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v1, "pm"

    new-array v3, v8, [Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v1, "autopost"

    iget-object v3, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/nr/base/c/h;->d(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v3, "ps"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/b/i;->a(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v1, "og"

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const v5, 0x7f0b0002

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v1, "av"

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/util/i/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v10

    :cond_1
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "sina"

    aput-object v1, v3, v2

    const-string v1, "qq"

    aput-object v1, v3, v8

    const-string v1, "netease"

    aput-object v1, v3, v9

    const/4 v1, 0x3

    const-string v4, "renren"

    aput-object v4, v3, v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "oauth_type"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v6, v3

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_4

    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "sina"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "oauth_userid"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "oauth_token"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v6, "sw"

    new-array v7, v9, [Ljava/lang/String;

    aput-object v1, v7, v2

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "qq"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "oauth_token"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "oauth_token_secret"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v6, "qw"

    new-array v7, v9, [Ljava/lang/String;

    aput-object v1, v7, v2

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "netease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "oauth_token"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "oauth_token_secret"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v6, "nw"

    new-array v7, v9, [Ljava/lang/String;

    aput-object v1, v7, v2

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "renren"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "oauth_userid"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "oauth_token"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/nr/base/c/o;->a:Landroid/content/Context;

    const-string v6, "rr"

    new-array v7, v9, [Ljava/lang/String;

    aput-object v1, v7, v2

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/c/o;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
