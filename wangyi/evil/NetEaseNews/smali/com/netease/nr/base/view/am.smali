.class Lcom/netease/nr/base/view/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/am;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/am;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0, p3}, Lcom/netease/nr/base/view/ListPopupWindow;->b(Lcom/netease/nr/base/view/ListPopupWindow;I)Z

    return-void
.end method
