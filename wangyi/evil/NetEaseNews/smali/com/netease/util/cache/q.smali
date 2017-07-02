.class public Lcom/netease/util/cache/q;
.super Lcom/netease/util/cache/m;


# static fields
.field private static c:Lcom/netease/util/cache/q;


# direct methods
.method public static declared-synchronized a()Lcom/netease/util/cache/q;
    .locals 2

    const-class v0, Lcom/netease/util/cache/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/util/cache/q;->c:Lcom/netease/util/cache/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "strings"

    invoke-virtual {p0, p1, v0}, Lcom/netease/util/cache/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
