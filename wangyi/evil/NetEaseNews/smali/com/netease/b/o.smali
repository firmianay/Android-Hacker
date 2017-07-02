.class Lcom/netease/b/o;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/b/n;

.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/netease/b/n;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/b/o;->a:Lcom/netease/b/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/netease/b/o;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/b/o;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/b/n;Landroid/content/Context;Ljava/util/List;Lcom/netease/b/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/b/o;-><init>(Lcom/netease/b/n;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/b/o;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/b/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/b/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/netease/b/g;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UGSend:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/b/g;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/netease/b/o;->c:Landroid/content/Context;

    const-string v2, "http://mt.c.3g.163.com/log/dc/"

    invoke-static {v1, v2, v0}, Lcom/netease/b/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/b/o;->a:Lcom/netease/b/n;

    invoke-static {v1}, Lcom/netease/b/b;->c(Lcom/netease/b/a;)Z

    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ok\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    new-instance v0, Lcom/netease/b/e;

    iget-object v1, p0, Lcom/netease/b/o;->c:Landroid/content/Context;

    const-string v2, "muas_generalbody"

    iget-object v3, p0, Lcom/netease/b/o;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/b/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/netease/b/b;->a(Lcom/netease/b/a;)V

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_6

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method
