.class public Lcom/netease/util/fragment/ac;
.super Landroid/support/v4/content/CursorLoader;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/util/fragment/ac;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/util/fragment/ac;->b:Ljava/lang/String;

    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    iget v0, p0, Lcom/netease/util/fragment/ac;->a:I

    if-ltz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/netease/util/fragment/ac;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/ac;->a:I

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/netease/util/fragment/ac;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    iget v0, p0, Lcom/netease/util/fragment/ac;->a:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->onForceLoad()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/ac;->a:I

    invoke-virtual {p0}, Lcom/netease/util/fragment/ac;->cancelLoad()Z

    invoke-virtual {p0}, Lcom/netease/util/fragment/ac;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/ac;->deliverResult(Landroid/database/Cursor;)V

    goto :goto_0
.end method
