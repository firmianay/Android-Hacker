.class public Lcom/netease/ad/j;
.super Lcom/netease/ad/a;


# static fields
.field private static g:Lcom/netease/ad/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/ad/j;

    invoke-direct {v0}, Lcom/netease/ad/j;-><init>()V

    sput-object v0, Lcom/netease/ad/j;->g:Lcom/netease/ad/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/ad/a;-><init>()V

    return-void
.end method

.method public static d()Lcom/netease/ad/j;
    .locals 1

    sget-object v0, Lcom/netease/ad/j;->g:Lcom/netease/ad/j;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ntesaddata"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "spotad"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/netease/ad/j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ad/g/a;->a(Ljava/lang/String;)Lcom/netease/ad/b/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/netease/ad/j;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/ad/e/a;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/j;->f:Lcom/netease/ad/c/c;

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/netease/ad/e/a;->c:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/netease/ad/e/a;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    check-cast p1, Lcom/netease/ad/e/c;

    invoke-virtual {p1}, Lcom/netease/ad/e/c;->b()[Lcom/netease/ad/b/j;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/netease/ad/g/a;->a(Lcom/netease/ad/b/j;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "ntesaddata"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "spotad"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "ntesaddata"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "spotad"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/netease/ad/e/a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/ad/j;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ad/j;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/ad/j;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ad/j;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/ad/a;->a(Ljava/util/HashMap;)V

    invoke-direct {p0}, Lcom/netease/ad/j;->e()V

    return-void
.end method
