.class public Lcom/netease/nr/biz/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/b/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/b/c;->a:Lcom/netease/nr/biz/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nr/biz/b/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/b/c;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/b/a;->a(Lcom/netease/nr/biz/b/a;)Lcom/netease/nr/biz/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/b/c;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/b/a;->a(Lcom/netease/nr/biz/b/a;)Lcom/netease/nr/biz/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/b/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/b/c;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/b/a;->a(Lcom/netease/nr/biz/b/a;)Lcom/netease/nr/biz/b/b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/nr/biz/b/b;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/b/c;->a:Lcom/netease/nr/biz/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netease/nr/biz/b/c;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/b/a;->b(Lcom/netease/nr/biz/b/a;)Lcom/netease/util/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/util/b/a;->b(Ljava/lang/String;)V

    return-void
.end method
