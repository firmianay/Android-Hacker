.class Lcom/netease/nr/biz/j/d/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/j/d/a/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/a/e;->b:Lcom/netease/nr/biz/j/d/a/d;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/a/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    const-string v1, "VoteListFragment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/e;->b:Lcom/netease/nr/biz/j/d/a/d;

    invoke-static {v1}, Lcom/netease/nr/biz/j/d/a/d;->a(Lcom/netease/nr/biz/j/d/a/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/e;->a:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/e;->b:Lcom/netease/nr/biz/j/d/a/d;

    invoke-static {v1}, Lcom/netease/nr/biz/j/d/a/d;->a(Lcom/netease/nr/biz/j/d/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
