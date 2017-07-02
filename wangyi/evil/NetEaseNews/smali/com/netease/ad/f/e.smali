.class public Lcom/netease/ad/f/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/ad/f/e;


# instance fields
.field private b:I

.field private c:Lcom/netease/ad/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/ad/f/e;->a:Lcom/netease/ad/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/ad/a/a/a;

    invoke-direct {v0}, Lcom/netease/ad/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/f/e;->c:Lcom/netease/ad/a/a/a;

    return-void
.end method

.method public static a()Lcom/netease/ad/f/e;
    .locals 1

    sget-object v0, Lcom/netease/ad/f/e;->a:Lcom/netease/ad/f/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/ad/f/e;

    invoke-direct {v0}, Lcom/netease/ad/f/e;-><init>()V

    sput-object v0, Lcom/netease/ad/f/e;->a:Lcom/netease/ad/f/e;

    :cond_0
    sget-object v0, Lcom/netease/ad/f/e;->a:Lcom/netease/ad/f/e;

    return-object v0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "wifi"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mobile"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "cm"

    goto :goto_0

    :cond_2
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "cu"

    goto :goto_0

    :cond_3
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "ct"

    goto :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/netease/ad/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/f/e;->c:Lcom/netease/ad/a/a/a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/netease/ad/f/e;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netease/ad/f/e;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/ad/f/e;->c:Lcom/netease/ad/a/a/a;

    invoke-virtual {v1}, Lcom/netease/ad/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/ad/f/e;->c:Lcom/netease/ad/a/a/a;

    invoke-virtual {v1}, Lcom/netease/ad/a/a/a;->a()Lcom/netease/ad/a/a/i;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netease/ad/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/ad/f/e;->c:Lcom/netease/ad/a/a/a;

    invoke-virtual {v1}, Lcom/netease/ad/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
