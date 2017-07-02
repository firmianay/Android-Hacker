.class public Lcom/netease/ad/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static d:Lcom/netease/ad/f;


# instance fields
.field b:Landroid/content/Context;

.field c:Z

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/ad/f;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/ad/f;->d:Lcom/netease/ad/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/f;->b:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ad/f;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/f;->e:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/netease/ad/f;
    .locals 1

    sget-object v0, Lcom/netease/ad/f;->d:Lcom/netease/ad/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/ad/f;

    invoke-direct {v0}, Lcom/netease/ad/f;-><init>()V

    sput-object v0, Lcom/netease/ad/f;->d:Lcom/netease/ad/f;

    :cond_0
    sget-object v0, Lcom/netease/ad/f;->d:Lcom/netease/ad/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)Lcom/netease/ad/a;
    .locals 2

    new-instance v0, Lcom/netease/ad/a;

    invoke-direct {v0}, Lcom/netease/ad/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netease/ad/a;->a(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/netease/ad/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ad/f;->b:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/netease/ad/f;->c:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/netease/ad/f;->c:Z

    invoke-static {p1}, Lcom/netease/ad/g/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AndroidManifest.xml config error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/netease/ad/b/e;->a(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/netease/ad/b/e;->a(ZLandroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Lcom/netease/ad/b/k;->a(I)V

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ntesaddata"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "city"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ad/b/e;->a:Ljava/lang/String;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ntesaddata"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "province"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ad/b/e;->c:Ljava/lang/String;

    new-instance v0, Lcom/netease/ad/c/d;

    invoke-direct {v0}, Lcom/netease/ad/c/d;-><init>()V

    new-instance v1, Lcom/netease/ad/g;

    invoke-direct {v1, p0}, Lcom/netease/ad/g;-><init>(Lcom/netease/ad/f;)V

    invoke-virtual {v0, v1}, Lcom/netease/ad/c/d;->a(Lcom/netease/ad/c/e;)V

    :cond_1
    invoke-static {}, Lcom/netease/ad/b/f;->a()Lcom/netease/ad/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/b/f;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/netease/ad/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netease/ad/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/netease/ad/a;

    iget-object v0, p0, Lcom/netease/ad/f;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/netease/ad/a;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/ad/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/netease/ad/j;->d()Lcom/netease/ad/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/j;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/netease/ad/b/f;->a()Lcom/netease/ad/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/b/f;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/f;->b:Landroid/content/Context;

    return-object v0
.end method
