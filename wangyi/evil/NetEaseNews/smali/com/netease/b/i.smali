.class public Lcom/netease/b/i;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/netease/b/j;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/b/i;->b:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/b/i;->d:Z

    return-void
.end method

.method public static a()J
    .locals 4

    const-wide/16 v0, 0x0

    sget-wide v2, Lcom/netease/b/i;->c:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/netease/b/i;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/b/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/b/i;->a:Lcom/netease/b/j;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/b/i;->a:Lcom/netease/b/j;

    invoke-interface {v0, p0}, Lcom/netease/b/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/netease/b/i;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/netease/b/i;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "muas_pref_key_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p0}, Lcom/netease/b/k;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/netease/b/h;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "muas_pref_key_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p0}, Lcom/netease/b/k;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/netease/b/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/netease/b/i;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/b/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/b/m;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/b/b;->a(Lcom/netease/b/a;)V

    goto :goto_0
.end method

.method public static a(Lcom/netease/b/j;)V
    .locals 0

    sput-object p0, Lcom/netease/b/i;->a:Lcom/netease/b/j;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/netease/b/i;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/b/n;

    invoke-direct {v0, p0}, Lcom/netease/b/n;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/netease/b/b;->a(Lcom/netease/b/a;)V

    goto :goto_0
.end method

.method public static varargs b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/netease/b/i;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/b/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/b/l;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/b/b;->a(Lcom/netease/b/a;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/netease/b/i;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/b/p;

    invoke-direct {v0, p0}, Lcom/netease/b/p;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/netease/b/b;->a(Lcom/netease/b/a;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/netease/b/d;

    invoke-direct {v0, p0}, Lcom/netease/b/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/netease/b/b;->a(Lcom/netease/b/a;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    sget-wide v0, Lcom/netease/b/i;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/b/i;->c:J

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/b/i;->c:J

    return-void
.end method
