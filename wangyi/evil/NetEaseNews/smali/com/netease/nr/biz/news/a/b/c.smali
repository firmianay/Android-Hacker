.class Lcom/netease/nr/biz/news/a/b/c;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/b/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/netease/nr/biz/news/a/b/c;->b:I

    iput p4, p0, Lcom/netease/nr/biz/news/a/b/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/netease/nr/biz/news/a/b/c;->b:I

    iget v3, p0, Lcom/netease/nr/biz/news/a/b/c;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/news/a/i;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "ad"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/e/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/c;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
