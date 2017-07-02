.class final Lcom/netease/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/netease/a/b;

.field private c:Landroid/content/Context;

.field private d:Lorg/json/JSONArray;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netease/a/d;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/netease/a/b;Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/netease/a/b;->a()Lcom/netease/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/a/d;->b:Lcom/netease/a/b;

    iput-object p2, p0, Lcom/netease/a/d;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/a/d;->d:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/netease/a/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/netease/a/d;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/netease/a/d;->b:Lcom/netease/a/b;

    iget-object v2, p0, Lcom/netease/a/d;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/a/d;->d:Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/netease/a/d;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/netease/a/b;->a(Lcom/netease/a/b;Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "MobileAgent"

    const-string v1, "Exception occurred when sending message."

    invoke-static {v0, v1}, Lcom/netease/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
