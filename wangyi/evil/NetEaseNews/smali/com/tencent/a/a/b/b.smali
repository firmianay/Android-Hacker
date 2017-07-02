.class public Lcom/tencent/a/a/b/b;
.super Lcom/tencent/a/a/b/d;


# instance fields
.field protected a:Lcom/tencent/a/a/b/c;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tencent/a/a/b/d;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/tencent/a/a/b/c;

    invoke-direct {v0}, Lcom/tencent/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/a/a/b/b;->g:J

    iget-object v0, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    iput-object p3, v0, Lcom/tencent/a/a/b/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/a/a/b/e;
    .locals 1

    sget-object v0, Lcom/tencent/a/a/b/e;->d:Lcom/tencent/a/a/b/e;

    return-object v0
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    iput-object p1, v0, Lcom/tencent/a/a/b/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 5

    const-string v0, "ei"

    iget-object v1, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    iget-object v1, v1, Lcom/tencent/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/tencent/a/a/b/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "du"

    iget-wide v1, p0, Lcom/tencent/a/a/b/b;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    iget-object v0, v0, Lcom/tencent/a/a/b/c;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    iget-object v2, v0, Lcom/tencent/a/a/b/c;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "ar"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    iget-object v0, v0, Lcom/tencent/a/a/b/c;->c:Ljava/util/Properties;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/a/a/b/b;->a:Lcom/tencent/a/a/b/c;

    iget-object v1, v1, Lcom/tencent/a/a/b/c;->c:Ljava/util/Properties;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "kv"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
