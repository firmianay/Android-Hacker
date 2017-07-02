.class public abstract Lcom/netease/nr/biz/news/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
.implements Lcom/netease/nr/base/a/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/database/Cursor;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/a;->b:Landroid/database/Cursor;

    invoke-static {p1}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/database/Cursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/a/a;->c:Z

    invoke-static {p1}, Lcom/netease/nr/biz/news/column/g;->b(Landroid/database/Cursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/a/a;->d:Z

    return-void
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/a;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/a;->d:Z

    return v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/a;->b:Landroid/database/Cursor;

    return-object v0
.end method
