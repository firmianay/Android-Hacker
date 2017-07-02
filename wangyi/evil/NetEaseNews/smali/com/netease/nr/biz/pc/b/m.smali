.class Lcom/netease/nr/biz/pc/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/b/l;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/m;->a:Lcom/netease/nr/biz/pc/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/m;->a:Lcom/netease/nr/biz/pc/b/l;

    iget-object v0, v0, Lcom/netease/nr/biz/pc/b/l;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->b(Lcom/netease/nr/biz/pc/b/g;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/m;->a:Lcom/netease/nr/biz/pc/b/l;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/l;->a(Lcom/netease/nr/biz/pc/b/l;)Lcom/netease/nr/biz/pc/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
