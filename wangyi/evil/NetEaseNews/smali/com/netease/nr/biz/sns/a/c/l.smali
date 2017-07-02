.class Lcom/netease/nr/biz/sns/a/c/l;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/netease/nr/biz/sns/util/c;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/sns/a/c/l;->b:Lcom/netease/nr/biz/sns/util/c;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/l;->c:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/netease/nr/biz/sns/a/c/l;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Landroid/os/Bundle;Lcom/netease/nr/biz/sns/a/c/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nr/biz/sns/a/c/l;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/l;->c:Landroid/os/Bundle;

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

    const-string v3, "qzone"

    iget-object v4, p0, Lcom/netease/nr/biz/sns/a/c/l;->b:Lcom/netease/nr/biz/sns/util/c;

    invoke-virtual {v4}, Lcom/netease/nr/biz/sns/util/c;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "%%SPLITTER%%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v0, v6

    if-lez v0, :cond_4

    move v3, v2

    :goto_0
    array-length v0, v6

    if-ge v3, v0, :cond_4

    aget-object v0, v6, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    aget-object v0, v6, v3

    const-string v2, "%%PREFIX%%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v6, v3

    const-string v2, "%%PREFIX%%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v0, v2

    if-le v0, v8, :cond_c

    const/4 v0, 0x0

    aget-object v0, v2, v0

    const/4 v7, 0x1

    aget-object v2, v2, v7

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/l;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    if-eqz v4, :cond_7

    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_4
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/l;->c:Landroid/os/Bundle;

    const-string v2, "share_pic"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/l;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/l;->b:Lcom/netease/nr/biz/sns/util/c;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/l;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/sns/a/c/l;->c:Landroid/os/Bundle;

    const-string v5, "share_other"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/netease/nr/biz/sns/util/c;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;
    :try_end_2
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_6
    return-object v0

    :cond_6
    :try_start_3
    aget-object v2, v6, v3

    move-object v0, v1

    goto :goto_2

    :cond_7
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_0

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/l;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/util/cache/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const-string v0, ""

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :cond_c
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_2

    :cond_d
    move-object v1, v0

    goto/16 :goto_4
.end method

.method protected a(Ljava/util/Map;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/l;->a:Landroid/content/Context;

    const-string v3, "score_sharenews_key"

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/l;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/l;->a(Ljava/util/Map;)V

    return-void
.end method
