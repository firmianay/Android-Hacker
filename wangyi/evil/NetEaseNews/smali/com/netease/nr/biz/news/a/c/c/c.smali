.class Lcom/netease/nr/biz/news/a/c/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/netease/nr/biz/news/a/c/c/e;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/nr/biz/news/a/c/c/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/a/c/c/b;ZLjava/util/Map;Lcom/netease/nr/biz/news/a/c/c/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/c/c;->e:Lcom/netease/nr/biz/news/a/c/c/b;

    iput-boolean p2, p0, Lcom/netease/nr/biz/news/a/c/c/c;->a:Z

    iput-object p3, p0, Lcom/netease/nr/biz/news/a/c/c/c;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/netease/nr/biz/news/a/c/c/c;->c:Lcom/netease/nr/biz/news/a/c/c/e;

    iput-object p5, p0, Lcom/netease/nr/biz/news/a/c/c/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/c/c/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/c;->e:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->a(Lcom/netease/nr/biz/news/a/c/c/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/c/c/c;->b:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/c/c/c;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/c;->b:Ljava/util/Map;

    const-string v2, "status"

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/c/c/c;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "0"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/c;->e:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->b(Lcom/netease/nr/biz/news/a/c/c/b;)Lcom/netease/util/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/c;->c:Lcom/netease/nr/biz/news/a/c/c/e;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700ca

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/c;->e:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->c(Lcom/netease/nr/biz/news/a/c/c/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/c;->e:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "1"

    goto :goto_1
.end method
