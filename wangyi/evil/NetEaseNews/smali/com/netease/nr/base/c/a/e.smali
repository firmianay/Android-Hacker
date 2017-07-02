.class public Lcom/netease/nr/base/c/a/e;
.super Lcom/netease/util/c/b;


# static fields
.field private static e:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/nr/base/c/a/e;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/c/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/e;
    .locals 3

    sget-object v0, Lcom/netease/nr/base/c/a/e;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/nr/base/c/a/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/c/a/e;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/c/a/e;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/c/a/e;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const v1, 0x7f080118

    invoke-static {p0, v1}, Lcom/netease/util/i/b;->a(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f080119

    invoke-static {p0, v2}, Lcom/netease/util/i/b;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/c/a/e;->a(II)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/netease/nr/base/c/a/e;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
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
