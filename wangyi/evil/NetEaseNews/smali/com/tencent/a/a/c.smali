.class public Lcom/tencent/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Ljava/util/Map;

.field private static volatile c:J

.field private static volatile d:J

.field private static volatile e:I

.field private static f:Lcom/tencent/a/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/tencent/a/a/c;->b:Ljava/util/Map;

    sput-wide v1, Lcom/tencent/a/a/c;->c:J

    sput-wide v1, Lcom/tencent/a/a/c;->d:J

    const/4 v0, 0x0

    sput v0, Lcom/tencent/a/a/c;->e:I

    invoke-static {}, Lcom/tencent/a/a/a/b;->b()Lcom/tencent/a/a/a/c;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/a/c;->f:Lcom/tencent/a/a/a/c;

    return-void
.end method

.method static a(Landroid/content/Context;Z)I
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    sget-wide v2, Lcom/tencent/a/a/c;->c:J

    sub-long v2, v0, v2

    invoke-static {}, Lcom/tencent/a/a/a;->d()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/c;->c(Landroid/content/Context;)V

    :cond_0
    sput-wide v0, Lcom/tencent/a/a/c;->c:J

    sget-wide v2, Lcom/tencent/a/a/c;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tencent/a/a/a/b;->c()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/a/a/c;->d:J

    :cond_1
    sget-wide v2, Lcom/tencent/a/a/c;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/tencent/a/a/a/b;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/a/a/c;->d:J

    invoke-static {p0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/a/a/d;->b(Landroid/content/Context;)Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->c()I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-static {p0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/a/a/d;->b(Landroid/content/Context;)Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/a/a/a/e;->a(I)V

    :cond_2
    invoke-static {p0}, Lcom/tencent/a/a/c;->c(Landroid/content/Context;)V

    :cond_3
    sget v0, Lcom/tencent/a/a/c;->e:I

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/tencent/a/a/c;->c(Landroid/content/Context;)V

    :cond_4
    sget v0, Lcom/tencent/a/a/c;->e:I

    return v0
.end method

.method static a()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    iget v2, v2, Lcom/tencent/a/a/v;->d:I

    if-eqz v2, :cond_0

    const-string v2, "v"

    sget-object v3, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    iget v3, v3, Lcom/tencent/a/a/v;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    iget v2, v2, Lcom/tencent/a/a/v;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    iget v2, v2, Lcom/tencent/a/a/v;->d:I

    if-eqz v2, :cond_1

    const-string v2, "v"

    sget-object v3, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    iget v3, v3, Lcom/tencent/a/a/v;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    sget-object v2, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    iget v2, v2, Lcom/tencent/a/a/v;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/a/a/c;->f:Lcom/tencent/a/a/a/c;

    invoke-virtual {v2, v0}, Lcom/tencent/a/a/a/c;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/a/a/c;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {p0}, Lcom/tencent/a/a/p;->a(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/a/a/c;->a:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    invoke-static {p0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/d;->b()V

    invoke-static {}, Lcom/tencent/a/a/a;->a()Lcom/tencent/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/a/a/b;->d:Lcom/tencent/a/a/b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/a/a/c;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH"

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->h(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/a/a/a/b;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/d;->a(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/tencent/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sput-object p1, Lcom/tencent/a/a/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/a/a/c;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/tencent/a/a/c;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/tencent/a/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/a/a/c;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/a/a/b/b;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/a/a/c;->a(Landroid/content/Context;Z)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/a/a/b/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/a/a/b/b;->a([Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/a/a/c;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/c;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/a/a/x;

    invoke-direct {v2, v0}, Lcom/tencent/a/a/x;-><init>(Lcom/tencent/a/a/b/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3

    invoke-static {}, Lcom/tencent/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/tencent/a/a/c;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "The Context of StatService.sendAdditionEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/a/a/b/a;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/a/a/c;->a(Landroid/content/Context;Z)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/a/a/b/a;-><init>(Landroid/content/Context;ILjava/util/Map;)V

    invoke-static {p0}, Lcom/tencent/a/a/c;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/c;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/a/a/x;

    invoke-direct {v2, v0}, Lcom/tencent/a/a/x;-><init>(Lcom/tencent/a/a/b/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcom/tencent/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/tencent/a/a/c;->f:Lcom/tencent/a/a/a/c;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aqc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/a;->a(Ljava/lang/String;)V

    const-string v0, "QQConnect"

    invoke-static {v0}, Lcom/tencent/a/a/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/a/a/a;->c(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/a/a/a;->b(Z)V

    const v0, 0x1b7740

    invoke-static {v0}, Lcom/tencent/a/a/a;->a(I)V

    const/16 v0, 0x5a0

    invoke-static {v0}, Lcom/tencent/a/a/a;->b(I)V

    sget-object v0, Lcom/tencent/a/a/b;->f:Lcom/tencent/a/a/b;

    invoke-static {v0}, Lcom/tencent/a/a/a;->a(Lcom/tencent/a/a/b;)V

    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/a/a/a;->c:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "0.6.12"

    invoke-static {v3}, Lcom/tencent/a/a/a/b;->b(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-gtz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/a/a/a;->a(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/tencent/a/a/a/b;->a()I

    move-result v0

    sput v0, Lcom/tencent/a/a/c;->e:I

    invoke-static {p0}, Lcom/tencent/a/a/c;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/c;->d(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/x;

    new-instance v2, Lcom/tencent/a/a/b/f;

    sget v3, Lcom/tencent/a/a/c;->e:I

    invoke-static {}, Lcom/tencent/a/a/c;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/a/a/b/f;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Lcom/tencent/a/a/x;-><init>(Lcom/tencent/a/a/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Landroid/os/Handler;
    .locals 1

    invoke-static {p0}, Lcom/tencent/a/a/c;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/a/a/c;->a:Landroid/os/Handler;

    return-object v0
.end method
