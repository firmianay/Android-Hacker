.class public Lcom/netease/util/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/Object;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "REQ_result_type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REQ_result_data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 1

    invoke-static {p0}, Lcom/netease/util/e/c;->b(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)I
    .locals 2

    const-string v0, "REQ_result_type"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const-string v0, "REQ_result_data"

    invoke-static {p0, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
