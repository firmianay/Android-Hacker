.class Lcom/netease/nr/biz/pc/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/b/s;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/t;->a:Lcom/netease/nr/biz/pc/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/t;->a:Lcom/netease/nr/biz/pc/b/s;

    iget-object v0, v0, Lcom/netease/nr/biz/pc/b/s;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->b(Lcom/netease/nr/biz/pc/b/g;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/t;->a:Lcom/netease/nr/biz/pc/b/s;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/s;->a(Lcom/netease/nr/biz/pc/b/s;)Lcom/netease/nr/biz/pc/b/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
