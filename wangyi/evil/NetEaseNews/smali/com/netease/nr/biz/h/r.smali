.class Lcom/netease/nr/biz/h/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/nr/biz/h/q;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/q;Ljava/util/Map;ZILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/r;->e:Lcom/netease/nr/biz/h/q;

    iput-object p2, p0, Lcom/netease/nr/biz/h/r;->a:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/netease/nr/biz/h/r;->b:Z

    iput p4, p0, Lcom/netease/nr/biz/h/r;->c:I

    iput-object p5, p0, Lcom/netease/nr/biz/h/r;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/h/r;->e:Lcom/netease/nr/biz/h/q;

    invoke-static {v0}, Lcom/netease/nr/biz/h/q;->a(Lcom/netease/nr/biz/h/q;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/r;->a:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/r;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/r;->e:Lcom/netease/nr/biz/h/q;

    invoke-static {v0}, Lcom/netease/nr/biz/h/q;->b(Lcom/netease/nr/biz/h/q;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/netease/nr/biz/h/r;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "status"

    iget-boolean v1, p0, Lcom/netease/nr/biz/h/r;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "0"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/r;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/h/r;->e:Lcom/netease/nr/biz/h/q;

    invoke-static {v0}, Lcom/netease/nr/biz/h/q;->c(Lcom/netease/nr/biz/h/q;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/r;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/biz/h/r;->e:Lcom/netease/nr/biz/h/q;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/q;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "1"

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/h/r;->e:Lcom/netease/nr/biz/h/q;

    invoke-static {v0}, Lcom/netease/nr/biz/h/q;->c(Lcom/netease/nr/biz/h/q;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/r;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/h/r;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
