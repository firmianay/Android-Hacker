.class public Lcom/netease/nr/base/c/a/n;
.super Lcom/netease/util/c/b;


# static fields
.field private static e:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/nr/base/c/a/n;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/c/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/n;
    .locals 3

    sget-object v0, Lcom/netease/nr/base/c/a/n;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/nr/base/c/a/n;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/c/a/n;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/c/a/n;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/c/a/n;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/a/n;->c(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/a/n;->b(Z)V

    const v1, 0x7f08005e

    invoke-static {p0, v1}, Lcom/netease/util/i/b;->a(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f08005f

    invoke-static {p0, v2}, Lcom/netease/util/i/b;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/c/a/n;->a(II)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/netease/nr/base/c/a/n;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
