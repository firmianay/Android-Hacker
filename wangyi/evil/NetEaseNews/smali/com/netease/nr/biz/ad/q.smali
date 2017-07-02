.class public Lcom/netease/nr/biz/ad/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ad/d;


# instance fields
.field private a:Lcom/netease/ad/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/netease/ad/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/ad/q;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/netease/nr/biz/ad/q;->a:Lcom/netease/ad/a;

    iput-object p2, p0, Lcom/netease/nr/biz/ad/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/ad/q;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/netease/ad/a;->a(Lcom/netease/ad/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/ad/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/q;->a:Lcom/netease/ad/a;

    invoke-virtual {v0, p1}, Lcom/netease/ad/a;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/netease/ad/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netease/ad/a;->a()Lcom/netease/ad/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/ad/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/r;

    invoke-interface {v0, p0}, Lcom/netease/nr/biz/ad/r;->a(Lcom/netease/nr/biz/ad/q;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/biz/ad/r;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/ad/q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/q;->b()Lcom/netease/ad/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Lcom/netease/nr/biz/ad/r;->a(Lcom/netease/nr/biz/ad/q;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/ad/q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()Lcom/netease/ad/e;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/q;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/netease/nr/biz/ad/r;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/ad/q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
