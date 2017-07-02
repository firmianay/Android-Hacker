.class public Lcom/netease/nr/biz/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/b/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/b/d;->a:Lcom/netease/nr/biz/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nr/biz/b/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/b/d;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/b/a;->b(Lcom/netease/nr/biz/b/a;)Lcom/netease/util/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/d;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/nr/base/b/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/b/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/util/cache/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/b/d;->a:Lcom/netease/nr/biz/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->notifyDataSetChanged()V

    return-void
.end method
