.class public Lt4j/async/AsyncTBlog;
.super Lt4j/TBlog;


# static fields
.field public static final CREATE_BLOCK:I = 0x17

.field public static final CREATE_FAVORITES:I = 0x14

.field public static final CREATE_FRIENDSHIP:I = 0xd

.field public static final DESTORY_BLOCK:I = 0x18

.field public static final DESTROY_DIRECT_MSG:I = 0x11

.field public static final DESTROY_FAVORITES:I = 0x15

.field public static final DESTROY_FRIENDSHIP:I = 0xe

.field public static final DESTROY_STATUS:I = 0x9

.field public static final EXISTS_BLOCK:I = 0x19

.field public static final GET_BLOCK_USERS:I = 0x1a

.field public static final GET_BLOCK_USER_IDS:I = 0x1b

.field public static final GET_COMMENTS:I = 0x21

.field public static final GET_DIRECT_MSG:I = 0xf

.field public static final GET_FAVORITES:I = 0x13

.field public static final GET_FOLLOWERS:I = 0xc

.field public static final GET_FRIENDS:I = 0xb

.field public static final GET_HOME_TIMELINE:I = 0x1

.field public static final GET_LOCATION_TIMELINE:I = 0x1f

.field public static final GET_MENTIONS:I = 0x3

.field public static final GET_PUBLIC_TIMELINE:I = 0x2

.field public static final GET_RETWEETS_OF_ME:I = 0x5

.field public static final GET_SENT_MSG:I = 0x12

.field public static final GET_USER_TIMELINE:I = 0x4

.field public static final GET_VENUES:I = 0x20

.field public static final RETWEET:I = 0x7

.field public static final SEARCH_STATUS:I = 0x1d

.field public static final SEARCH_USERS:I = 0x1e

.field public static final SEND_DIRECT_MSG:I = 0x10

.field public static final SHOW_STATUS:I = 0x8

.field public static final SHOW_USER:I = 0xa

.field public static final UPDATE_IMAGES:I = 0x1c

.field public static final UPDATE_STATUS:I = 0x6

.field public static final VERIFY_CREDENTIALS:I = 0x16

.field private static transient dispatcher:Lt4j/async/Dispatcher;


# instance fields
.field private shutdown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt4j/TBlog;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt4j/async/AsyncTBlog;->shutdown:Z

    return-void
.end method

.method private getDispatcher()Lt4j/async/Dispatcher;
    .locals 2

    iget-boolean v0, p0, Lt4j/async/AsyncTBlog;->shutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lt4j/async/AsyncTBlog;->dispatcher:Lt4j/async/Dispatcher;

    if-nez v0, :cond_1

    new-instance v0, Lt4j/async/Dispatcher;

    invoke-static {}, Lt4j/Configuration;->getNumberOfAsyncThreads()I

    move-result v1

    invoke-direct {v0, v1}, Lt4j/async/Dispatcher;-><init>(I)V

    sput-object v0, Lt4j/async/AsyncTBlog;->dispatcher:Lt4j/async/Dispatcher;

    :cond_1
    sget-object v0, Lt4j/async/AsyncTBlog;->dispatcher:Lt4j/async/Dispatcher;

    return-object v0
.end method


