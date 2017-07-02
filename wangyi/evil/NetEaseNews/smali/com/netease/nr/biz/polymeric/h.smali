.class Lcom/netease/nr/biz/polymeric/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nr/biz/polymeric/f;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/polymeric/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/h;->c:Lcom/netease/nr/biz/polymeric/f;

    iput-object p2, p0, Lcom/netease/nr/biz/polymeric/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/polymeric/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/h;->c:Lcom/netease/nr/biz/polymeric/f;

    invoke-static {v1}, Lcom/netease/nr/biz/polymeric/f;->a(Lcom/netease/nr/biz/polymeric/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/h;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/nr/biz/polymeric/h;->b:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/h;->c:Lcom/netease/nr/biz/polymeric/f;

    invoke-static {v1}, Lcom/netease/nr/biz/polymeric/f;->a(Lcom/netease/nr/biz/polymeric/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
