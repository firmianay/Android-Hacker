.class Lt4j/async/AsyncTBlog$64;
.super Lt4j/async/AsyncTBlog$AsyncTask;


# instance fields
.field final synthetic this$0:Lt4j/async/AsyncTBlog;


# direct methods
.method constructor <init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt4j/async/AsyncTBlog$64;->this$0:Lt4j/async/AsyncTBlog;

    invoke-direct {p0, p1, p2, p3, p4}, Lt4j/async/AsyncTBlog$AsyncTask;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method invoke(Lt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lt4j/async/AsyncTBlog$64;->this$0:Lt4j/async/AsyncTBlog;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Lt4j/data/Paging;

    invoke-virtual {v1, v2, v3, v0}, Lt4j/async/AsyncTBlog;->getComments(JLt4j/data/Paging;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lt4j/async/TBlogListener;->gotComments(Ljava/util/List;)V

    return-void
.end method