# virtual methods
.method public createBlockAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$44;

    const/16 v2, 0x17

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$44;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createBlockAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$45;

    const/16 v2, 0x17

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$45;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createFavoriteAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$41;

    const/16 v2, 0x14

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$41;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createFriendshipAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$30;

    const/16 v2, 0xd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$30;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createFriendshipAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$31;

    const/16 v2, 0xd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$31;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destoryBlockAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$46;

    const/16 v2, 0x18

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$46;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destoryBlockAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$47;

    const/16 v2, 0x18

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$47;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$19;

    const/16 v2, 0x9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$19;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyDirectMessageAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$37;

    const/16 v2, 0x11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$37;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyFavoriteAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$42;

    const/16 v2, 0x15

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$42;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyFriendshipAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$32;

    const/16 v2, 0xe

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$32;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyFriendshipAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$33;

    const/16 v2, 0xe

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$33;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public existsBlockAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$48;

    const/16 v2, 0x19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$48;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public existsBlockAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$49;

    const/16 v2, 0x19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$49;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBlockUserIdsAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$51;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$51;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBlockUsersAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$50;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$50;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic getClientURL()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlog;->getClientURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientVersion()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlog;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$63;

    const/16 v2, 0x21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$63;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCommentsAsync(JLt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$64;

    const/16 v2, 0x21

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$64;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDirectMessageAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$34;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$34;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDirectMessageAsync(Lt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$35;

    const/16 v2, 0xf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$35;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFavoritesAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$39;

    const/16 v2, 0x13

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$39;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFavoritesAsync(JLt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$40;

    const/16 v2, 0x13

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$40;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFollowersAsync(JJLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$27;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p5, v3}, Lt4j/async/AsyncTBlog$27;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFollowersAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$26;

    const/16 v2, 0xc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$26;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFollowersAsync(Ljava/lang/String;JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$29;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$29;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFollowersAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$28;

    const/16 v2, 0xc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$28;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFriendsAsync(JJLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$23;

    const/16 v2, 0xb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p5, v3}, Lt4j/async/AsyncTBlog$23;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFriendsAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$22;

    const/16 v2, 0xb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$22;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFriendsAsync(Ljava/lang/String;JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$25;

    const/16 v2, 0xb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$25;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFriendsAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$24;

    const/16 v2, 0xb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$24;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHomeTimelineAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$1;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHomeTimelineAsync(Lt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$2;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v4, p2, v2}, Lt4j/async/AsyncTBlog$2;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLocationTimeline(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$59;

    const/16 v2, 0x1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$59;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLocationTimeline(JLt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$60;

    const/16 v2, 0x1f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$60;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLocationTimelineAsync(DDLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$61;

    const/16 v2, 0x1f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p5, v3}, Lt4j/async/AsyncTBlog$61;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLocationTimelineAsync(DDLt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$62;

    const/16 v2, 0x1f

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    invoke-direct {v1, p0, v2, p6, v3}, Lt4j/async/AsyncTBlog$62;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMentionsAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$4;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$4;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMentionsAsync(Lt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$5;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$5;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic getPassword()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlog;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicTimelineAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$3;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$3;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getRetweetsOfMeAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$10;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$10;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSentDirectMessagesAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$38;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$38;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic getUserAgent()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlog;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlog;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimelineAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$6;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$6;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUserTimelineAsync(JLt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$8;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$8;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$7;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$7;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUserTimelineAsync(Ljava/lang/String;Lt4j/data/Paging;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$9;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$9;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVenuesAsync(DDILjava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$58;

    const/16 v2, 0x20

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p6, v3, v4

    invoke-direct {v1, p0, v2, p7, v3}, Lt4j/async/AsyncTBlog$58;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVenuesAsync(DDILt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$56;

    const/16 v2, 0x20

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p6, v3}, Lt4j/async/AsyncTBlog$56;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVenuesAsync(DDLjava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$57;

    const/16 v2, 0x20

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    invoke-direct {v1, p0, v2, p6, v3}, Lt4j/async/AsyncTBlog$57;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVenuesAsync(DDLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$55;

    const/16 v2, 0x20

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p5, v3}, Lt4j/async/AsyncTBlog$55;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic isUsePostForced()Z
    .locals 1

    invoke-super {p0}, Lt4j/TBlog;->isUsePostForced()Z

    move-result v0

    return v0
.end method

.method public retweetAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$17;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$17;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public searchStatusAsync(Ljava/lang/String;IILt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$53;

    const/16 v2, 0x1d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$53;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public searchUserAsync(Ljava/lang/String;IILt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$54;

    const/16 v2, 0x1e

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$54;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendDirectMessageAsync(Ljava/lang/String;Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$36;

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$36;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic setClientURL(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setClientURL(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setClientVersion(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setClientVersion(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHttp(Lt4j/http/HttpClient;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setHttp(Lt4j/http/HttpClient;)V

    return-void
.end method

.method public bridge synthetic setHttpConnectionTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setHttpConnectionTimeout(I)V

    return-void
.end method

.method public bridge synthetic setHttpProxy(Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lt4j/TBlog;->setHttpProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lt4j/TBlog;->setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHttpReadTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setHttpReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic setPassword(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lt4j/TBlog;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRetryCount(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setRetryCount(I)V

    return-void
.end method

.method public bridge synthetic setRetryIntervalSecs(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setRetryIntervalSecs(I)V

    return-void
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlog;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public showStatusAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$18;

    const/16 v2, 0x8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$18;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showUserAsync(JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$20;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p3, v3}, Lt4j/async/AsyncTBlog$20;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showUserAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$21;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$21;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    const-class v1, Lt4j/async/AsyncTBlog;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lt4j/async/AsyncTBlog;->shutdown:Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already shut down"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateImageAsync(Ljava/io/File;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$52;

    const/16 v2, 0x1c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$52;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;DDLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$12;

    const/4 v2, 0x6

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p6, v3}, Lt4j/async/AsyncTBlog$12;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;JLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$13;

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p4, v3}, Lt4j/async/AsyncTBlog$13;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;JZDDLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$15;

    const/4 v2, 0x6

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p9, v3}, Lt4j/async/AsyncTBlog$15;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;JZJLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$16;

    const/4 v2, 0x6

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p7, v3}, Lt4j/async/AsyncTBlog$16;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;JZLt4j/async/TBlogListener;)V
    .locals 6

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$14;

    const/4 v2, 0x6

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, p5, v3}, Lt4j/async/AsyncTBlog$14;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatusAsync(Ljava/lang/String;Lt4j/async/TBlogListener;)V
    .locals 5

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$11;

    const/4 v2, 0x6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v2, p2, v3}, Lt4j/async/AsyncTBlog$11;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyCredentialsAsync(Lt4j/async/TBlogListener;)V
    .locals 4

    invoke-direct {p0}, Lt4j/async/AsyncTBlog;->getDispatcher()Lt4j/async/Dispatcher;

    move-result-object v0

    new-instance v1, Lt4j/async/AsyncTBlog$43;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lt4j/async/AsyncTBlog$43;-><init>(Lt4j/async/AsyncTBlog;ILt4j/async/TBlogListener;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt4j/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method
