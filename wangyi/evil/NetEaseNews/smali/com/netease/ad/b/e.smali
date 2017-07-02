.class public Lcom/netease/ad/b/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field static d:I

.field private static e:Ljava/lang/String;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/netease/ad/b/e;->a:Ljava/lang/String;

    const-string v0, "android"

    sput-object v0, Lcom/netease/ad/b/e;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/netease/ad/b/e;->c:Ljava/lang/String;

    const/16 v0, 0xf0

    sput v0, Lcom/netease/ad/b/e;->d:I

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/netease/ad/b/e;->d:I

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/netease/ad/b/e;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 1

    sput-boolean p0, Lcom/netease/ad/b/e;->f:Z

    const/4 v0, 0x0

    sput v0, Lcom/netease/ad/f/a;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/netease/ad/b/e;->d:I

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/ad/b/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/netease/ad/b/e;->f:Z

    return v0
.end method
