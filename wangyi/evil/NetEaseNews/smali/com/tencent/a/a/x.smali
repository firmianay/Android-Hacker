.class Lcom/tencent/a/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/tencent/a/a/b/d;

.field private b:Lcom/tencent/a/a/b;


# direct methods
.method public constructor <init>(Lcom/tencent/a/a/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/a/x;->b:Lcom/tencent/a/a/b;

    iput-object p1, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    invoke-static {}, Lcom/tencent/a/a/a;->a()Lcom/tencent/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/a/x;->b:Lcom/tencent/a/a/b;

    return-void
.end method

.method static synthetic a(Lcom/tencent/a/a/x;)Lcom/tencent/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/tencent/a/a/p;->b()Lcom/tencent/a/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    new-instance v2, Lcom/tencent/a/a/e;

    invoke-direct {v2, p0}, Lcom/tencent/a/a/e;-><init>(Lcom/tencent/a/a/x;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/a/a/p;->a(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/a/a/c;->b()Lcom/tencent/a/a/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lauch stat task in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    invoke-virtual {v0}, Lcom/tencent/a/a/b/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/a/b;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/a/a/d;->b(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/a/a/a;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/tencent/a/a/a/b;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/a/a/b;->a:Lcom/tencent/a/a/b;

    iput-object v1, p0, Lcom/tencent/a/a/x;->b:Lcom/tencent/a/a/b;

    :cond_3
    sget-object v1, Lcom/tencent/a/a/t;->a:[I

    iget-object v2, p0, Lcom/tencent/a/a/x;->b:Lcom/tencent/a/a/b;

    invoke-virtual {v2}, Lcom/tencent/a/a/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/tencent/a/a/c;->b()Lcom/tencent/a/a/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stat strategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/a/a/a;->a()Lcom/tencent/a/a/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/a/a/x;->a()V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/tencent/a/a/a/b;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/tencent/a/a/x;->a()V

    goto/16 :goto_0

    :cond_4
    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/a/a/d;->b(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/a/a/d;->b(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    new-instance v3, Lcom/tencent/a/a/o;

    invoke-direct {v3, p0, v0}, Lcom/tencent/a/a/o;-><init>(Lcom/tencent/a/a/x;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/a/a/d;->b(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_0
    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/a/a/x;->a:Lcom/tencent/a/a/b/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/a/a/d;->b(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    const-string v1, "last_period_ts"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/a/a/a;->l()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/tencent/a/a/d;->a(I)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/a/a/a/d;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/a/a/c;->b()Lcom/tencent/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/a/c;->b(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
