.class abstract Lt4j/async/AsyncTBlog$AsyncTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field args:[Ljava/lang/Object;

.field listener:Lt4j/async/TBlogListener;

.field method:I

.field final synthetic this$0:Lt4j/async/AsyncTBlog;


# direct methods
.method constructor <init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt4j/async/AsyncTBlog$AsyncTask;->this$0:Lt4j/async/AsyncTBlog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lt4j/async/AsyncTBlog$AsyncTask;->method:I

    iput-object p3, p0, Lt4j/async/AsyncTBlog$AsyncTask;->listener:Lt4j/async/TBlogListener;

    iput-object p4, p0, Lt4j/async/AsyncTBlog$AsyncTask;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract invoke(Lt4j/async/TBlogListener;[Ljava/lang/Object;)V
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lt4j/async/AsyncTBlog$AsyncTask;->listener:Lt4j/async/TBlogListener;

    iget-object v1, p0, Lt4j/async/AsyncTBlog$AsyncTask;->args:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lt4j/async/AsyncTBlog$AsyncTask;->invoke(Lt4j/async/TBlogListener;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lt4j/async/AsyncTBlog$AsyncTask;->listener:Lt4j/async/TBlogListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt4j/async/AsyncTBlog$AsyncTask;->listener:Lt4j/async/TBlogListener;

    iget v2, p0, Lt4j/async/AsyncTBlog$AsyncTask;->method:I

    invoke-interface {v1, v0, v2}, Lt4j/async/TBlogListener;->onException(Lt4j/TBlogException;I)V

    goto :goto_0
.end method
