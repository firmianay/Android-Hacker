.class public final Lcom/yiliao/android/openapis/sdk/c;
.super Ljava/lang/ThreadGroup;


# static fields
.field private static a:Lcom/yiliao/android/openapis/sdk/c;

.field private static c:I


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/yiliao/android/openapis/sdk/c;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/yiliao/android/openapis/sdk/c;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()Lcom/yiliao/android/openapis/sdk/c;
    .locals 3

    sget-object v0, Lcom/yiliao/android/openapis/sdk/c;->a:Lcom/yiliao/android/openapis/sdk/c;

    if-nez v0, :cond_0

    sget v0, Lcom/yiliao/android/openapis/sdk/c;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/yiliao/android/openapis/sdk/c;->c:I

    new-instance v0, Lcom/yiliao/android/openapis/sdk/c;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/yiliao/android/openapis/sdk/c;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yiliao/android/openapis/sdk/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yiliao/android/openapis/sdk/c;->a:Lcom/yiliao/android/openapis/sdk/c;

    :cond_0
    sget-object v0, Lcom/yiliao/android/openapis/sdk/c;->a:Lcom/yiliao/android/openapis/sdk/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
