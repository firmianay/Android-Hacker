.class Lt4j/async/Dispatcher$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lt4j/async/Dispatcher;


# direct methods
.method constructor <init>(Lt4j/async/Dispatcher;)V
    .locals 0

    iput-object p1, p0, Lt4j/async/Dispatcher$1;->this$0:Lt4j/async/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lt4j/async/Dispatcher$1;->this$0:Lt4j/async/Dispatcher;

    # getter for: Lt4j/async/Dispatcher;->active:Z
    invoke-static {v0}, Lt4j/async/Dispatcher;->access$0(Lt4j/async/Dispatcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt4j/async/Dispatcher$1;->this$0:Lt4j/async/Dispatcher;

    invoke-virtual {v0}, Lt4j/async/Dispatcher;->shutdown()V

    :cond_0
    return-void
.end method
