.class Lcom/netease/nr/biz/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/nr/biz/e/c;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/e/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/e/e;->b:Lcom/netease/nr/biz/e/c;

    iput p2, p0, Lcom/netease/nr/biz/e/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/e/e;->b:Lcom/netease/nr/biz/e/c;

    iget v2, p0, Lcom/netease/nr/biz/e/e;->a:I

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/e/c;->a(I)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/e/e;->b:Lcom/netease/nr/biz/e/c;

    invoke-static {v1}, Lcom/netease/nr/biz/e/c;->a(Lcom/netease/nr/biz/e/c;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/e/e;->b:Lcom/netease/nr/biz/e/c;

    invoke-static {v1}, Lcom/netease/nr/biz/e/c;->a(Lcom/netease/nr/biz/e/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
