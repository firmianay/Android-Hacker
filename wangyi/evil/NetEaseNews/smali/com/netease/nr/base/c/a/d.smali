.class public Lcom/netease/nr/base/c/a/d;
.super Lcom/netease/util/c/b;


# static fields
.field private static e:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/nr/base/c/a/d;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/c/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/d;
    .locals 2

    sget-object v0, Lcom/netease/nr/base/c/a/d;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/nr/base/c/a/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/c/a/d;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/c/a/d;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/c/a/d;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/netease/nr/base/c/a/d;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netease/util/i/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "s.cimg.163.com/i/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".auto.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Z)J
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v2, Lcom/netease/util/cache/i;

    invoke-direct {v2}, Lcom/netease/util/cache/i;-><init>()V

    iput-object p2, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iget-object v0, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/c/a/d;->c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "success"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    const-string v0, "size"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;
    .locals 4

    iget-object v0, p2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/c/a/d;->a()Lcom/netease/util/cache/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/util/cache/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "size"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bitmap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/netease/util/c/b;->a(Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/cache/j;Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;
    .locals 3

    iget-object v0, p3, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/c/a/d;->a()Lcom/netease/util/cache/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/util/cache/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "bitmap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/netease/util/c/b;->a(Lcom/netease/util/cache/j;Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/cache/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "downpic"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0, p1}, Lcom/netease/util/c/e;->a(ZLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/netease/util/cache/j;Lcom/netease/util/cache/i;Z)Z
    .locals 7

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p3, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/c/a/d;->c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/netease/nr/base/c/a/d;->a(Lcom/netease/util/cache/j;Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method
