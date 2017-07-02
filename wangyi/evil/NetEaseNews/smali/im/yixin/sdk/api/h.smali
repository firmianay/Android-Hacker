.class public final Lim/yixin/sdk/api/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lim/yixin/sdk/api/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lim/yixin/sdk/api/h;->a:Lim/yixin/sdk/api/c;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/c;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Yixin.SDK.YXAPIFactory"

    const-string v1, "Error param: paramContext == null || YXMessageUtil.isBlank(paramAppId)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lim/yixin/sdk/api/h;->a:Lim/yixin/sdk/api/c;

    if-nez v0, :cond_2

    new-instance v0, Lim/yixin/sdk/api/i;

    invoke-direct {v0, p0, p1}, Lim/yixin/sdk/api/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lim/yixin/sdk/api/h;->a:Lim/yixin/sdk/api/c;

    const-string v0, "Yixin.SDK.YXAPIFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createYXAPI called: PackageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",paramAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lim/yixin/sdk/api/h;->a:Lim/yixin/sdk/api/c;

    goto :goto_0
.end method
