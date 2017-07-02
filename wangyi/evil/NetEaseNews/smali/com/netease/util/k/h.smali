.class Lcom/netease/util/k/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/util/k/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/util/k/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/util/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 2

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
