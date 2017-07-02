.class Lcom/netease/nr/base/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/DropdownSpinner;

.field final synthetic b:Lcom/netease/nr/base/view/p;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/p;Lcom/netease/nr/base/view/DropdownSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/q;->b:Lcom/netease/nr/base/view/p;

    iput-object p2, p0, Lcom/netease/nr/base/view/q;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/q;->b:Lcom/netease/nr/base/view/p;

    iget-object v0, v0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0, p3}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/q;->b:Lcom/netease/nr/base/view/p;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/p;->d()V

    return-void
.end method
