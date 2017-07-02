.class public Lcom/netease/nr/biz/news/detailpage/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/netease/nr/biz/news/detailpage/t;

.field private d:Lcom/netease/nr/biz/news/detailpage/c;

.field private e:Lcom/netease/nr/biz/news/detailpage/d;

.field private f:I

.field private g:I

.field private h:Ljava/util/List;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Lcom/netease/nr/biz/news/detailpage/e;

.field private l:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/netease/nr/biz/news/detailpage/t;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->f:I

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->g:I

    const-string v0, "1"

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->i:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->j:Ljava/lang/String;

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/e;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/e;-><init>(Lcom/netease/nr/biz/news/detailpage/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->k:Lcom/netease/nr/biz/news/detailpage/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->l:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/news/detailpage/a;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/netease/nr/biz/news/detailpage/a;->c:Lcom/netease/nr/biz/news/detailpage/t;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/a;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/news/detailpage/a;->g:I

    return p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/a;)Lcom/netease/nr/biz/news/detailpage/t;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->c:Lcom/netease/nr/biz/news/detailpage/t;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/a;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6

    const/16 v5, 0xfa

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->e(Ljava/util/Map;)I

    move-result v2

    iget v3, p0, Lcom/netease/nr/biz/news/detailpage/a;->g:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/nr/biz/i/a/a/a;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v2, 0x0

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/a;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ge v0, v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a;->b:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:getHotBody(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/a;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->g:I

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/b;-><init>(Lcom/netease/nr/biz/news/detailpage/a;)V

    iput-object p1, v0, Lcom/netease/nr/biz/news/detailpage/b;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/netease/nr/biz/news/detailpage/b;->d:Ljava/lang/String;

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/d;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/news/detailpage/d;-><init>(Lcom/netease/nr/biz/news/detailpage/a;)V

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a;->e:Lcom/netease/nr/biz/news/detailpage/d;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a;->e:Lcom/netease/nr/biz/news/detailpage/d;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/netease/nr/biz/news/detailpage/b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/news/detailpage/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic c(Lcom/netease/nr/biz/news/detailpage/a;)Lcom/netease/nr/biz/news/detailpage/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->k:Lcom/netease/nr/biz/news/detailpage/e;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/news/detailpage/a;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/news/detailpage/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "t"

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a;->a:Landroid/content/Context;

    const-string v4, "t"

    invoke-static {v1, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/util/h/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/news/detailpage/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 4

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    const-string v0, ""

    const-string v3, "NON"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "NON"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/netease/util/h/b;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->f:I

    iget v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->f:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->f:I

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v0, v0, -0x2

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a;->l:Ljava/util/List;

    iget v3, p0, Lcom/netease/nr/biz/news/detailpage/a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    :goto_1
    if-lez v1, :cond_3

    const/4 v3, 0x2

    if-le v1, v3, :cond_2

    add-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->c:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netease/nr/biz/news/detailpage/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public c(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/c;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/detailpage/c;-><init>(Lcom/netease/nr/biz/news/detailpage/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->d:Lcom/netease/nr/biz/news/detailpage/c;

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/b;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/news/detailpage/b;-><init>(Lcom/netease/nr/biz/news/detailpage/a;)V

    iput-boolean v3, v1, Lcom/netease/nr/biz/news/detailpage/b;->f:Z

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->c:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "replyBoard"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/nr/biz/news/detailpage/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->c:Lcom/netease/nr/biz/news/detailpage/t;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/nr/biz/news/detailpage/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->a:Landroid/content/Context;

    iput-object v0, v1, Lcom/netease/nr/biz/news/detailpage/b;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a;->d:Lcom/netease/nr/biz/news/detailpage/c;

    new-array v2, v3, [Lcom/netease/nr/biz/news/detailpage/b;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/news/detailpage/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
