.class public Lcom/netease/nr/base/c/a/c;
.super Lcom/netease/util/c/b;


# instance fields
.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/util/c/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/c/a/c;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/netease/nr/base/c/a/c;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/netease/nr/base/c/a/c;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/base/c/a/c;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;
    .locals 1

    new-instance v0, Lcom/netease/nr/base/c/a/c;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/c/a/c;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/base/c/a/c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "downpic"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0, p1}, Lcom/netease/util/c/e;->a(ZLandroid/content/Context;)Z

    move-result v0

    goto :goto_0
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
