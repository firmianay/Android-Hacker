.class public Lcom/netease/nr/biz/sns/a/c/h;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Bundle;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->a:Landroid/content/Context;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iput-object p2, p0, Lcom/netease/nr/biz/sns/a/c/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "netease"

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sina"

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "qq"

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->b:Landroid/os/Bundle;

    const-string v3, "share_content"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/h;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/d;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->b:Landroid/os/Bundle;

    const-string v3, "share_www_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "%%SPLITTER%%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "%%SPLITTER%%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    array-length v0, v7

    if-lez v0, :cond_5

    move v3, v2

    :goto_1
    array-length v0, v7

    if-ge v3, v0, :cond_5

    aget-object v0, v7, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    aget-object v0, v7, v3

    const-string v2, "%%PREFIX%%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget-object v0, v7, v3

    const-string v2, "%%PREFIX%%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v0, v2

    if-le v0, v9, :cond_c

    const/4 v0, 0x0

    aget-object v0, v2, v0

    const/4 v8, 0x1

    aget-object v2, v2, v8

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_1

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_5
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_4
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/h;->b:Landroid/os/Bundle;

    const-string v3, "share_pic"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/h;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/h;->b:Landroid/os/Bundle;

    const-string v6, "share_other"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v5, v4, v0, v2, v3}, Lcom/netease/nr/biz/sns/util/c;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_7
    :try_start_3
    aget-object v2, v7, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_3

    :cond_8
    :try_start_4
    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/h;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/util/cache/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    const-string v0, ""

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_5

    :cond_c
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_3

    :cond_d
    move-object v2, v0

    goto :goto_4
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
