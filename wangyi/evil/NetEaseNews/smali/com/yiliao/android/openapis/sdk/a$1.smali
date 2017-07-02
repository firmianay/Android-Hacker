.class public final Lcom/yiliao/android/openapis/sdk/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yiliao/android/openapis/sdk/e;


# instance fields
.field final synthetic a:Lcom/yiliao/android/openapis/sdk/a;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x10

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v7, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "SignWorker"

    const-string v1, "sign error!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    new-instance v1, Lcom/yiliao/android/openapis/sdk/a$1$1;

    invoke-direct {v1, p0}, Lcom/yiliao/android/openapis/sdk/a$1$1;-><init>(Lcom/yiliao/android/openapis/sdk/a$1;)V

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/a;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    new-instance v1, Lcom/yiliao/android/openapis/sdk/a$1$2;

    invoke-direct {v1, p0}, Lcom/yiliao/android/openapis/sdk/a$1$2;-><init>(Lcom/yiliao/android/openapis/sdk/a$1;)V

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
