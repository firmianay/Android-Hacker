.class Lcom/netease/nr/base/view/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic b:Lcom/netease/nr/base/view/PullListView;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/PullListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bc;->b:Lcom/netease/nr/base/view/PullListView;

    iput-object p2, p0, Lcom/netease/nr/base/view/bc;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/base/view/bc;->a:Landroid/widget/AdapterView$OnItemClickListener;

    add-int/lit8 v3, p3, -0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
