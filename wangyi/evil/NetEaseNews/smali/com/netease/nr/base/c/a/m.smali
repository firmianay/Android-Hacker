.class public Lcom/netease/nr/base/c/a/m;
.super Lcom/netease/util/c/b;


# static fields
.field private static e:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/nr/base/c/a/m;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/c/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/m;
    .locals 4

    sget-object v0, Lcom/netease/nr/base/c/a/m;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/nr/base/c/a/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/c/a/m;

    :goto_0
    if-nez v0, :cond_0

    new-instance v1, Lcom/netease/nr/base/c/a/m;

    invoke-direct {v1, p0, p1}, Lcom/netease/nr/base/c/a/m;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-static {p0}, Lcom/netease/util/i/b;->e(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/c/a/m;->a(Z)V

    const-string v0, "w"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "h"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/netease/nr/base/c/a/m;->a(II)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/c/a/m;->b(Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/netease/nr/base/c/a/m;->e:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
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
