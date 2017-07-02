.class Lt4j/async/AsyncTBlog$12;
.super Lt4j/async/AsyncTBlog$AsyncTask;


# instance fields
.field final synthetic this$0:Lt4j/async/AsyncTBlog;


# direct methods
.method constructor <init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt4j/async/AsyncTBlog$12;->this$0:Lt4j/async/AsyncTBlog;

    invoke-direct {p0, p1, p2, p3, p4}, Lt4j/async/AsyncTBlog$AsyncTask;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method invoke(Lt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lt4j/async/AsyncTBlog$12;->this$0:Lt4j/async/AsyncTBlog;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lt4j/async/AsyncTBlog;->updateStatus(Ljava/lang/String;DD)Lt4j/data/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lt4j/async/TBlogListener;->updatedStatus(Lt4j/data/Status;)V

    return-void
.end method
