.class Lcom/netease/nr/base/view/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemLongClickListener;

.field final synthetic b:Lcom/netease/nr/base/view/PullListView;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/PullListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bd;->b:Lcom/netease/nr/base/view/PullListView;

    iput-object p2, p0, Lcom/netease/nr/base/view/bd;->a:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/base/view/bd;->a:Landroid/widget/AdapterView$OnItemLongClickListener;

    add-int/lit8 v3, p3, -0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method
