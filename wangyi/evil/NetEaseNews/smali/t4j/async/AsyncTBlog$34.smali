.class Lt4j/async/AsyncTBlog$34;
.super Lt4j/async/AsyncTBlog$AsyncTask;


# instance fields
.field final synthetic this$0:Lt4j/async/AsyncTBlog;


# direct methods
.method constructor <init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt4j/async/AsyncTBlog$34;->this$0:Lt4j/async/AsyncTBlog;

    invoke-direct {p0, p1, p2, p3, p4}, Lt4j/async/AsyncTBlog$AsyncTask;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method invoke(Lt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lt4j/async/AsyncTBlog$34;->this$0:Lt4j/async/AsyncTBlog;

    invoke-virtual {v0}, Lt4j/async/AsyncTBlog;->getDirectMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lt4j/async/TBlogListener;->gotDirectMessage(Ljava/util/List;)V

    return-void
.end method
