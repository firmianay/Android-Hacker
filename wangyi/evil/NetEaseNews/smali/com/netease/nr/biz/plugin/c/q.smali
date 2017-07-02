.class Lcom/netease/nr/biz/plugin/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/plugin/c/p;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/c/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/q;->b:Lcom/netease/nr/biz/plugin/c/p;

    iput-object p2, p0, Lcom/netease/nr/biz/plugin/c/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/q;->b:Lcom/netease/nr/biz/plugin/c/p;

    iget-object v0, v0, Lcom/netease/nr/biz/plugin/c/p;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->i(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/j;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
