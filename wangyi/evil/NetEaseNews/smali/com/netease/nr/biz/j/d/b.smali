.class Lcom/netease/nr/biz/j/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/j/d/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/b;->b:Lcom/netease/nr/biz/j/d/a;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/b;->b:Lcom/netease/nr/biz/j/d/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/j/d/a;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/b;->b:Lcom/netease/nr/biz/j/d/a;

    invoke-virtual {v1}, Lcom/netease/nr/biz/j/d/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/b;->a:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/b;->b:Lcom/netease/nr/biz/j/d/a;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/j/d/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method