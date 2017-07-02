.class public Lcom/netease/nr/biz/plugin/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->a:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/netease/nr/biz/plugin/a/d;->a:Lcom/netease/nr/biz/plugin/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->b:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/netease/nr/biz/plugin/a/d;->b:Lcom/netease/nr/biz/plugin/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->c:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/netease/nr/biz/plugin/a/d;->c:Lcom/netease/nr/biz/plugin/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->d:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/nr/biz/plugin/a/d;->d:Lcom/netease/nr/biz/plugin/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netease/nr/biz/plugin/a/d;->a:Lcom/netease/nr/biz/plugin/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "username"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "fid"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v2}, Lcom/netease/util/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v4, v3, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-le v5, v7, :cond_2

    const-string v5, "New Message"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "New Message"

    aget-object v4, v4, v7

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "Totoal Message"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Totoal Message"

    aget-object v4, v4, v7

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->a:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/netease/nr/biz/plugin/a/c;->a:Lcom/netease/nr/biz/plugin/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->b:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/netease/nr/biz/plugin/a/c;->b:Lcom/netease/nr/biz/plugin/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->c:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/netease/nr/biz/plugin/a/c;->c:Lcom/netease/nr/biz/plugin/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netease/nr/biz/plugin/a/b;->d:Lcom/netease/nr/biz/plugin/a/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/nr/biz/plugin/a/c;->d:Lcom/netease/nr/biz/plugin/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
