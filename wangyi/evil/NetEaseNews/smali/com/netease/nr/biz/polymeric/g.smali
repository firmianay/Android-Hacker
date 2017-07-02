.class Lcom/netease/nr/biz/polymeric/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/netease/nr/biz/polymeric/f;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/polymeric/f;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/g;->b:Lcom/netease/nr/biz/polymeric/f;

    iput-object p2, p0, Lcom/netease/nr/biz/polymeric/g;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/g;->b:Lcom/netease/nr/biz/polymeric/f;

    invoke-static {v1}, Lcom/netease/nr/biz/polymeric/f;->a(Lcom/netease/nr/biz/polymeric/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/g;->a:Ljava/util/Map;

    const-string v3, "docID"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/g;->a:Ljava/util/Map;

    const-string v4, "replyCount"

    invoke-static {v3, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/g;->b:Lcom/netease/nr/biz/polymeric/f;

    invoke-static {v1}, Lcom/netease/nr/biz/polymeric/f;->a(Lcom/netease/nr/biz/polymeric/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
