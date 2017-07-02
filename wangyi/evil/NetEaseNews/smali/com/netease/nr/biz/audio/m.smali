.class public Lcom/netease/nr/biz/audio/m;
.super Lcom/netease/nr/biz/news/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/nr/biz/news/a/h;)Lcom/netease/nr/biz/news/a/b;
    .locals 7

    new-instance v0, Lcom/netease/nr/biz/news/a/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/audio/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0300b1

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, Lcom/netease/nr/biz/audio/l;

    iget-object v4, v4, Lcom/netease/nr/biz/audio/l;->a:[Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/netease/nr/biz/audio/l;

    iget-object v5, v5, Lcom/netease/nr/biz/audio/l;->b:[I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/netease/nr/biz/news/a/b;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/a/b;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    return-object v0
.end method

.method protected l()Lcom/netease/nr/biz/news/a/h;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/audio/l;

    invoke-virtual {p0}, Lcom/netease/nr/biz/audio/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/audio/m;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/audio/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/audio/m;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
