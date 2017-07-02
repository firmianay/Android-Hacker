.class Lcom/netease/nr/biz/plugin/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/b/c;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/b/i;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/b/i;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/b/c;->f(Lcom/netease/nr/biz/plugin/b/c;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/i;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/b/c;->e(Lcom/netease/nr/biz/plugin/b/c;)V

    return-void
.end method
