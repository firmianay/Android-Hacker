.class Lt4j/async/AsyncTBlog$45;
.super Lt4j/async/AsyncTBlog$AsyncTask;


# instance fields
.field final synthetic this$0:Lt4j/async/AsyncTBlog;


# direct methods
.method constructor <init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt4j/async/AsyncTBlog$45;->this$0:Lt4j/async/AsyncTBlog;

    invoke-direct {p0, p1, p2, p3, p4}, Lt4j/async/AsyncTBlog$AsyncTask;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method invoke(Lt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lt4j/async/AsyncTBlog$45;->this$0:Lt4j/async/AsyncTBlog;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lt4j/async/AsyncTBlog;->createBlock(Ljava/lang/String;)Lt4j/data/User;

    move-result-object v0

    invoke-interface {p1, v0}, Lt4j/async/TBlogListener;->createdBlock(Lt4j/data/User;)V

    return-void
.end method
